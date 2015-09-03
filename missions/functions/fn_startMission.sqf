_strCity = _this select 0;
["newMissionCapture",[_strCity]] call bis_fnc_showNotification;


if(isServer) then
{
	_i = 300;
	while {_i != 0} do 
	{
  		_i = _i - 1;
  		sleep 1;
  	};
  	callToStart = true;
};