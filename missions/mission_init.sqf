//File: Missions Module Initialization
//Author: Styx
//Description: Initializer for the missions module
if (!isServer) exitWith {};
hint "Initializing Mission Data\nStandby...";
[] execVM "missions\cfgmissions.sqf"; //load configuration
sleep 10;
hint "Initialization Complete!";
[] execVM "missions\missionGen.sqf"; //load Map Generator