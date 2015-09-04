if (isServer) then {
  [] spawn core_fnc_missionExecute;
};

systemChat format["Standby 5 Minutes"];
sleep 60;
systemChat format["Standby 4 Minutes"];
sleep 60;
systemChat format["Standby 3 Minutes"];
sleep 60;
systemChat format["Standby 2 Minutes"];
sleep 60;
systemChat format["Standby 1 Minute"];
sleep 30;
systemChat format["Standby 30 Seconds"];
sleep 20;
systemChat format["Standby 10 Seconds"];
sleep 10;


if (isServer) then {
  callToStart = true;
};