_trDist = objDist + 50;
//Objective Marker
marker = createMarker["Capture", [MarkPosX,MarkPosY]];
marker setMarkerShape "icon";
marker setMarkerType "hd_objective";
marker setMarkerColor "ColorRed";
marker setMarkerText "Capture";
marker setMarkerAlpha 0;
marker setMarkerSize [1,1];

//Bounding Marker
markerBound = createMarker["ObjBound", [MarkPosX,MarkPosY]];
markerBound setMarkerShape "Ellipse";
markerBound setMarkerBrush "FDIAGONAL";
markerBound setMarkerColor "ColorRed";
markerBound setMarkerAlpha 0;
markerBound setMarkerSize [objDist,objDist];

//Spawn the troops!
["Capture",2,objDist,[true,false],[true,false,false],false,[10,5],[3,0],[0.3,0.3,0.3,0.3,0.3,0.5,0.5,0.5,0.5,0.5],nil,nil,1] execVM "LV\militarize.sqf";
sleep 2;
["Capture",2,true,1,[10,5],objDist,[0.3,0.3,0.3,0.3,0.3,0.5,0.5,0.5,0.5,0.5],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 2;

if (firstMission) then {
  callToStart = true;
  [{hintSilent "Stand By\nInitializing";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
  sleep 30;
};

while {!callToStart} do {
  sleep 5;
};

callToStart = false; //reset the switch...
firstMission = false;
marker setMarkerAlpha 1;
markerBound setMarkerAlpha 1;

//[{[cityName] call MMC_fnc_startMission;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP; //Client Dialogs
[[[cityName],"missions\functions\client\fn_startMission.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
missionActive = true;

//Define the variables for the missions loop...
unitCount = 1; //Keep this at one, otherwise the while will breakout.
timeLimit = 1443; //4 hours in seconds... (plus 3 seconds)

sleep 5;

_kilo = 1;
while {_kilo > 0} do {
	unitCount = 0;{
		if(side _x == opfor && ([MarkPosX,MarkPosY] distance _x < _trDist)) then {
			unitCount = unitCount + 1;
		}
	} foreach allUnits;
	
	timeLimit = timeLimit - 3;

	//hintSilent format ["unitCount is %1", unitCount];
	sleep 3;
	if (unitCount <= 0) then {
	  _kilo = 0;
	  missionEndID = 0;
	};
	if (timeLimit <= 0) then {
	  _kilo = 0;
	  missionEndID = 1;
	};
};


deleteMarker "Capture";
deleteMarker "ObjBound";

{    
	if(side _x == opfor && ([MarkPosX,MarkPosY] distance _x < objDist)) then 
	{     
		_x setdamage 1.0;   
	}   
} foreach allUnits;

if (missionEndID == 0) then 
{
	[[[],"missions\functions\core\fn_holdMissions.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
	[[[cityName],"missions\functions\client\fn_missionComplete.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
}; 
if (missionEndID == 1) then 
{
	[[[],"missions\functions\core\fn_holdMissions.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
	[[[cityName,0],"missions\functions\client\fn_missionFailed.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
};