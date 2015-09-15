private ["_unitCount"];

if !(isServer) exitWith {};
if (_this select 0 > 5) exitWith{};

_unitCount = _this select 0;

if (_unitCount == 4) then {
	deleteMarker "unit5";
};
if (_unitCount == 3) then {
	deleteMarker "unit4";
};
if (_unitCount == 2) then {
	deleteMarker "unit3";
};
if (_unitCount == 1) then {
	deleteMarker "unit2";
};