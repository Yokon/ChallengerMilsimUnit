// 0 = location
// 1 = Mission Type (Later Expansion) {0 = capture}
private ["_cityName", "_MarkPosX", "_MarkPosY", "_objDist", "_milAmount", "_fillHouse", "_vehAmount", "_vehSpawn", "_missionType", "_location", "_MType"];

_location = _this select 0;
_MType = _this select 1;

switch (_location) do 
{ 
	case "athira" : 
	{
		_cityName = "Athira";
		_MarkPosX = 14119.3;
		_MarkPosY = 18771.4;
		_objDist = 400;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "agiosDionysios" : 
	{
		_cityName = "Agios Dionysios";
		_MarkPosX = 9323.11;
		_MarkPosY = 15868.7;
		_objDist = 425;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "charkia" : 
	{
		_cityName = "Charkia";
		_MarkPosX = 18213;
		_MarkPosY = 15307.9;
		_objDist = 400;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "dorida" : 
	{
		_cityName = "Dorida";
		_MarkPosX = 19404.744;
		_MarkPosY = 13250.399;
		_objDist = 180;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "poliakko" : 
	{
		_cityName = "Poliakko";
		_MarkPosX = 10974;
		_MarkPosY = 13387.9;
		_objDist = 300;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "pyrgos" : 
	{
		_cityName = "Pyrgos";
		_MarkPosX = 17100.3;
		_MarkPosY = 12801.3;
		_objDist = 725;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "Molos" : 
	{
		_cityName = "Molos";
		_MarkPosX = 27020.8;
		_MarkPosY = 23229.4;
		_objDist = 200;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "Kore" : 
	{
		_cityName = "Kore";
		_MarkPosX = 7149.2;
		_MarkPosY = 16481.2;
		_objDist = 190;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "Syrta" : 
	{
		_cityName = "Syrta";
		_MarkPosX = 8639.84;
		_MarkPosY = 18265.4;
		_objDist = 190;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};
	
	case "Galati" : 
	{
		_cityName = "Galati";
		_MarkPosX = 10325.2;
		_MarkPosY = 19060;
		_objDist = 120;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "Oreokastro" : 
	{
		_cityName = "Oreokastro";
		_MarkPosX = 4569.57;
		_MarkPosY = 21393.8;
		_objDist = 125;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};
	
	case "Ifestiona" : 
	{
		_cityName = "Ifestiona";
		_MarkPosX = 12827.3;
		_MarkPosY = 19657;
		_objDist = 125;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};
	
	case "North Airfield" : 
	{
		_cityName = "North Airfield";
		_MarkPosX = 9161.9;
		_MarkPosY = 21567.9;
		_objDist = 170;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};

	case "Panochori" : 
	{
		_cityName = "Panochori";
		_MarkPosX = 5089.88;
		_MarkPosY = 11261.6;
		_objDist = 200;
		_milAmount = [20,10];
		_fillHouse = [5,5];
		_vehAmount = [2,3];
		_vehSpawn = [true,false,false];
		_missionType = _MType;
	};
	
	default
	{
		hint "Failed";
	};
};


sleep 3;

if(_missionType == "capture") then {
	[_cityName, _MarkPosX, _MarkPosY, _objDist, _missionType, _milAmount, _fillHouse, _vehAmount, _vehSpawn] spawn core_fnc_missionCore;
};
if (_missionType == "hostage") then {
	[_cityName, _MarkPosX, _MarkPosY, _objDist, _missionType, _milAmount, _fillHouse, _vehAmount, _vehSpawn] spawn core_fnc_hostageCore;
};
//[_cityName, _MarkPosX, _MarkPosY, _objDist, _missionType, _milAmount, _fillHouse, _vehAmount, _vehSpawn] spawn core_fnc_missionCore;