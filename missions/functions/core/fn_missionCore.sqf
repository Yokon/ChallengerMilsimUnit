//if (!isServer) exitWith{};
hint "Execute Core!";

_trDist = objDist + 50;
//Objective Marker
marker = createMarker["Capture", [MarkPosX,MarkPosY]];
marker setMarkerShape "icon";
marker setMarkerType "hd_objective";
marker setMarkerColor "ColorRed";
marker setMarkerText "Capture";
marker setMarkerSize [1,1];

//Bounding Marker
markerBound = createMarker["ObjBound", [MarkPosX,MarkPosY]];
markerBound setMarkerShape "Ellipse";
markerBound setMarkerBrush "FDIAGONAL";
markerBound setMarkerColor "ColorRed";
markerBound setMarkerSize [objDist,objDist];

//Spawn the troops!
["Capture",2,objDist,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
sleep 2;
["Capture",2,true,1,[10,5],objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 2;


while {!callToStart} do {
  if (firstMission) then {
    callToStart = true;
  };
  sleep 3;
};
callToStart = false; //reset the switch...
firstMission = false;

[{[cityName] call MMC_fnc_startMission;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP; //Client Dialogs
missionActive = true;

//Define the variables for the missions loop...
unitCount = 1; //Keep this at one, otherwise the while will breakout.
timeLimit = 1443; //4 hours in seconds... (plus 3 seconds)

sleep 5;
hint "Starting Loop";


_kilo = 1;
while {_kilo > 0} do {
	unitCount = 0;{
		if(side _x == opfor && ([MarkPosX,MarkPosY] distance _x < _trDist)) then {
			unitCount = unitCount + 1;
		}
	} foreach allUnits;
	
	hintSilent format ["unitCount is %1", unitCount];
	sleep 8;
	if (unitCount == 0) then {
	  _kilo = 0;
	  _missionEndID = "success";
	  hint "Loop End";
	};
	if (timeLimit == 0) then {
	  _kilo = 0;
	  _missionEndID = "timeLimit";
	};
};

hint _missionEndID;
sleep 5;

deleteMarker "Capture";
deleteMarker "ObjBound";

switch (missionEndID) do 
{ 
	case "success" : 
	{
		[{[cityName] call MMC_fnc_missionComplete;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	}; 
	case "timeLimit" : 
	{
		[{[0,cityName] call MMC_fnc_missionFailed;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	}; 
	default {exitWith{hint "ERROR"}}; 
};