_index = lbCurSel 2100;

// Some Variables
_skill = (blufor_ai_skill select 0)+0.2;
_skillSF = (blufor_ai_skill select 0)+0.5;
_spawnpos = [(getpos player select 0)-78, (getpos player select 1)-73.5];

// Set the type and the cost per unit
_thisUnitType = (Array_HQ_Units select _index) select 0;	// UnitType ex. "B_Soldier_F"
_thisUnitCost = (Array_HQ_Units select _index) select 1;	// Unit Price

if (commandpointsblu1 >= _thisUnitCost) then 
   {
     hint "Unit ready !";
     commandpointsblu1 = commandpointsblu1 - _thisUnitCost;
     ctrlSetText [1000, format["%1",commandpointsblu1]];
     _group = group player ;
     _thisUnitType createUnit [_spawnpos, _group, "zeus1 addCuratorEditableObjects [[this],true];", _skill, "private"] ;
   } 
else 
   {
     hint "Not enough command points";
   };
        
publicVariable "commandpointsblu1";