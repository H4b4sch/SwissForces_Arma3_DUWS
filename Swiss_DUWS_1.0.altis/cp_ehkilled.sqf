///////////////////////////////////////////////////
// 
// cp_ehkilled.sqf
//
// in init.sqf: [] call compile preprocessfilelinenumbers "cp_ehkilled.sqf";
//
// call the fnc with a periodic while loop or in any script that creates an east unit
//
///////////////////////////////////////////////////
if (isServer or isDedicated) then {
	cp_ehkilledeast = {
	
	east_units = [];

		{
			if ((side _x) == east) then {
			
				east_units = east_units + [_x];
				{_x removeAllEventHandlers "killed"} forEach east_units; 
			}; 
		} foreach allUnits;

		{_x addEventHandler ["killed", {commandpointsblu1 = commandpointsblu1 + 1; publicVariable "commandpointsblu1"}]} forEach east_units; 
	};
};