/*
	Author: Styx

	Description:
	Initializes the mission module.
	Should only run once!
*/

if !(isServer) exitWith {};

countTroops = 0;

[] execVM "missions\cfgmissions.sqf";
sleep 3;
aiSkillSet = [aiAccuracy,aiAimShake,aiAimSpeed,aiSpotDistance,aiSpotTime,aiCourage,aiCommanding,aiGeneral,aiEndurance,aiReloadSpeed];
firstMission = true;
callToStart = false;

[] spawn core_fnc_missionExecute;