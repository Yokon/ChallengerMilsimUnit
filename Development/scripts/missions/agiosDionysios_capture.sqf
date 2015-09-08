//File: Agios Dionysios Capture (SQF)
//Author: Styx
//Description: Sets up the Agios Dionysios Capture Mission

private ["_MarkPosX", "_MarkPosY","_MarkPosXOne", "_MarkPosYOne","_MarkPosXTwo", "_MarkPosYTwo","_MarkPosXThree", "_MarkPosYThree","_MarkPosXFour", "_MarkPosYFour", 
"_objDistOne", "_objDistTwo", "_objDistThree", "_objDistFour", "_distX", "_objDist", "_cityName"];
_cityName = "Athira";
_MarkPosX = 9353.0117;
_MarkPosY = 15903.711;
_objDist = 400;
_trDist = _objDist + 50;

//Extra's
_markerPosXOne = 9487.0957;
_markerPosYOne = 15924.43;
_markerPosXTwo = 9164.7715;
_markerPosYTwo = 15807.397;
_markerPosXThree = 9256.9268;
_markerPosYThree = 15992.402;
_markerPosXFour = 9604.4346;
_markerPosYFour = 15992.402;
_objDistOne = 180;
_objDistTwo = 180;
_objDistThree = 75;
_objDistFour = 75;

//Objective Marker
marker = createMarker["Capture", [_MarkPosX,_MarkPosY]];
marker setMarkerShape "icon";
marker setMarkerType "hd_objective";
marker setMarkerColor "ColorRed";
marker setMarkerText "";
marker setMarkerSize [1,1];

//Objective Spawn Markers
//one
markerOne = createMarker["SpawnOne", [_markerPosXTwo,_markerPosYTwo]];
markerOne setMarkerShape "icon";
markerOne setMarkerType "hd_objective";
markerOne setMarkerColor "ColorRed";
markerOne setMarkerText "";
markerOne setMarkerSize [1,1];
markerOne setMarkerAlpha 0;

//Two
markerTwo = createMarker["SpawnTwo", [_markerPosXThree,_markerPosYThree]];
markerTwo setMarkerShape "icon";
markerTwo setMarkerType "hd_objective";
markerTwo setMarkerColor "ColorRed";
markerTwo setMarkerText "";
markerTwo setMarkerSize [1,1];
markerTwo setMarkerAlpha 0;

//Three
markerThree = createMarker["SpawnThree", [_markerPosXFour,_markerPosYFour]];
markerThree setMarkerShape "icon";
markerThree setMarkerType "hd_objective";
markerThree setMarkerColor "ColorRed";
markerThree setMarkerText "";
markerThree setMarkerSize [1,1];
markerThree setMarkerAlpha 0;

//Four
markerFour = createMarker["SpawnFour", [_MarkPosX,_MarkPosY]];
markerFour setMarkerShape "icon";
markerFour setMarkerType "hd_objective";
markerFour setMarkerColor "ColorRed";
markerFour setMarkerText "";
markerFour setMarkerSize [1,1];
markerFour setMarkerAlpha 0;

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
["SpawnOne",2,_objDistOne,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
["SpawnOne",2,true,1,[10,5],_objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 10;
["SpawnTwo",2,_objDistTwo,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
["SpawnTwo",2,true,1,[10,5],_objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 10;
["SpawnThree",2,_objDistOne,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
["SpawnThree",2,true,1,[5,2],_objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";
sleep 10;
["SpawnFour",2,_objDistTwo,[true,false],[true,false,false],false,[10,5],[3,0],[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,1] execVM "LV\militarize.sqf";
["SpawnFour",2,true,1,[5,2],_objDist,[0.8,0.8,0.7,0.7,0.6,1,1,1,1,0.9],nil,nil,2] execVM "LV\fillHouse.sqf";
//Task Display
sleep 1;
["TaskAssigned",["",format["Capture %1 And Eliminate All Hostiles.", _cityName]] call BIS_fnc_showNotification;
hint "";
sleep 30;
deleteMarker "Capture";