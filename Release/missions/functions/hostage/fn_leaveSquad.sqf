private ["_obj","_caller","_id"];
_npc 	= _this select 0;
_caller = _this select 1;
_id 	= _this select 2;

[[_npc],"core_fnc_hostageStayAction",true,true] call BIS_fnc_MP;
removeAllActions _npc;
_npc setUnitPos "MIDDLE";


[_npc] join grpNull;