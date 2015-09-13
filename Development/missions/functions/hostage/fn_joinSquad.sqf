private ["_obj","_caller","_id","_i","_npc"];
_npc = _this select 0;
_caller = _this select 1;
_id 	= _this select 2;

removeAllActions _npc;
_npc addaction ["<t color=""#FFFF00"">" + "Stay", core_fnc_leaveSquad];
[_npc] join _caller;
_npc setUnitPos "MIDDLE";

/*
if (captive _npc) then {
	_npc setCaptive false;
};

_i = 1;
while {_i > 0} do {
  _aiPos = getPos _npc;
  
	if(_aiPos distance2D player > 400) then {
		[_npc] join grpNull;
		removeAllActions _npc;
		_npc addaction ["<t color=""#FFFF00"">" + "Follow", core_fnc_joinSquad];
		_npc setUnitPos "DOWN";
		_i = 1;
		hint "Exit";
	};
	if (group _npc == "empty") then {
		hint "Exit";
		removeAllActions _npc;
		_npc addaction ["<t color=""#FFFF00"">" + "Follow", core_fnc_joinSquad];
		_i = 1;
	};
};*/