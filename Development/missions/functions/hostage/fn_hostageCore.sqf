//["Hostage", 1, false, 2, [2,2], 150, [0.7,0.6,0.8,0.35,0.5,1,1,0.6,1,1],nil,"null = [this] spawn core_fnc_initHostage;",6] execVM "LV\fillHouse.sqf";
private ["_cityName", "_MarkPosX", "_MarkPosY", "_objDist", "_missionType", "_milAmount", "_timeLimit", "_safeZone",
		"_safepow", "_rescueMarker", "_trDist", "_fillHouse", "_vehAmount", "_vehSpawn", "_kilo", "_marker", "_markerBound"];
///////////////////////////////
_cityName	 = _this select 0;
_MarkPosX 	 = _this select 1;
_MarkPosY 	 = _this select 2;
_objDist	 = _this select 3;
_missionType = _this select 4;
_milAmount   = _this select 5;
_fillHouse   = _this select 6;
_vehAmount   = _this select 7;
_vehSpawn    = _this select 8;
///////////////////////////////
_safeZone 	 = [15285.2,17470.3];
_trDist   	 = _objDist + 50;
///////////////////////////////
// Objective marker
_marker = createMarker["Hostage", [_MarkPosX,_MarkPosY]];
_marker setMarkerShape "icon";
_marker setMarkerType "mil_warning";
_marker setMarkerColor "ColorYellow";
_marker setMarkerText "Capture";
_marker setMarkerAlpha 0;
_marker setMarkerSize [1,1];


//Bounding _marker
_markerBound = createMarker["ObjBound", [_MarkPosX,_MarkPosY]];
_markerBound   setMarkerShape "Ellipse";
_markerBound   setMarkerBrush "FDIAGONAL";
_markerBound   setMarkerColor "ColorYellow";
_markerBound   setMarkerAlpha 0;
_markerBound   setMarkerSize [_objDist,_objDist];

//Marker to see if they're Safe
_rescueMarker = createMarker["recueMarker", _safeZone];
_rescueMarker setMarkerShape "icon";
_rescueMarker setMarkerType "mil_warning";
_rescueMarker setMarkerColor "ColorYellow";
_rescueMarker setMarkerAlpha 1;
_rescueMarker setMarkerSize [1,1];

//Spawn the troops!
//["Hostage",2,_objDist,[true,false],_vehSpawn,false,_milAmount,_vehAmount,aiSkillSet,nil,nil,1] execVM "LV\militarize.sqf";
//sleep 10;
//["Hostage",2,true,1,_fillHouse,_objDist,aiSkillSet,nil,nil,2] execVM "LV\fillHouse.sqf";
//sleep 2;
["Hostage", 1, false, 2, [1,0], 150, [0.7,0.6,0.8,0.35,0.5,1,1,0.6,1,1],nil,"null = [this] spawn core_fnc_initHostage;",6] execVM "LV\fillHouse.sqf";
sleep 2;

if (firstMission) then {
  callToStart = true;
  [{systemChat format["Stand By Initializing First Mission..."];},"BIS_fnc_spawn",true,false] call BIS_fnc_MP;
  sleep 10;
};

while {!callToStart} do {
  sleep 5;
};
//reset the switch...
callToStart = false;
firstMission = false;

//Make Markers Visible. Start the mission...
_marker setMarkerAlpha 1;
_markerBound setMarkerAlpha 1;

[[_cityName],"MMC_fnc_missionHostageStart",true,false] call BIS_fnc_MP;
missionActive = true;

//Define the variables for the missions loop...
_timeLimit = 10800; //3 hours in seconds...
trackUnitMarker = false;
countpow = 0;

//Start the cycle...
_kilo = 1;
while {_kilo > 0} do {
	unitCount = 0;
	countpow  = 0;
	safepow = 0;
	{
		if(side _x == opfor && ([_MarkPosX,_MarkPosY] distance _x < _trDist)) then {
			unitCount = unitCount + 1;
			getUnitPos = position _x;
			if (trackUnitMarker) then {
			  [unitCount, getUnitPos] call core_fnc_setUnitMarker;
			};
		};
		if(captive _x) then {
			countpow = countpow + 1;
		}
	} foreach allUnits;
	{
		if(captive _x && (_safeZone distance _x < 40)) then {
			safepow = safepow + 1;
		}
	} foreach allUnits;
	if (safepow == countpow) then {
		_kilo = 0;
		missionEndID = 0;
	};
	if (countpow <= 0) then {
		_kilo = 0;
		missionEndID = 1;
	};
 	if( unitCount <= 5 ) then {
		trackUnitMarker = true;
	} else {
		trackUnitMarker = false;
		_resetMarkers = 100;
		[_resetMarkers, getUnitPos] call core_fnc_setUnitMarker;
	};
	_timeLimit = _timeLimit - 3;
	if ( _timeLimit <= 0 ) then {
	  _kilo = 0;
	  missionEndID = 1;
	};
	[[unitCount],"MMC_fnc_shareUnitCount",true,false] call BIS_fnc_MP;
	sleep 3;
};

deleteMarker "Hostage";
deleteMarker "ObjBound";
deleteMarker "unit1";
deleteMarker "unit2";
deleteMarker "unit3";
deleteMarker "unit4";
deleteMarker "unit5";

{    
	if(side _x == opfor) then 
	{     
		_x setdamage 1.0;   
	};
	if(captive _x) then {
			deleteVehicle _x;
	}
} foreach allUnits;
missionActive = false;

if ( missionEndID == 0 ) then 
{
	[[],"core_fnc_holdMissions",true,false] call BIS_fnc_MP;
	[[_cityName],"MMC_fnc_missionHostageComplete",true,false] call BIS_fnc_MP;
}; 
if ( missionEndID == 1 ) then 
{
	[[],"core_fnc_holdMissions",true,false] call BIS_fnc_MP;
	[[_cityName,0],"MMC_fnc_missionHostageFailed",true,false] call BIS_fnc_MP;
};