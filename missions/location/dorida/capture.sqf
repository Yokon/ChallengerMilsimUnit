//File: Dorida Capture (SQF)
//Author: Styx
//Description: Sets up the Dorida Capture Mission

private ["_MarkPosX", "_MarkPosY", "_distX", "_objDist", "_cityName", "_count"];
_cityName = "Dorida";
_MarkPosX = 19404.744;
_MarkPosY = 13250.399;
_objDist = 180;
_trDist = _objDist + 50;

//Objective Marker
marker = createMarker["Capture", [_MarkPosX,_MarkPosY]];
marker setMarkerShape "icon";
marker setMarkerType "hd_objective";
marker setMarkerColor "ColorRed";
marker setMarkerText "";
marker setMarkerSize [1,1];

//Bounding Marker
markerBound = createMarker["ObjBound", [_MarkPosX,_MarkPosY]];
markerBound setMarkerShape "Ellipse";
markerBound setMarkerBrush "FDIAGONAL";
markerBound setMarkerColor "ColorRed";
markerBound setMarkerSize [_objDist,_objDist];

//wait before spawning enemy to prevent collision
sleep 3;
["Capture",2,_objDist,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
["Capture",2,true,1,[10,5],_objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 10;

//Presence Trigger
//objTr = createTrigger["EmptyDetector", [_MarkPosX,_MarkPosY]];
//objTr setTriggerArea[_trDist,_trDist,0,false];
//objTr setTriggerType "none";
//objTr setTriggerActivation ["EAST", "NOT PRESENT",true];
//objTr setTriggerStatements ["this","pause 5; [] execVM '['TaskAssigned',['',_cityNameStr]] call bis_fnc_showNotification; missions\missionGen.sqf';",""];
//sleep 2;

//Task Display
sleep 10;
_cityNameStr = format["Capture %1 And Eliminate All Hostiles.", _cityName];
["TaskAssigned",["",_cityNameStr]] call bis_fnc_showNotification;
hintSilent "";


_count = 1;
while {_count > 0} do {
	_count = 0;
	{
		if(side _x == opfor && ([_MarkPosX,_MarkPosY] distance _x < _trDist)) then {
			_count = _count + 1;
		}
	} foreach allUnits;
	hintSilent format ["_count is %1", _count];
	sleep 8;
};

//Mission Complete
deleteMarker "Capture";
deleteMarker "ObjBound";
_cityNameStr = format["%1 Captured.", _cityName];
["TaskSucceeded",["",_cityNameStr]] call BIS_fnc_showNotification;

hintSilent "Standby\n5 Minutes";
sleep 60;
hintSilent "Standby\n4 Minutes";
sleep 60;
hintSilent "Standby\n3 Minutes";
sleep 60;
hintSilent "Standby\n2 Minutes";
sleep 60;
hintSilent "Standby\n60 Seconds";
sleep 10;
hintSilent "Standby\n50 Seconds";
sleep 10;
hintSilent "Standby\n40 Seconds";
sleep 10;
hintSilent "Standby\n30 Seconds";
sleep 10;
hintSilent "Standby\n20 Seconds";
sleep 10;
hintSilent "Standby\n10 Seconds";
sleep 5;
hintSilent "Standby\n5 Seconds";
sleep 5;
hintSilent "Initializing Next Mission...";
[] execVM "missions\missionGen.sqf"; //load Map Generator