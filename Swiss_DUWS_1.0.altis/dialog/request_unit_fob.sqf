_index = lbCurSel 2120;

_skill = (blufor_ai_skill select 0)+0.2;
_skillSF = (blufor_ai_skill select 0)+0.5;
_spawnpos = [(getpos player select 0)-78, (getpos player select 1)-73.5];

// Array for classnames and costs
_unitTypes = ["B_Soldier_F", "B_medic_F", "B_soldier_repair_F"];
_unitCosts = [2, 4];

// Set the type and the cost per unit
_thisUnitType = _unitTypes select _index;
_thisUnitCost = _unitCosts select _index;

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

//hint format["AI skill: %1",_skill];            
publicVariable "commandpointsblu1";

//hint format["index: %1",_index];