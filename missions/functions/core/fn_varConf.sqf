// 0 = location
// 1 = Mission Type (Later Expansion) {0 = capture}
_location = _this select 0;
_MType = _this select 1;

switch (_location) do 
{ 
	case "athira" : 
	{
		cityName = "Athira";
		MarkPosX = 14119.3;
		MarkPosY = 18771.4;
		objDist = 400;
		missionType = _MType;
	};

	case "agiosDionysios" : 
	{
		cityName = "Agios Dionysios";
		MarkPosX = 9323.11;
		MarkPosY = 15868.7;
		objDist = 450;
		missionType = _MType;
	};

	case "charkia" : 
	{
		cityName = "Charkia";
		MarkPosX = 18213;
		MarkPosY = 15307.9;
		objDist = 400;
		missionType = _MType;
	};

	case "dorida" : 
	{
		cityName = "Dorida";
		MarkPosX = 19404.744;
		MarkPosY = 13250.399;
		objDist = 180;
		missionType = _MType;
	};

	case "poliakko" : 
	{
		cityName = "Poliakko";
		MarkPosX = 10974;
		MarkPosY = 13387.9;
		objDist = 300;
		missionType = _MType;
	};

	case "pyrgos" : 
	{
		cityName = "Pyrgos";
		MarkPosX = 17100.3;
		MarkPosY = 12801.3;
		objDist = 750;
		missionType = _MType;
	};

	case "Molos" : 
	{
		cityName = "Molos";
		MarkPosX = 27020.8;
		MarkPosY = 23229.4;
		objDist = 200;
		missionType = _MType;
	};

	case "Kore" : 
	{
		cityName = "Kore";
		MarkPosX = 7149.2;
		MarkPosY = 16481.2;
		objDist = 190;
		missionType = _MType;
	};

	case "Syrta" : 
	{
		cityName = "Syrta";
		MarkPosX = 8639.84;
		MarkPosY = 18265.4;
		objDist = 190;
		missionType = _MType;
	};
	
	case "Galati" : 
	{
		cityName = "Galati";
		MarkPosX = 10325.2;
		MarkPosY = 19060;
		objDist = 120;
		missionType = _MType;
	};

	case "Oreokastro" : 
	{
		cityName = "Oreokastro";
		MarkPosX = 4569.57;
		MarkPosY = 21393.8;
		objDist = 150;
		missionType = _MType;
	};
	
	case "Ifestiona" : 
	{
		cityName = "Ifestiona";
		MarkPosX = 12827.3;
		MarkPosY = 19657;
		objDist = 150;
		missionType = _MType;
	};
	
	case "North Airfield" : 
	{
		cityName = "North Airfield";
		MarkPosX = 9161.9;
		MarkPosY = 21567.9;
		objDist = 170;
		missionType = _MType;
	};

	case "Panochori" : 
	{
		cityName = "Panochori";
		MarkPosX = 5089.88;
		MarkPosY = 11261.6;
		objDist = 200;
		missionType = _MType;
	};
	
	default
	{
		hint "Failed";
	};
};
sleep 3;
execVM "missions\functions\core\fn_missionCore.sqf";
//call core_fnc_missionCore;
sleep 3;