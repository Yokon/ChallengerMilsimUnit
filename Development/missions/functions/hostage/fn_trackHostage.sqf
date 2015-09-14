if !(trackPow) exitWith {};
if !(isServer) exitWith {};
if (_this select 0 == 0) exitWith {};

private ["_unitName", "_unitPos"];
_unitName = _this select 0;
_unitPos = _this select 1;

switch (_unitName) do { 
	case 1 : {
		deleteMarker "pow1";

		_marker1 = createMarker["pow1", _unitPos];
		_marker1 setMarkerShape "icon";  
		_marker1 setMarkerType "mil_dot"; 
		_marker1 setMarkerColor "ColorGreen";  
		_marker1 setMarkerText "";  
		_marker1 setMarkerAlpha 1;  
		_marker1 setMarkerSize [0.5,0.5];
	};
	case 2 : {
		deleteMarker "pow2";

		_marker2 = createMarker["pow2", _unitPos];
		_marker2 setMarkerShape "icon";  
		_marker2 setMarkerType "mil_dot"; 
		_marker2 setMarkerColor "ColorGreen";  
		_marker2 setMarkerText "";  
		_marker2 setMarkerAlpha 1;  
		_marker2 setMarkerSize [0.5,0.5];
	};
	case 3 : {
		deleteMarker "pow3";

		_marker3 = createMarker["pow3", _unitPos];
		_marker3 setMarkerShape "icon";  
		_marker3 setMarkerType "mil_dot"; 
		_marker3 setMarkerColor "ColorGreen";  
		_marker3 setMarkerText "";  
		_marker3 setMarkerAlpha 1;  
		_marker3 setMarkerSize [0.5,0.5];
	};
	case 4 : {
		deleteMarker "pow4";

		_marker4 = createMarker["pow4", _unitPos];
		_marker4 setMarkerShape "icon";  
		_marker4 setMarkerType "mil_dot"; 
		_marker4 setMarkerColor "ColorGreen";  
		_marker4 setMarkerText "";  
		_marker4 setMarkerAlpha 1;  
		_marker4 setMarkerSize [0.5,0.5];
	};
	case 5 : {
		deleteMarker "pow5";

		_marker5 = createMarker["pow5", _unitPos];
		_marker5 setMarkerShape "icon";  
		_marker5 setMarkerType "mil_dot"; 
		_marker5 setMarkerColor "ColorGreen";  
		_marker5 setMarkerText "";  
		_marker5 setMarkerAlpha 1;  
		_marker5 setMarkerSize [0.5,0.5];
	};
	case 100 : {
		deleteMarker "pow1";
		deleteMarker "pow2";
		deleteMarker "pow3";
		deleteMarker "pow4";
		deleteMarker "pow5";
	};
	default {
		hint "Error!";
	};
};