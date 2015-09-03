//File: Missions Module Generator
//Author: Styx
//Description: Generator for the missions module
if(!isServer) exitWith {};
	
//Reset the markers and Tasks
deleteMarker "ObjBound";
deleteMarker "Capture";
deleteVehicle objTr;

_randType = missionTypes select floor random count missionTypes;
_randLoc = missionLocations select floor random count missionLocations;

_randCombine = format["missions\location\%1\%2.sqf",_randLoc,_randType];
//hint _randLoc;

[] execVM _randCombine;
