private ["_obj","_caller","_id"];
_npc 	= _this select 0;
_caller = _this select 1;
_id 	= _this select 2;


removeAllActions _npc;
_npc addaction ["<t color=""#FFFF00"">" + "Follow", core_fnc_joinSquad];
_npc setUnitPos "MIDDLE";


[_npc] join grpNull;