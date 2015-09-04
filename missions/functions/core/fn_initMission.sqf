/*
	Author: Styx

	Description:
	Initializes the mission module.
	Should only run once!
*/

if !(isServer) exitWith {};

countTroops = 0;
publicVariable "countTroops";

[] execVM "missions\cfgmissions.sqf";
[] spawn core_fnc_missionExecute;