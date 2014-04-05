//====================================================================
//Information  /
//------------/
// This is a modified version of the Cargo Script of the BTC
// Logistics script. The script was stripped down to dragging
// objects only.
//
//
//====================================================================

waitUntil {!isNull player};
waitUntil {player == player};

BTC_l_dragging     = false;
BTC_l_actions_cond = true;

BTC_l_release =
{
	BTC_l_dragging = false;
};
BTC_l_drag =
{
	private ["_drag","_veh"];
	_array = nearestObjects [player, BTC_def_drag, 5];
	if (count _array > 0) then {_drag = _array select 0;};
	if (isNull _drag) exitWith {};
	if (_drag distance player > 4) exitWith {hint "Too far away from the object!";};
	if (BTC_l_dragging) exitWith {hint "You can't drag more than one object!";};
	if (format ["%1", _drag getVariable "BTC_being_drag"] == "1") exitWith {hint "You can't drag this object! it's being dragged!";};
	BTC_l_dragging = true;
	_drag setvariable ["BTC_Being_Drag",1,true];
	BTC_display_EH_l = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 45) then {_anim = [] spawn {sleep 0.01;player switchMove ""acinpknlmstpsraswrfldnon"";};};"];			
	player playMove "acinpknlmstpsraswrfldnon";
	_drag attachto [player,[0,2,0.2]];
	sleep 0.1;
	if ((position _drag select 2) < - 0.5) then {_drag attachto [player,[0,1,1.2]];};
	_release = player addaction [("<t color='#00FF00'> Release </t>",BTC_dir_action,[[],BTC_l_release],7,true,false,"","true"];
	WaitUntil {!Alive player || ((animationstate player == "acinpknlmstpsraswrfldnon") || (animationstate player == "acinpknlmwlksraswrfldb"))};
	_act  = 0;
	While {BTC_l_dragging && vehicle player == player && Alive player && ((animationstate player == "acinpknlmstpsraswrfldnon") || (animationstate player == "acinpknlmwlksraswrfldb"))} do
	{
		sleep 0.1;
	};
	player playMoveNow "AmovPknlMstpSrasWrflDnon";BTC_l_dragging = false;
	player removeAction _release;
	(findDisplay 46) displayRemoveEventHandler ["KeyDown",BTC_display_EH_l];
	if !(isNull _drag) then 
	{
		detach _drag;
		_drag setvariable ["BTC_Being_Drag",0,true];
	};
};
//Placement
BTC_l_placement =
{
	private ["_plac","_veh","_array"];
	_array = nearestObjects [player, BTC_def_dragging, 5];
	if (count _array > 0) then {_plac = _array select 0;};
	if (isNull _plac) exitWith {};
	BTC_l_plac_obj = _plac;
	BTC_l_camera = objNull;
	BTC_l_end = false;
	BTC_l_camera_placement = false;
	BTC_l_camera_created = false;
	BTC_l_camera_nvg = false;
	BTC_l_camera_EH_keydown = (findDisplay 46) displayAddEventHandler ["KeyDown", "_keydown = _this spawn BTC_l_keydown"];
	BTC_l_central_pos = getposATL BTC_l_plac_obj;
	BTC_cam_rel_pos = [0,-6,15];
	BTC_l_plac_obj enableSimulation false;
	BTC_l_actions_cond = false;
	while {!BTC_l_end && Alive player} do
	{
		if (!BTC_l_camera_placement) then {player playMoveNow "amovpercmstpsraswrfldnon";};
		if (BTC_l_camera_placement && !BTC_l_camera_created) then {_cam = [BTC_l_plac_obj] spawn BTC_l_create_camera;};
		if (!BTC_l_camera_placement && BTC_l_camera_created) then {_cam = [BTC_l_plac_obj] spawn BTC_l_destroy_camera;};
		if (BTC_l_camera_nvg) then {camusenvg true;} else {camusenvg false;};
		BTC_l_camera camSetPos (BTC_l_plac_obj modelToWorld BTC_cam_rel_pos);
		BTC_l_camera camCommit 0;
		hintSilent parseText "Keys:<br/>W to move the object towards Nord<br/>A to move the object towards West<br/>S to move the object towards South<br/>D to move the object towards East<br/>Q and Z to modify the elevation<br/>ALT + A/D to modify the direction<br/>C to open/close the camera<br/>CTRL + WASDQZ to move the camera<br/>N to use the nightvision<br/>Back to get back to the game";
		sleep 0.01;
	};
	BTC_l_actions_cond = true;
	BTC_l_plac_obj enableSimulation true;
	BTC_l_plac_obj = objNull;
	hintSilent "";titleText ["", "PLAIN"];
	if (BTC_l_camera_placement) then {_cam = [BTC_l_plac_obj] spawn BTC_l_destroy_camera;};
	(findDisplay 46) displayRemoveEventHandler ["KeyDown",BTC_l_camera_EH_keydown];
};
BTC_l_create_camera =
{
	_obj = _this select 0;
	BTC_l_camera = "camera" camCreate (position _obj);
	BTC_l_camera camSetTarget _obj;
	BTC_l_camera cameraEffect ["internal", "BACK"];
	BTC_l_camera camSetPos (_obj modelToWorld [0,-6,15]);
	BTC_l_camera camCommit 0;
	showCinemaBorder false;
	BTC_l_camera_created = true;
};
BTC_l_destroy_camera =
{
	player cameraEffect ["TERMINATE", "BACK"];
	camDestroy BTC_l_camera;	
	BTC_l_camera = objNull;
	BTC_l_camera_placement = false;
	BTC_l_camera_created = false;
	BTC_l_camera_nvg = false;
};
BTC_l_keydown =
{
	private ["_key","_dir"];
	if (count _this > 1) then
	{
		_key  = _this select 1;
		_ctrl = _this select 3;
		_alt  = _this select 4;
		//player globalchat format ["%1 - %2",_key,_this];
		switch (true) do
		{
			case (_key == 14) : {BTC_l_end = true;};
			case (_key == 30 && !_alt && !_ctrl) : {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0) - 0.1,(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2)];if ([BTC_l_central_pos,BTC_l_plac_obj] call BIS_fnc_distance2D > BTC_l_placement_area) then {player sideChat "Out of the placement zone!";BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0) + 0.1,(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2)];};};
			case (_key == 32 && !_alt && !_ctrl) : {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0) + 0.1,(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2)];if ([BTC_l_central_pos,BTC_l_plac_obj] call BIS_fnc_distance2D > BTC_l_placement_area) then {player sideChat "Out of the placement zone!";BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0) - 0.1,(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2)];};};
			case (_key == 31 && !_ctrl) : {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1) - 0.1,(getposATL BTC_l_plac_obj select 2)];if ([BTC_l_central_pos,BTC_l_plac_obj] call BIS_fnc_distance2D > BTC_l_placement_area) then {player sideChat "Out of the placement zone!";BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1) + 0.1,(getposATL BTC_l_plac_obj select 2)];};};
			case (_key == 17 && !_ctrl) : {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1) + 0.1,(getposATL BTC_l_plac_obj select 2)];if ([BTC_l_central_pos,BTC_l_plac_obj] call BIS_fnc_distance2D > BTC_l_placement_area) then {player sideChat "Out of the placement zone!";BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1) - 0.1,(getposATL BTC_l_plac_obj select 2)];};};
			case (_key == 44 && !_ctrl) : {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2) - 0.1];if (abs (((BTC_l_central_pos) select 2) - ((getposATL BTC_l_plac_obj) select 2)) > BTC_l_placement_area) then {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2) + 0.1];};};
			case (_key == 16 && !_ctrl) : {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2) + 0.1];if (abs (((BTC_l_central_pos) select 2) - ((getposATL BTC_l_plac_obj) select 2)) > BTC_l_placement_area) then {BTC_l_plac_obj setpos [(getpos BTC_l_plac_obj select 0),(getpos BTC_l_plac_obj select 1),(getposATL BTC_l_plac_obj select 2) - 0.1];};};
			case (_key == 30 && _alt && !_ctrl) : {_dir = getdir BTC_l_plac_obj;BTC_l_plac_obj setDir (_dir - 1);};
			case (_key == 32 && _alt && !_ctrl) : {_dir = getdir BTC_l_plac_obj;BTC_l_plac_obj setDir (_dir + 1);};
			case (_key == 46) : {if (BTC_l_camera_placement) then {BTC_l_camera_placement = false;} else {BTC_l_camera_placement = true;};};
			case (_key == 49) : {if (BTC_l_camera_nvg) then {BTC_l_camera_nvg = false;} else {BTC_l_camera_nvg = true;};};	
			
			case (BTC_l_camera_placement && _key == 30 && _ctrl) : {private ["_n"];_n = (BTC_cam_rel_pos select 0) - 0.5;if !((abs _n) > BTC_l_placement_area) then {BTC_cam_rel_pos = [_n,BTC_cam_rel_pos select 1,BTC_cam_rel_pos select 2];};};
			case (BTC_l_camera_placement && _key == 32 && _ctrl) : {private ["_n"];_n = (BTC_cam_rel_pos select 0) + 0.5;if !((abs _n) > BTC_l_placement_area) then {BTC_cam_rel_pos = [_n,BTC_cam_rel_pos select 1,BTC_cam_rel_pos select 2];};};
			case (BTC_l_camera_placement && _key == 31 && _ctrl) : {private ["_n"];_n = (BTC_cam_rel_pos select 1) - 0.5;if !((abs _n) > BTC_l_placement_area) then {BTC_cam_rel_pos = [BTC_cam_rel_pos select 0,_n,BTC_cam_rel_pos select 2];};};
			case (BTC_l_camera_placement && _key == 17 && _ctrl) : {private ["_n"];_n = (BTC_cam_rel_pos select 1) + 0.5;if !((abs _n) > BTC_l_placement_area) then {BTC_cam_rel_pos = [BTC_cam_rel_pos select 0,_n,BTC_cam_rel_pos select 2];};};
			case (BTC_l_camera_placement && _key == 44 && _ctrl) : {private ["_n"];_n = (BTC_cam_rel_pos select 2) - 0.5;if !((abs _n) > BTC_l_placement_area) then {BTC_cam_rel_pos = [BTC_cam_rel_pos select 0,BTC_cam_rel_pos select 1,_n];};};
			case (BTC_l_camera_placement && _key == 16 && _ctrl) : {private ["_n"];_n = (BTC_cam_rel_pos select 2) + 0.5;if !((abs _n) > BTC_l_placement_area) then {BTC_cam_rel_pos = [BTC_cam_rel_pos select 0,BTC_cam_rel_pos select 1,_n];};};
		};
	};
};

_drag  = player addaction ["<t color='#00FF00'> Drag </t>",BTC_dir_action,[[],BTC_l_drag],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
_plac  = player addaction ["<t color='#00FF00'> Place </t>",BTC_dir_action,[[],BTC_l_placement],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
_eh = player addEventHandler ["respawn", 
{
	_actions = [] spawn 
	{
		waitUntil {Alive player};
		BTC_l_dragging     = false;
		BTC_l_actions_cond = true;
		_drag  = player addaction ["<t color='#00FF00'> Drag </t>",BTC_dir_action,[[],BTC_l_drag],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
		_plac  = player addaction ["<t color='#00FF00'> Place </t>",BTC_dir_action,[[],BTC_l_placement],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
	};
}];