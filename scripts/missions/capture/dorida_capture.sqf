//File: Athira Capture (SQF)
//Author: Styx
//Description: SEts up the Athira Capture Mission
private ["_MarkPosX", "_MarkPosY", "_distX", "_objDist"];
global
_MarkPosX = 19404.744;
_MarkPosY = 13250.399;
_objDist = 180;
_trDist = _objDist + 50;

//Objective Marker
_marker = createMarker["Capture", [_MarkPosX,_MarkPosY]];
_marker setMarkerShape "icon";
_marker setMarkerType "hd_objective";
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Athira";
_marker setMarkerSize [1,1];

//Bounding Marker
_markerBound = createMarker["ObjBound", [_MarkPosX,_MarkPosY]];
_markerBound setMarkerShape "Ellipse";
_markerBound setMarkerBrush "FDIAGONAL";
_markerBound setMarkerColor "ColorRed";
_markerBound setMarkerSize [_objDist,_objDist];

//Presence Trigger
_objTr = createTrigger["EmptyDetector", [_MarkPosX,_MarkPosY]];
_objTr setTriggerArea[_trDist,_trDist,0,false];
_objTr setTriggerType "none";
_objTr setTriggerActivation ["EAST", "NOT PRESENT",true];
_objTr setTriggerStatements ["this","",""];

//wait before spawning enemy to prevent collision
sleep 3;
["Capture",2,_objDist,[true,false],[true,false,false],false,[15,10],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";

//Task Display
sleep 1;
["TaskAssigned",["","Capture Athira And Eliminate All Hostiles."]] call BIS_fnc_showNotification;
hint "";