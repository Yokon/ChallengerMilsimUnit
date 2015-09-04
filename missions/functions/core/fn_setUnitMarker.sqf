if(stealthMarkerToggle == 1) exitWith {stealthMarkerToggle = 0; onEachFrame {}; {deleteMarkerLocal _x;} forEach markerList;  hint "Markers disabled";};
 
stealthMarkerToggle = 1;
markerList = [];
markerUnits = [];
 
hint "Markers enabled - Check map!";
 
 
		while {true} do
		{
		if(stealthMarkerToggle == 0) exitWith {};
			
				{
					_unit = _x; //assigns a variable to the unit
					markerUnits = markerUnits + [_x]; //adds the unit to an array
					_markerName = str(format ["%1",name _x]); //gathers the name of the unit to use as a marker name
					_mName = "m" + _markerName; //adds m to the marker name
		
						if(side _x == side player) then //Creates marker for people on your team (shows up blue)
						{

						}
						else //Creates marker for people on the opposite teams (red)
						{
							_unit = _x;
							markerUnits = markerUnits + [_x];
							_mName setMarkerSizeLocal [0.6, 0.9];
							_mName = createMarkerLocal [_markerName, position _x]; 
							_mName setMarkerShapeLocal "ICON";
							_mName setMarkerTypeLocal "mil_triangle";
							_mName setMarkerColorLocal "ColorRed";
							_mName setMarkerTextLocal _markerName;
							_mName setMarkerDirLocal (direction _x);
							markerList = markerList + [_mName];
						};
						
						
					
				} forEach allUnits; //does this for every unit ingame	
			
			sleep 1;
			if(stealthMarkerToggle == 0) exitWith {}; //checks if the marker hack is disabled
			{_x setMarkerPosLocal getPos (markerUnits select (markerList find _mName)); _x setMarkerDirLocal getDir(markerUnits select (markerList find _mName));} forEach markerList; //updates position and direction
			sleep 1;
			if(stealthMarkerToggle == 0) exitWith {};
			{_x setMarkerPosLocal getPos (markerUnits select (markerList find _mName)); _x setMarkerDirLocal getDir(markerUnits select (markerList find _mName));} forEach markerList;
			sleep 1;
			if(stealthMarkerToggle == 0) exitWith {};
			{_x setMarkerPosLocal getPos (markerUnits select (markerList find _mName)); _x setMarkerDirLocal getDir(markerUnits select (markerList find _mName));} forEach markerList;
			sleep 1;
			if(stealthMarkerToggle == 0) exitWith {};
			{_x setMarkerPosLocal getPos (markerUnits select (markerList find _mName)); _x setMarkerDirLocal getDir(markerUnits select (markerList find _mName));} forEach markerList;
			sleep 1;
			if(stealthMarkerToggle == 0) exitWith {};
			
			{deleteMarkerLocal _x;} forEach markerList; //clears markers to allow them to be refreshed when it goes back to the beginning of the loop
			markerUnits = [];
			markerList = [];
			
			
		};