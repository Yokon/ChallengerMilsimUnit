_veh = vehicle player getVariable "CUP_attached" select 1;
_EHid = vehicle player getVariable "CUP_attached" select 2;

detach _veh;
if (local _veh) then
{
  _veh setVelocity velocity vehicle player;
} else
{
  _velocity = velocity vehicle player;
  [[_veh,_velocity],"CUP_setVelocity", _veh] spawn BIS_fnc_MP;
};

vehicle player removeMPEventHandler ["MPKilled", _EHid];

vehicle player setVariable ["CUP_attached", [0, objNull, nil], true];