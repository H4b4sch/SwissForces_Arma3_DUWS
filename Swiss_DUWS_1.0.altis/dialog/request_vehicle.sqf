_index = lbCurSel 2102;

_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+30, _spawnPos select 1];

// Set the type and the cost per vehicle
_thisVehicleType = (Array_HQ_Vehicles select _index) select 0;	// Vehicle Type ex. "B_MRAP_F"
_thisVehicleCost = (Array_HQ_Vehicles select _index) select 1;	// Vehicle Price
  
if (commandpointsblu1 >= _thisVehicleCost) then 
	{  
  	hint "Vehicle ready !";
   	commandpointsblu1 = commandpointsblu1 - _thisVehicleCost;
   	ctrlSetText [1000, format["%1",commandpointsblu1]];
   	_vehic = _thisVehicleType createVehicle _spawnPos;
   	
   	// !!! Offrad has special attributes that are set here !!!
   	if(_thisVehicleType == "C_Offroad_01_F") then
   	{
   		sleep 1;
		  _vehic setObjectTexture [0, "#(argb,8,8,3)color(0.141,0.118,0.082,1)"];
		  _vehic animate ["Hidepolice", 1];
		  _vehic animate ["Hideservices", 1];
		  _vehic animate ["Hidebackpacks", 0];
		  _vehic animate ["Hidebumper1", 0];
		  _vehic animate ["Hidebumper2", 0];
		  _vehic animate ["Hideconstruction", 0];
		  _vehic animate ["Hidedoor1", 1];
		  _vehic animate ["Hidedoor2", 1];
		  _vehic animate ["Hidedoor3", 1];
		  _vehic animate ["Hideglass2", 1];
   	};
  }
  else
  {
  	hint "Not enough command points";
  };
publicVariable "commandpointsblu1";