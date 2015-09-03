[] execVM "zlt_fastrope.sqf";
[["blacklisted ground/sea vehicles"],["blacklisted helicopters"]] execVM "scripts\lift_init.sqf";

G_isDedicated = false;
G_isServer = false;
G_isClient = false;
G_isJIP = false;
if (isDedicated) then {
	G_isDedicated = true;
	G_isServer = true;
}
else
{
	if (isServer) then {G_isServer = true};
	G_isClient = true;
	if (isNull player) then {G_isJIP = true};
	waitUntil {!isNull player};
};

[] execVM "G_Revive_init.sqf";

if(isServer) then
{
	[]execVM "missions\cfgMissions.sqf";
	[]execVM "missions\functions\core\fn_missionExecute.sqf";
};
