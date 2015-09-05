_unitCount = _this select 0;
_unitPos = _this select 1;

deleteMarker "unit0";
deleteMarker "unit1";
deleteMarker "unit2";
deleteMarker "unit3";
deleteMarker "unit4";
deleteMarker "unit5";

_marker1 = createMarker[format["unit%1",_unitCount], _unitPos];
_marker1 setMarkerShape "icon";  
_marker1 setMarkerType "mil_dot"; 
_marker1 setMarkerColor "ColorYellow";  
_marker1 setMarkerText "";  
_marker1 setMarkerAlpha 1;  
_marker1 setMarkerSize [0.5,0.5];