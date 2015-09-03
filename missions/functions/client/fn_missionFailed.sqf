_strCity = _this select 0;
_causeID = _this select 1;

switch (_causeID) do { 
	case 0 : 
	{
		_cause = "Time Limit"
	}; 

	default 
	{
		exitWith { hint "ERROR" };
	}; 
};

["missionFailed",[_strCity,_cause]] call bis_fnc_showNotification;

if(isServer) then
{
	
};