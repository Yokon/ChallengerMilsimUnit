_cityName = _this select 0;
_MarkPosX = _this select 1;
_MarkPosY = _this select 2;
_objDist = _this select 3;
_missionType = _this select 4;

_trDist = _objDist + 50;

// Objective marker
_marker = createMarker["Capture", [_MarkPosX,_MarkPosY]];
_marker setMarkerShape "icon";
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Capture";
_marker setMarkerAlpha 0;
_marker setMarkerSize [1,1];

//Bounding _marker
_markerBound = createMarker["ObjBound", [_MarkPosX,_MarkPosY]];
_markerBound setMarkerShape "Ellipse";
_markerBound setMarkerBrush "FDIAGONAL";
_markerBound setMarkerColor "ColorRed";
_markerBound setMarkerAlpha 0;
_markerBound setMarkerSize [_objDist,_objDist];

//Spawn the troops!
["Capture",2,_objDist,[true,false],[true,false,false],false,[10,5],[3,0],[0.3,0.3,0.3,0.3,0.3,0.5,0.5,0.5,0.5,0.5],nil,nil,1] execVM "LV\militarize.sqf";
sleep 2;
["Capture",2,true,1,[10,5],_objDist,[0.3,0.3,0.3,0.3,0.3,0.5,0.5,0.5,0.5,0.5],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 2;

if (firstMission) then {
  callToStart = true;
  [{systemChat format["Stand By\nInitializing"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
  sleep 5;
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

[[_cityName],"MMC_fnc_startMission",true,false] call BIS_fnc_MP;
missionActive = true;

//Define the variables for the missions loop...
_unitCount = 1; //Keep this at 1, otherwise the while will breakout.
_timeLimit = 1443; //4 hours in seconds... (plus 3 seconds)

sleep 5;

_kilo = 1;
while {_kilo > 0} do {
	_unitCount = 0;{
		if(side _x == opfor && ([_MarkPosX,_MarkPosY] distance _x < _trDist)) then {
			_unitCount = _unitCount + 1;
			/*if (_unitCount <= 5 ) then {
			  	[] spawn core_fnc_setUnitMarker;
			};*/
		}
	} foreach allUnits;
	
	_timeLimit = _timeLimit - 3;

	hintSilent format ["_unitCount is %1", _unitCount];
	if ( _unitCount <= 0 ) then {
	  _kilo = 0;
	  missionEndID = 0;
	};
	if ( _timeLimit <= 0 ) then {
	  _kilo = 0;
	  missionEndID = 1;
	};
	countTroops = _unitCount;
	sleep 3;
};

deleteMarker "Capture";
deleteMarker "ObjBound";

{    
	if(side _x == opfor) then 
	{     
		_x setdamage 1.0;   
	}   
} foreach allUnits;

missionActive = false;

if ( missionEndID == 0 ) then 
{
	[[],"core_fnc_holdMissions",true,false] call BIS_fnc_MP;
	[[_cityName],"MMC_fnc_missionComplete",true,false] call BIS_fnc_MP;
}; 
if ( missionEndID == 1 ) then 
{
	[[],"core_fnc_holdMissions",true,false] call BIS_fnc_MP;
	[[_cityName,0],"MMC_fnc_missionFailed",true,false] call BIS_fnc_MP;
};