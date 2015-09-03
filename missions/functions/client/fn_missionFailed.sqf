_strCity = _this select 0;
_missionID = _this select 1;

//0 = TimeLimit

switch (_missionID) do { 
	case 0 :
	{  
		["missionFailedTime",[_strCity]] call bis_fnc_showNotification;
	}; 
	
	default {  hint "ERROR"; };
};