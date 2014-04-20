// Variables
_commandPoints = 0;
_Array_Zeus_Points = [];
_actualCommandPoints = 0,

while{true}do
{
	// Firstly we change the CommandPoints by changes in each Zeus
	// Means if Zeus1 loses 10 Points and Zeus2 gets 20 Points, the commandpoints will be first reduced by 10 and then incremented by 20
	_i = 0;
	{
		// Getting the points of this cycle
		_actualZeusPoints = curatorPoints _x;
		_lastZeusPoints =  _Array_Zeus_Points select _i;
		
		// If the ZeusPoints changed since the last cycle, the commandpoints need to be changed
		if(_actualZeusPoints < _lastZeusPoints || _actualZeusPoints > _lastZeusPoints)then
		{
			_actualCommandPoints = commandpointsblu1/1000;
			_difference = _actualZeusPoints - _actualCommandPoints;
			_difference = _difference*1000;
			commandpointsblu1 = commandpointsblu1 + _difference;
			ctrlSetText [1000, format["%1",commandpointsblu1]];
			
		};
		//hint format["CP %1 :: i %2 :: ZP %3 :: Last ZP %4",commandpointsblu1, _i, _actualZeusPoints, _lastZeusPoints];
		sleep 2;
		_i = _i + 1;
	} forEach Array_Zeus;
	
	
	// Reset the array for the points here
	_Array_Zeus_Points = [];
	
	
	// After the setting of the commandpoints all zeus get synchronised to it
	{
		_commandPoints = commandpointsblu1/1000;
		_zeusPointsBefore = curatorPoints _x;
		_zeusPointsBefore = _zeusPointsBefore*-1;
		_x addCuratorPoints _zeusPointsBefore;
		_x addCuratorPoints _commandPoints;
		//hint format["%1",curatorPoints _x];
		
		// Also the zeus-points for next cycle are set
		_Array_Zeus_Points = _Array_Zeus_Points + [curatorPoints _x];
		
		//hint format["CP %1 :: ZP %2",commandpointsblu1, curatorPoints _x];
		sleep 3;
		
	} forEach Array_Zeus;
	
	// Only do this every second
	sleep 1;
}