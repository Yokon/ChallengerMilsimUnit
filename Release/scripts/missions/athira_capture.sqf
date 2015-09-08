//File: Athira Capture (SQF)
//Author: Styx
//Description: Sets up the Athira Capture Mission

private ["_MarkPosX", "_MarkPosY", "_distX", "_objDist", "_cityName", "_countMen", "_setCountMen"];
_cityName = "Athira";
_MarkPosX = 14119.3;
_MarkPosY = 18771.4;
_objDist = 400;
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

//Presence Trigger
objTr = createTrigger["EmptyDetector", [_MarkPosX,_MarkPosY]];
objTr setTriggerArea[_trDist,_trDist,0,false];
objTr setTriggerType "none";
objTr setTriggerActivation ["EAST", "NOT PRESENT",true];
objTr setTriggerStatements ["this","",""];

//wait before spawning enemy to prevent collision
sleep 3;
["Capture",2,_objDist,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
["Capture",2,true,1,[10,5],_objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";

//Task Display
sleep 1;
["TaskAssigned",["",format["Capture %1 And Eliminate All Hostiles.", _cityName]] call BIS_fnc_showNotification;
hint "";

