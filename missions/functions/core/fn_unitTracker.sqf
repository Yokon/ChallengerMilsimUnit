deleteMarker _leader1;
deleteMarker _leader2;
deleteMarker _leader3;
deleteMarker _leader4;
deleteMarker _leader5;
deleteMarker _leader6;
deleteMarker _leader7;
deleteMarker _leader8;
deleteMarker _leader9;

_leader1 = "Hammer";
_leader2 = "Specter";
_leader3 = "Paladin";
_leader4 = "Command";
_leader5 = "Nimbus";
_leader6 = "Warhawk";
_leader7 = "Spartan";
_leader8 = "Valkyrie";
_leader9 = "Vulture";

_leader1Marker = createMarker[_leader1, leader1];
_leader1Marker setMarkerShape "icon";
_leader1Marker setMarkerType "b_inf";
_leader1Marker setMarkerColor "blufor";
_leader1Marker setMarkerText _leader1;
_leader1Marker setMarkerSize [0.75,0.75];
_leader1Marker setMarkerAlpha 1;

_leader2Marker = createMarker[_leader2, leader2];
_leader2Marker setMarkerShape "icon";
_leader2Marker setMarkerType "b_recon";
_leader2Marker setMarkerColor "blufor";
_leader2Marker setMarkerText _leader2;
_leader2Marker setMarkerSize [0.75,0.75];
_leader2Marker setMarkerAlpha 1;

_leader3Marker = createMarker[_leader3, leader3];
_leader3Marker setMarkerShape "icon";
_leader3Marker setMarkerType "b_armor";
_leader3Marker setMarkerColor "blufor";
_leader3Marker setMarkerText _leader3;
_leader3Marker setMarkerSize [0.75,0.75];
_leader3Marker setMarkerAlpha 1;

_leader4Marker = createMarker[_leader4, leader4];
_leader4Marker setMarkerShape "icon";
_leader4Marker setMarkerType "b_hq";
_leader4Marker setMarkerColor "blufor";
_leader4Marker setMarkerText _leader4;
_leader4Marker setMarkerSize [0.75,0.75];
_leader4Marker setMarkerAlpha 1;

_leader5Marker = createMarker[_leader5, leader5];
_leader5Marker setMarkerShape "icon";
_leader5Marker setMarkerType "b_air";
_leader5Marker setMarkerColor "blufor";
_leader5Marker setMarkerText _leader5;
_leader5Marker setMarkerSize [0.75,0.75];
_leader5Marker setMarkerAlpha 1;

_leader6Marker = createMarker[_leader6, leader6];
_leader6Marker setMarkerShape "icon";
_leader6Marker setMarkerType "b_plane";
_leader6Marker setMarkerColor "blufor";
_leader6Marker setMarkerText _leader6;
_leader6Marker setMarkerSize [0.75,0.75];
_leader6Marker setMarkerAlpha 1;

_leader7Marker = createMarker[_leader7, leader7];
_leader7Marker setMarkerShape "icon";
_leader7Marker setMarkerType "b_inf";
_leader7Marker setMarkerColor "ColorGreen";
_leader7Marker setMarkerText _leader7;
_leader7Marker setMarkerSize [0.75,0.75];
_leader7Marker setMarkerAlpha 1;

_leader8Marker = createMarker[_leader8, leader8];
_leader8Marker setMarkerShape "icon";
_leader8Marker setMarkerType "b_med";
_leader8Marker setMarkerColor "blufor";
_leader8Marker setMarkerText _leader8;
_leader8Marker setMarkerSize [0.75,0.75];
_leader8Marker setMarkerAlpha 1;

_leader9Marker = createMarker[_leader9, leader9];
_leader9Marker setMarkerShape "icon";
_leader9Marker setMarkerType "b_air";
_leader9Marker setMarkerColor "blufor";
_leader9Marker setMarkerText _leader9;
_leader9Marker setMarkerSize [0.75,0.75];
_leader9Marker setMarkerAlpha 1;

sleep 2;

[] spawn core_fnc_unitTracker;