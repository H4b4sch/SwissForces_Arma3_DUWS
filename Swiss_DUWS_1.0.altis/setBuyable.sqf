// Global Arrays which contain the information for each object that can be buyed in HQ, FOB and Zeus
// Information: [ Classname , Price,   Name  ]
//							[B_Soldier_F,   2  , Rifleman]

// Zeus-Only Arrays Contain no Name


// Units
_unit0  = ["B_Soldier_F", 2, "Rifleman"];
_unit1  = ["B_Soldier_GL_F", 3, "Grenadier"];
_unit2  = ["B_Soldier_AR_F", 3, "Automatic Rifleman"];
_unit3  = ["B_Soldier_LAT_F", 3, "AT Rifleman"];
_unit4  = ["B_medic_F", 4, "Medic"];
_unit5  = ["B_soldier_AA_F", 4, "AA Specialist"];
_unit6  = ["B_soldier_repair_F", 4, "Repair Specialist"];
_unit7  = ["B_soldier_AT_F", 4, "AT Specialist"];
_unit8  = ["B_Diver_F", 3, "SF Diver"];
_unit9  = ["B_soldier_M_F", 3, "Marksman"];
_unit10 = ["B_sniper_F", 4, "Sniper"];
_unit11 = ["B_spotter_F", 3, "Spotter"];
_unit12 = ["B_soldier_exp_F", 4, "Explosive Specialist"];

// Vehicles
_vehicle0   = ["B_MRAP_01_F", 5, "Hunter Unarmed"];
_vehicle1   = ["B_MRAP_01_hmg_F", 18, "Hunter HMG"];
_vehicle2   = ["B_MRAP_01_gmg_F", 25, "Hunter GMG"];
_vehicle3   = ["B_APC_Wheeled_01_cannon_F", 35, "AMV-7 Marshall"];
_vehicle4   = ["B_Truck_01_transport_F", 2, "HEMTT"];
_vehicle5   = ["B_Heli_Light_01_armed_F", 40, "AH-9 Pawnee"];
_vehicle6   = ["B_Heli_Attack_01_F", 75, "AH-99 Blackfoot"];
_vehicle7   = ["B_Heli_Light_01_F", 15, "MH-9 Hummingbird"];
_vehicle8   = ["B_Heli_Transport_01_F", 22, "MH-80 Ghosthawk"];
_vehicle9   = ["B_APC_Tracked_01_rcws_F", 35, "IFV-6c Panther"];
_vehicle10  = ["B_Quadbike_01_F", 0, "ATV"];
_vehicle11  = ["B_APC_Tracked_01_AA_F", 30, "IFV-6c Cheetah"];
_vehicle12  = ["B_MBT_01_cannon_F", 55, "M2A1 Slammer"];
_vehicle13  = ["B_APC_Tracked_01_CRV_F", 28, "CRV-6a Bobcat"];
_vehicle14  = ["C_Offroad_01_F", 2, "SF SUV"];
_vehicle15  = ["B_MBT_01_mlrs_F", 100, "MLRS Artillery"];
_vehicle16  = ["B_MBT_01_arty_F", 100, "Scorcher Artillery"];
_vehicle17  = ["B_G_Van_01_fuel_F", 10, "Fuel Truck"];
_vehicle18  = ["B_Plane_CAS_01_F", 75, "A-641 CAS"];
_vehicle19  = ["B_MBT_01_TUSK_F", 55, "M2A4 Slammer"];
_vehicle20  = ["B_UGV_01_rcws_F", 20, "Stomper RCSW"];
_vehicle21  = ["B_UGV_01_F", 10, "Stomper Recon"];
_vehicle22  = ["B_UAV_01_F", 20, "A2 Darter"];
_vehicle23  = ["B_UAV_02_F", 10, "TODO ADD TEXT"];

// Modules (Zeus Only)
_module0  = ["ModuleRemoteControl_F", 0];

// Structures (Zeus Only)
_structure0  = ["Land_Billboard_F", 0];
_structure1  = ["Land_MapBoard_F", 0];
_structure2  = ["MapBoard_altis_F", 0];
_structure3  = ["Land_BagFence_Corner_F", 0];
_structure4  = ["Land_BagFence_End_F", 0];
_structure5  = ["Land_BagFence_Long_F", 0];
_structure6  = ["Land_BagFence_Round_F", 0];
_structure7  = ["Land_BagFence_Short_F", 0];
_structure8  = ["Land_HBarrier_1_F", 0];
_structure9  = ["Land_HBarrier_3_F", 0];
_structure10 = ["Land_HBarrier_5_F", 0];
_structure11 = ["Land_HBarrierBig_F", 0];
_structure12 = ["Land_HBarrierTower_F", 0];
_structure13 = ["Land_HBarrierWall_corner_F", 0];
_structure14 = ["Land_HBarrierWall_corridor_F", 0];
_structure15 = ["Land_HBarrierWall4_F", 0];
_structure16 = ["Land_HBarrierWall6_F", 0];
_structure17 = ["Land_Razorwire_F", 0];
_structure18 = ["Land_HelipadCircle_F", 0];
_structure19 = ["Land_HelipadSquare_F", 0];
_structure20 = ["CamoNet_BLUFOR_F", 0];
_structure21 = ["CamoNet_BLUFOR_open_F", 0];
_structure22 = ["CamoNet_BLUFOR_big_F", 0];
_structure23 = ["Land_TentHangar_V1_F", 0];
_structure24 = ["Land_PortableLight_single_F", 0];
_structure25 = ["Land_PortableLight_double_F", 0];
_structure26 = ["B_HMG_01_F", 0];
_structure27 = ["B_GMG_01_F", 0];
_structure28 = ["B_HMG_01_high_F", 0];
_structure29 = ["B_GMG_01_high_F", 0];
_structure30 = ["B_static_AA_F", 0];
_structure31 = ["B_static_AT_F", 0];
_structure32 = ["B_Mortar_01_F", 0];
_structure33 = ["Land_BagBunker_Large_F", 0];
_structure34 = ["Land_BagBunker_Small_F", 0];
_structure35 = ["Land_BagBunker_Tower_F", 0];


// The actual global arrays
Array_HQ_Units = [_unit0,
									_unit1,
									_unit2,
									_unit3,
									_unit4,
									_unit5,
									_unit6,
									_unit7,
									_unit8,
									_unit9,
									_unit10,
									_unit11,
									_unit12];
									
Array_HQ_Vehicles = [_vehicle0,
									   _vehicle1,
									   _vehicle2,
									   _vehicle3,
									   _vehicle4,
									   _vehicle5,
									   _vehicle6,
									   _vehicle7,
									   _vehicle8,
									   _vehicle9,
									   _vehicle10,
									   _vehicle11,
									   _vehicle12,
									   _vehicle13,
									   _vehicle14,
									   _vehicle15,
									   _vehicle16,
									   _vehicle17,
									   _vehicle18,
									   _vehicle19,
									   _vehicle20,
									   _vehicle21,
									   _vehicle22,
                     _vehicle23];
                      
Array_Zeus_Objects = [_unit0,
									    _unit1,
									    _unit2,
									    _unit3,
									    _unit4,
									    _unit5,
									    _unit6,
									    _unit7,
									    _unit8,
									    _unit9,
									    _unit10,
									    _unit11,
									    _unit12,
									    _vehicle0,
									    _vehicle1,
									    _vehicle2,
									    _vehicle3,
									    _vehicle4,
									    _vehicle5,
									    _vehicle6,
									    _vehicle7,
									    _vehicle8,
									    _vehicle9,
									    _vehicle10,
									    _vehicle11,
									    _vehicle12,
									    _vehicle13,
									    _vehicle14,
									    _vehicle15,
									    _vehicle16,
									    _vehicle17,
									    _vehicle18,
									    _vehicle19,
									    _vehicle20,
									    _vehicle21,
									    _vehicle22,
                      _vehicle23,
                      _module0,
								      _structure1,                      
                      _structure2, 
                      _structure3, 
                      _structure4, 
                      _structure5, 
                      _structure6, 
                      _structure7, 
                      _structure8, 
                      _structure9, 
                      _structure10,
                      _structure11,
                      _structure12,
                      _structure13,
                      _structure14,
                      _structure15,
                      _structure16,
                      _structure17,
                      _structure18,
                      _structure19,
                      _structure20,
                      _structure21,
                      _structure22,
                      _structure23,
                      _structure24,
                      _structure25,
                      _structure26,
                      _structure27,
                      _structure28,
                      _structure29,
                      _structure30,
                      _structure31,
                      _structure32,
                      _structure33,
                      _structure34,
                      _structure35];