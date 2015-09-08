/*
	Author: Styx

	Description:
	Initializes the mission module.
	Should only run once!
*/

if !(isServer) exitWith {};

countTroops = 0;

[] execVM "missions\cfgmissions.sqf";
sleep 2;

if (allowMarkers) then {
	[] call core_fnc_unitTracker;
};


sleep 1;


[] call core_fnc_unitTracker;

sleep 3;
aiSkillSet = [aiAccuracy,aiAimShake,aiAimSpeed,aiSpotDistance,aiSpotTime,aiCourage,aiCommanding,aiGeneral,aiEndurance,aiReloadSpeed];
firstMission = true;
callToStart = false;

markEnemies = MarkLastEnemies;
noOfEnemies = NumberOfEnemies;

[] spawn core_fnc_missionExecute;