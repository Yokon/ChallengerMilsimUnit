waitUntil {player == player}; //JIP compatibility and general safety

CUP_vehBlacklist = _this select 0;
CUP_heloBlacklist = _this select 1;

CUP_checkLift = 
{
  _return = false;
  _velocity = velocity vehicle player;
  _speed = (sqrt ((_velocity select 0)^2 + (_velocity select 1)^2))*3.6;
  if ((vehicle player isKindOf "Helicopter") && (count (nearestObjects [vehicle player, ["Car", "Tank", "Ship"], 20]) > 0) && (_speed < 10) && (driver vehicle player == player) && !(vehicle player in CUP_heloBlacklist) && !(typeOf vehicle player in CUP_heloBlacklist)) then {_return = true};
  if !(isNil {vehicle player getVariable "CUP_attached"}) then
  {
    if (vehicle player getVariable "CUP_attached" select 0 == 1) then
    {
      _return = false;
    };
  };
  _return
};

CUP_checkDrop = 
{
  _return = false;
  _attached = vehicle player getVariable "CUP_attached";
  if ((vehicle player isKindOf "Helicopter") && (driver vehicle player == player) && (_attached select 0 == 1)) then {_return = true;};
  _return
};

CUP_setVelocity = 
{
  (_this select 0) setVelocity (_this select 1);
};

CUP_killedEH = 
{
  _helo = _this select 0;
  _veh = _helo getVariable "CUP_attached" select 1;
  _EHid = _helo getVariable "CUP_attached" select 2;

  detach _veh;
  if (local _veh) then
  {
    _veh setVelocity velocity _helo;
  } else
  {
    _velocity = velocity _helo;
    [[_veh,_velocity],"CUP_setVelocity", _veh] spawn BIS_fnc_MP;
  };

  _helo removeMPEventHandler ["MPKilled", _EHid];

  _helo setVariable ["CUP_attached", [0, objNull, nil], true];
};

player addAction ["<t color='#C9C900'>Lift vehicle</t>", "scripts\lift.sqf", nil, 10, true, true, "", "call CUP_checkLift"];
player addAction ["<t color='#C9C900'>Drop vehicle</t>", "scripts\drop.sqf", nil, 10, true, true, "", "call CUP_checkDrop"];

player addEventHandler ["Respawn", {player addAction ["<t color='#C9C900'>Lift vehicle</t>", "scripts\lift.sqf", nil, 10, true, true, "", "call CUP_checkLift"]; player addAction ["<t color='#C9C900'>Drop vehicle</t>", "scripts\drop.sqf", nil, 10, true, true, "", "call CUP_checkDrop"];}];
