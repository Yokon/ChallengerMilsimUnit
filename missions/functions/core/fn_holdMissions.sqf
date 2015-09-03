if (isServer) then {
  []execVM "missions\functions\core\fn_missionExecute.sqf";
};

hintSilent "Standby\n5 Minutes";
sleep 60;
hintSilent "Standby\n4 Minutes";
sleep 60;
hintSilent "Standby\n3 Minutes";
sleep 60;
hintSilent "Standby\n2 Minutes";
sleep 60;
hintSilent "Standby\n1 Minute";
sleep 30;
hintSilent "Standby\n30 Seconds";
sleep 20;
hintSilent "Standby\n10 Seconds";
sleep 10;


if (isServer) then {
  callToStart = true;
};