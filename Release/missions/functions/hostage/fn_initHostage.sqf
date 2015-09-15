private["_useBandana","_bandana","_selectBandana"];

_npc = _this select 0;

_npc setName "POW";

removeAllWeapons _npc;
removeAllItems _npc;
removeAllAssignedItems _npc;
removeUniform _npc;
removeVest _npc;
removeBackpack _npc;
removeHeadgear _npc;
removeGoggles _npc;
_npc forceAddUniform "rhs_uniform_cu_ucp_82nd";
_npc setCaptive true;
_npc setSkill ["spotDistance", 0.01];
_npc addaction ["<t color=""#FFFF00"">" + "Follow", core_fnc_joinSquad];
_npc setUnitPos "MIDDLE";
_aiPos = getPos _npc;
_name = format["%1", _npc];