/*
Created by =BTC= Giallustio
Version: 0.13
Date: 20/03/2013
Visit us at: http://www.blacktemplars.altervista.org/
*/
if (isServer) then 
{
	BTC_id_repo = 10;publicVariable "BTC_id_repo";
	BTC_cargo_repo = "Land_HBarrierBig_F" createVehicle [- 5000,- 5000,0];publicVariable "BTC_cargo_repo";
};
if (isDedicated) exitwith {};
BTC_active_lift      = 1;
BTC_active_cargo     = 1;
//Common
BTC_dir_action = "=BTC=_logistic\=BTC=_addAction.sqf";
BTC_l_placement_area = 20;
if (BTC_active_lift == 1) then
{
	//Lift
	BTC_lift_pilot    = [];
	BTC_lift          = 1;
	BTC_lifted        = 0;
	BTC_lift_min_h    = 2;
	BTC_lift_max_h    = 35;
	BTC_lift_radius   = 3;
	BTC_def_pip       = 1;
	BTC_l_def_veh_pip = ["B_Heli_Light_01_F","O_Heli_Light_02_F","B_Heli_Transport_01_F","I_Heli_Transport_02_F"];
	BTC_l_pip_cond    = false;
	BTC_cargo_lifted  = objNull;
	_lift = [] execVM "=BTC=_logistic\=BTC=_lift\=BTC=_lift_init.sqf";
	BTC_get_liftable_array =
	{
		_chopper = _this select 0;
		_array   = [];
		switch (typeOf _chopper) do
		{
  			//MH-9 Hummingbird
			case "B_Heli_Light_01_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Quadbike_01_base_F","Strategic", "StaticWeapon", "Car"];};

			//AH-9 Pawnee
			case "B_Heli_Light_01_armed_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Quadbike_01_base_F","Strategic", "StaticWeapon", "Car"];};

			//AH-99 Blackfoot
			case "B_Heli_Attack_01_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car", "Wall_F"];};

			//PO-30
			case "O_Heli_Light_02_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car", "Wall_F", "HBarrier_base_F"];};

			//PO-30 Orca (Black)
			case "O_Heli_Light_02_unarmed_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car", "Wall_F", "HBarrier_base_F"];};

			//Mi-48 Kajman
			case "O_Heli_Attack_02_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car"];};

			//Mi-48 Kajman (Black)
			case "O_Heli_Attack_02_black_F"     : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car"];};

			//UH-80 Ghost Hawk
			case "B_Heli_Transport_01_F" : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car","Truck","Wheeled_APC","Air","Ship", "Wall_F", "HBarrier_base_F"];};

			//UH-80 Ghost Hawk (Camo)
			case "B_Heli_Transport_01_camo_F" : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car","Truck","Wheeled_APC","Air","Ship", "Wall_F", "HBarrier_base_F"];};

			//WY-55 Hellcat
			case "I_Heli_light_03_F" : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car","Truck","Wheeled_APC","Air","Ship", "Wall_F", "HBarrier_base_F"];};

			//WY-55 Hellcat (Green)
			case "I_Heli_light_03_unarmed_F" : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car","Truck","Wheeled_APC","Air","Ship", "Wall_F", "HBarrier_base_F"];};

			//CH-49 Mohawk
			case "I_Heli_Transport_02_F" : {_array = ["Motorcycle","ReammoBox","ReammoBox_F","Strategic","StaticWeapon","Car","Truck","Wheeled_APC","Tracked_APC","APC_Tracked_01_base_F","APC_Tracked_02_base_F","Air","Ship", "Wall_F", "HBarrier_base_F"];};
		};
		_array
	};
};
if (BTC_active_fast_rope == 1) then
{
	//Fast roping
	BTC_fast_rope_h = 35;
	BTC_fast_rope_h_min = 5;
	BTC_roping_chopper = ["B_Heli_Light_01_F","O_Heli_Light_02_F","B_Heli_Transport_01_F","I_Heli_Transport_02_F"];
	_rope = [] execVM "=BTC=_logistic\=BTC=_fast_roping\=BTC=_fast_roping_init.sqf";
};
if (BTC_active_cargo == 1) then
{
	//Cargo System
	_cargo = [] execVM "=BTC=_logistic\Dragging_System.sqf";
	BTC_def_drag         = ["ReammoBox","ReammoBox_F","Strategic", "Wall_F", "HBarrier_base_F"];
	BTC_def_placement    = ["ReammoBox","ReammoBox_F","Strategic", "Wall_F", "HBarrier_base_F"];
	BTC_cargo_selected   = objNull;
};
//Functions
BTC_l_paradrop =
{
	_veh          = _this select 0;
	_dropped      = _this select 1;
	_chute_type   = _this select 2;
	private ["_chute"];
	_dropped_type = typeOf _dropped;
	if (typeOf _veh == "B_Heli_Light_01_F") then {_chute = createVehicle [_chute_type, [((position _veh) select 0) - 5,((position _veh) select 1) - 10,((position _veh) select 2)- 4], [], 0, "FLY"];} else {_chute = createVehicle [_chute_type, [((position _veh) select 0) - 5,((position _veh) select 1) - 3,((position _veh) select 2)- 4], [], 0, "FLY"];};
	_smoke        = "SmokeshellGreen" createVehicle position _veh;
	_chem         = "Chemlight_green" createVehicle position _veh;
    _smoke attachto [_dropped,[0,0,0]];
	_chem attachto [_dropped,[0,0,0]]; 
	_dropped attachTo [_chute,[0,0,0]];
	_heigh = 0;
	while {((getPos _chute) select 2) > 0.3} do {sleep 1;_heigh = (getPos _chute) select 2;};
	detach _dropped;
	//if (_dropped_type isKindOf "ReammoBox") then {_dropped setPos [getpos _dropped select 0, getpos _dropped select 1, _heigh];};
};
BTC_l_obj_fall =
{
	_obj    = _this select 0;
	_height = (getPos _obj) select 2;
	_fall   = 0.09;
	while {((getPos _obj) select 2) > 0.1} do 
	{

		_fall = (_fall * 1.1);
		_obj setPos [getPos _obj select 0, getPos _obj select 1, _height];
		_height = _height - _fall;
		//hint format ["%1 - %2", (getPos _obj) select 2,_height];
		sleep 0.01;
	};
	//if (((getPos _obj) select 2) < 0.3) then {_obj setPos [getPos _obj select 0, getPos _obj select 1, 0.2];};
};