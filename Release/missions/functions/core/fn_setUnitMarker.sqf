if !(unitTracker) exitWith {};
if !(isServer) exitWith {};
if (_this select 0 == 0) exitWith {};


_unitName = _this select 0;
_unitPos = _this select 1;

switch (_unitName) do { 
	case 1 : {
		deleteMarker "unit1";

		_marker1 = createMarker["unit1", _unitPos];
		_marker1 setMarkerShape "icon";  
		_marker1 setMarkerType "mil_dot"; 
		_marker1 setMarkerColor "ColorYellow";  
		_marker1 setMarkerText "";  
		_marker1 setMarkerAlpha 1;  
		_marker1 setMarkerSize [0.5,0.5];
	};
	case 2 : {
		deleteMarker "unit2";

		_marker2 = createMarker["unit2", _unitPos];
		_marker2 setMarkerShape "icon";  
		_marker2 setMarkerType "mil_dot"; 
		_marker2 setMarkerColor "ColorYellow";  
		_marker2 setMarkerText "";  
		_marker2 setMarkerAlpha 1;  
		_marker2 setMarkerSize [0.5,0.5];
	};
	case 3 : {
		deleteMarker "unit3";

		_marker3 = createMarker["unit3", _unitPos];
		_marker3 setMarkerShape "icon";  
		_marker3 setMarkerType "mil_dot"; 
		_marker3 setMarkerColor "ColorYellow";  
		_marker3 setMarkerText "";  
		_marker3 setMarkerAlpha 1;  
		_marker3 setMarkerSize [0.5,0.5];
	};
	case 4 : {
		deleteMarker "unit4";

		_marker4 = createMarker["unit4", _unitPos];
		_marker4 setMarkerShape "icon";  
		_marker4 setMarkerType "mil_dot"; 
		_marker4 setMarkerColor "ColorYellow";  
		_marker4 setMarkerText "";  
		_marker4 setMarkerAlpha 1;  
		_marker4 setMarkerSize [0.5,0.5];
	};
	case 5 : {
		deleteMarker "unit5";

		_marker5 = createMarker["unit5", _unitPos];
		_marker5 setMarkerShape "icon";  
		_marker5 setMarkerType "mil_dot"; 
		_marker5 setMarkerColor "ColorYellow";  
		_marker5 setMarkerText "";  
		_marker5 setMarkerAlpha 1;  
		_marker5 setMarkerSize [0.5,0.5];
	};
	case 100 : {
		deleteMarker "unit1";
		deleteMarker "unit2";
		deleteMarker "unit3";
		deleteMarker "unit4";
		deleteMarker "unit5";
	};
	default {
		hint "Error!";
	};
};