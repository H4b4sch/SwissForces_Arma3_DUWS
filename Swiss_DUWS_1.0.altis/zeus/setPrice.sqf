// This Event-Handler sets which objects can be placed and how much they cost
zeus1 addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = [false,0];
			
			// Units
			if (_x isKindOf "B_Soldier_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Soldier_GL_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_AR_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_LAT_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_medic_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AA_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_repair_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AT_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_Diver_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_M_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_sniper_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_spotter_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_exp_F") then {_cost = [true,0.004]};
			
			// Vehicles
			if (_x isKindOf "B_MRAP_01_F") then {_cost = [true,0.005]};
			if (_x isKindOf "B_MRAP_01_hmg_F") then {_cost = [true,0.018]};
			if (_x isKindOf "B_MRAP_01_gmg_F") then {_cost = [true,0.025]};
			if (_x isKindOf "B_APC_Wheeled_01_cannon_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Truck_01_transport_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Heli_Light_01_armed_F") then {_cost = [true,0.040]};
			if (_x isKindOf "B_Heli_Attack_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_Heli_Light_01_F") then {_cost = [true,0.015]};
			if (_x isKindOf "B_Heli_Transport_01_F") then {_cost = [true,0.022]};
			if (_x isKindOf "B_APC_Tracked_01_rcws_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Quadbike_01_F") then {_cost = [true,0]};
			if (_x isKindOf "B_APC_Tracked_01_AA_F") then {_cost = [true,0.030]};
			if (_x isKindOf "B_MBT_01_cannon_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_APC_Tracked_01_CRV_F") then {_cost = [true,0.028]};
			if (_x isKindOf "C_Offroad_01_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_MBT_01_mlrs_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_MBT_01_arty_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_G_Van_01_fuel_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_Plane_CAS_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_MBT_01_TUSK_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_UGV_01_rcws_F") then {_cost = [true,0.020]};
			if (_x isKindOf "B_UGV_01_F") then {_cost = [true,0.010]};
			
			// Modules
			if (_x isKindOf "ModuleRemoteControl_F") then {_cost = [true,0.000]};
			
			// Structures
			if (_x isKindOf "Land_Billboard_F") then {_cost = [true,0.000]};
			if (_x isKindOf "Land_MapBoard_F") then {_cost = [true,0.000]};
			if (_x isKindOf "MapBoard_altis_F") then {_cost = [true,0.000]};
			if (_x isKindOf "Land_BagFence_Corner_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_BagFence_End_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_BagFence_Long_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_BagFence_Round_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_BagFence_Short_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrier_1_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrier_3_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrier_5_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrierBig_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrierTower_F") then {_cost = [true,0.008]};
			if (_x isKindOf "Land_HBarrierWall_corner_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrierWall_corridor_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HBarrierWall4_F") then {_cost = [true,0.004]};
			if (_x isKindOf "Land_HBarrierWall6_F") then {_cost = [true,0.004]};
			if (_x isKindOf "Land_Razorwire_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_HelipadCircle_F") then {_cost = [true,0.000]};
			if (_x isKindOf "Land_HelipadSquare_F") then {_cost = [true,0.000]};
			if (_x isKindOf "CamoNet_BLUFOR_F") then {_cost = [true,0.001]};
			if (_x isKindOf "CamoNet_BLUFOR_open_F") then {_cost = [true,0.001]};
			if (_x isKindOf "CamoNet_BLUFOR_big_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_TentHangar_V1_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_PortableLight_single_F") then {_cost = [true,0.001]};
			if (_x isKindOf "Land_PortableLight_double_F") then {_cost = [true,0.001]};
			if (_x isKindOf "B_HMG_01_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_GMG_01_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_HMG_01_high_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_GMG_01_high_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_static_AA_F") then {_cost = [true,0.016]};
			if (_x isKindOf "B_static_AT_F") then {_cost = [true,0.016]};
			if (_x isKindOf "B_Mortar_01_F") then {_cost = [true,0.050]};
			if (_x isKindOf "B_UAV_01_F") then {_cost = [true,0.018]};
			if (_x isKindOf "B_UAV_02_F") then {_cost = [true,0.056]};
			if (_x isKindOf "Land_BagBunker_Large_F") then {_cost = [true,0.006]};
			if (_x isKindOf "Land_BagBunker_Small_F") then {_cost = [true,0.010]};
			if (_x isKindOf "Land_BagBunker_Tower_F") then {_cost = [true,0.016]};



			_costs = _costs + [_cost];
			
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];
zeus2 addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = [false,0];
			
			// Units
			if (_x isKindOf "B_Soldier_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Soldier_GL_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_AR_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_LAT_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_medic_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AA_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_repair_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AT_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_Diver_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_M_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_sniper_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_spotter_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_exp_F") then {_cost = [true,0.004]};
			
			// Vehicles
			if (_x isKindOf "B_MRAP_01_F") then {_cost = [true,0.005]};
			if (_x isKindOf "B_MRAP_01_hmg_F") then {_cost = [true,0.018]};
			if (_x isKindOf "B_MRAP_01_gmg_F") then {_cost = [true,0.025]};
			if (_x isKindOf "B_APC_Wheeled_01_cannon_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Truck_01_transport_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Heli_Light_01_armed_F") then {_cost = [true,0.040]};
			if (_x isKindOf "B_Heli_Attack_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_Heli_Light_01_F") then {_cost = [true,0.015]};
			if (_x isKindOf "B_Heli_Transport_01_F") then {_cost = [true,0.022]};
			if (_x isKindOf "B_APC_Tracked_01_rcws_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Quadbike_01_F") then {_cost = [true,0]};
			if (_x isKindOf "B_APC_Tracked_01_AA_F") then {_cost = [true,0.030]};
			if (_x isKindOf "B_MBT_01_cannon_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_APC_Tracked_01_CRV_F") then {_cost = [true,0.028]};
			if (_x isKindOf "C_Offroad_01_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_MBT_01_mlrs_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_MBT_01_arty_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_G_Van_01_fuel_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_Plane_CAS_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_MBT_01_TUSK_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_UGV_01_rcws_F") then {_cost = [true,0.020]};
			if (_x isKindOf "B_UGV_01_F") then {_cost = [true,0.010]};
			
			// Modules
			if (_x isKindOf "ModuleRemoteControl_F") then {_cost = [true,0.000]};
			
			_costs = _costs + [_cost];
			
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];
zeus3 addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = [false,0];
			
			// Units
			if (_x isKindOf "B_Soldier_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Soldier_GL_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_AR_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_LAT_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_medic_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AA_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_repair_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AT_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_Diver_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_M_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_sniper_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_spotter_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_exp_F") then {_cost = [true,0.004]};
			
			// Vehicles
			if (_x isKindOf "B_MRAP_01_F") then {_cost = [true,0.005]};
			if (_x isKindOf "B_MRAP_01_hmg_F") then {_cost = [true,0.018]};
			if (_x isKindOf "B_MRAP_01_gmg_F") then {_cost = [true,0.025]};
			if (_x isKindOf "B_APC_Wheeled_01_cannon_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Truck_01_transport_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Heli_Light_01_armed_F") then {_cost = [true,0.040]};
			if (_x isKindOf "B_Heli_Attack_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_Heli_Light_01_F") then {_cost = [true,0.015]};
			if (_x isKindOf "B_Heli_Transport_01_F") then {_cost = [true,0.022]};
			if (_x isKindOf "B_APC_Tracked_01_rcws_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Quadbike_01_F") then {_cost = [true,0]};
			if (_x isKindOf "B_APC_Tracked_01_AA_F") then {_cost = [true,0.030]};
			if (_x isKindOf "B_MBT_01_cannon_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_APC_Tracked_01_CRV_F") then {_cost = [true,0.028]};
			if (_x isKindOf "C_Offroad_01_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_MBT_01_mlrs_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_MBT_01_arty_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_G_Van_01_fuel_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_Plane_CAS_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_MBT_01_TUSK_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_UGV_01_rcws_F") then {_cost = [true,0.020]};
			if (_x isKindOf "B_UGV_01_F") then {_cost = [true,0.010]};
			
			// Modules
			if (_x isKindOf "ModuleRemoteControl_F") then {_cost = [true,0.000]};
			
			_costs = _costs + [_cost];
			
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];
zeus4 addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = [false,0];
			
			// Units
			if (_x isKindOf "B_Soldier_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Soldier_GL_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_AR_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_LAT_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_medic_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AA_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_repair_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AT_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_Diver_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_M_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_sniper_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_spotter_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_exp_F") then {_cost = [true,0.004]};
			
			// Vehicles
			if (_x isKindOf "B_MRAP_01_F") then {_cost = [true,0.005]};
			if (_x isKindOf "B_MRAP_01_hmg_F") then {_cost = [true,0.018]};
			if (_x isKindOf "B_MRAP_01_gmg_F") then {_cost = [true,0.025]};
			if (_x isKindOf "B_APC_Wheeled_01_cannon_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Truck_01_transport_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Heli_Light_01_armed_F") then {_cost = [true,0.040]};
			if (_x isKindOf "B_Heli_Attack_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_Heli_Light_01_F") then {_cost = [true,0.015]};
			if (_x isKindOf "B_Heli_Transport_01_F") then {_cost = [true,0.022]};
			if (_x isKindOf "B_APC_Tracked_01_rcws_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Quadbike_01_F") then {_cost = [true,0]};
			if (_x isKindOf "B_APC_Tracked_01_AA_F") then {_cost = [true,0.030]};
			if (_x isKindOf "B_MBT_01_cannon_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_APC_Tracked_01_CRV_F") then {_cost = [true,0.028]};
			if (_x isKindOf "C_Offroad_01_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_MBT_01_mlrs_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_MBT_01_arty_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_G_Van_01_fuel_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_Plane_CAS_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_MBT_01_TUSK_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_UGV_01_rcws_F") then {_cost = [true,0.020]};
			if (_x isKindOf "B_UGV_01_F") then {_cost = [true,0.010]};
			
			// Modules
			if (_x isKindOf "ModuleRemoteControl_F") then {_cost = [true,0.000]};
			
			_costs = _costs + [_cost];
			
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];
zeus5 addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = [false,0];
			
			// Units
			if (_x isKindOf "B_Soldier_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Soldier_GL_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_AR_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_Soldier_LAT_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_medic_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AA_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_repair_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_soldier_AT_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_Diver_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_M_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_sniper_F") then {_cost = [true,0.004]};
			if (_x isKindOf "B_spotter_F") then {_cost = [true,0.003]};
			if (_x isKindOf "B_soldier_exp_F") then {_cost = [true,0.004]};
			
			// Vehicles
			if (_x isKindOf "B_MRAP_01_F") then {_cost = [true,0.005]};
			if (_x isKindOf "B_MRAP_01_hmg_F") then {_cost = [true,0.018]};
			if (_x isKindOf "B_MRAP_01_gmg_F") then {_cost = [true,0.025]};
			if (_x isKindOf "B_APC_Wheeled_01_cannon_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Truck_01_transport_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_Heli_Light_01_armed_F") then {_cost = [true,0.040]};
			if (_x isKindOf "B_Heli_Attack_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_Heli_Light_01_F") then {_cost = [true,0.015]};
			if (_x isKindOf "B_Heli_Transport_01_F") then {_cost = [true,0.022]};
			if (_x isKindOf "B_APC_Tracked_01_rcws_F") then {_cost = [true,0.035]};
			if (_x isKindOf "B_Quadbike_01_F") then {_cost = [true,0]};
			if (_x isKindOf "B_APC_Tracked_01_AA_F") then {_cost = [true,0.030]};
			if (_x isKindOf "B_MBT_01_cannon_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_APC_Tracked_01_CRV_F") then {_cost = [true,0.028]};
			if (_x isKindOf "C_Offroad_01_F") then {_cost = [true,0.002]};
			if (_x isKindOf "B_MBT_01_mlrs_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_MBT_01_arty_F") then {_cost = [true,0.100]};
			if (_x isKindOf "B_G_Van_01_fuel_F") then {_cost = [true,0.010]};
			if (_x isKindOf "B_Plane_CAS_01_F") then {_cost = [true,0.075]};
			if (_x isKindOf "B_MBT_01_TUSK_F") then {_cost = [true,0.055]};
			if (_x isKindOf "B_UGV_01_rcws_F") then {_cost = [true,0.020]};
			if (_x isKindOf "B_UGV_01_F") then {_cost = [true,0.010]};
			
			// Modules
			if (_x isKindOf "ModuleRemoteControl_F") then {_cost = [true,0.000]};
			
			_costs = _costs + [_cost];
			
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];