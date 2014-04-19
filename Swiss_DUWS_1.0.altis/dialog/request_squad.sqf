_index = lbCurSel 2101;

_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+15, _spawnPos select 1];

_groupTypes = [(configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad_Weapons"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam_AT"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfTeam_AA"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconPatrol"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconTeam"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "SpecOps" >> "BUS_DiverTeam"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_SniperTeam"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Support" >> "BUS_Support_CLS"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Motorized" >> "BUS_MotInf_Team"),
  				 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Mechanized" >> "BUS_MechInfSquad"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Armored" >> "BUS_TankSection"),
					 (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Armored" >> "BUS_TankPlatoon_AA")];
_groupCosts = [8, 16, 18, 12, 15, 12, 20, 12, 8, 10, 28, 36, 55, 70];				 	

_cost = _groupCosts select _index;
_grouptype = _groupTypes select _index;			 
					 
if (commandpointsblu1 >= _cost) then 
   {
    _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup;
    
    // Init of the units
    {zeus1 addCuratorEditableObjects [[_x],true];} foreach units _group;
		processInitCommands;
    
    player hcsetgroup [_group,""];
    commandpointsblu1 = commandpointsblu1 - _cost;
    ctrlSetText [1000, format["%1",commandpointsblu1]];
		DUWS_number_fireteam = DUWS_number_fireteam + 1;
	  _group setGroupId [format["Fireteam %1",DUWS_number_fireteam]];
    hint "Squad ready !";
   } 
else 
   {
     hint "Not enough command points";
   };


};

publicVariable "commandpointsblu1";