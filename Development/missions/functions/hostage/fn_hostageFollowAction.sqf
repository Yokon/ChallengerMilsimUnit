_npc = _this select 0;

removeAllActions _npc;
_npc addaction ["<t color=""#FFFF00"">" + "Leave", core_fnc_leaveSquad];