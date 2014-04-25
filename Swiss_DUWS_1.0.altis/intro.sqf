// This script handles the intro where the players are flyed to the base
titleText ["Host chooses HQ place", "BLACK OUT"];

// Temporary group for the supporting units
_introGroup = creategroup west;

// The copter and its pilot
_cargoCopter = createVehicle ["I_Heli_Transport_02_F", [190.99005,0.22848341,120.2971], [], 0, "FLY"];
_pilot = _introGroup createUnit ["B_Soldier_F", [190.99005,0.22848341,80.2971], [], 0, "NONE"];
_pilot assignAsDriver _cargoCopter;
_pilot moveindriver _cargoCopter;

// Lock the Copter and let it fly in a height
_cargoCopter flyInHeight 50;


// Move all players into the copter
_ci = 0;
{
	_x assignAsCargo _cargoCopter;
	_x MoveInCargo [_cargoCopter,_ci];
	_ci = _ci+1;
} forEach playableUnits;

// Wait until theres an HQ
waitUntil {HQ_pos_found_generated && time > 0.1};

titleText ["Get Ready", "BLACK FADED"];

// Set Pos near HQ
_cargoCopter setpos [((getpos hq_blu1 select 0)-2000),((getpos hq_blu1 select 1))-2000, 50];

// Get Waypoint Position
_landingPos = [(getpos hq_blu1 select 0),(getpos hq_blu1 select 1)] findEmptyPosition [20,100,"I_Heli_Transport_02_F"];

_wpHQ = _introGroup addWaypoint [_landingPos, 0];
_wp setWaypointCombatMode "RED";
_wpHQ setWaypointSpeed "FULL";

sleep 6;
titleText ["", "BLACK IN"];

// When there -> Land
waitUntil{unitReady _cargoCopter};
_cargoCopter land "GET OUT";

// Get all players out
waitUntil{(position _cargoCopter select 2) <4};
{unassignVehicle _x; doGetOut _x} forEach playableUnits;
sleep 3;

// Fly away
_wpEscape = _introGroup addWaypoint [[190.99005,0.22848341], 0];
_wpEscape setWaypointCombatMode "RED";
_wpEscape setWaypointSpeed "FULL";
waitUntil{(position _cargoCopter select 2) >10};

// Delete
waitUntil{unitReady _cargoCopter};
deleteVehicle _pilot;
deleteVehicle _cargoCopter;