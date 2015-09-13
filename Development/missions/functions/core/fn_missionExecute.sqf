private ["_selectLocation", "_selectType"];

sleep 5;
_selectLocation = missionLocations select floor random count missionLocations;
_selectType = missionTypes select floor random count missionTypes;

sleep 3;
[_selectLocation, _selectType] spawn core_fnc_varConf;