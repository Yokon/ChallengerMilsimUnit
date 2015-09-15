private ["_obj","_caller","_id","_i","_npc"];
_npc = _this select 0;
_caller = _this select 1;
_id 	= _this select 2;

[[_npc],"core_fnc_hostageFollowAction",true,true] call BIS_fnc_MP;
[_npc] join _caller;
_npc setUnitPos "MIDDLE";