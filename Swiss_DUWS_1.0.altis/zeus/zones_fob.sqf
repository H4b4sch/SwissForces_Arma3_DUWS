// This Script creates the zeus zones around FOBs

// Starting with index 2 because 0 is HQ and 1 is MHQ
_i = 2;

while{true}do
{
	// Create or update the zone per FOB
	{		
		_fob = _x;
		
		{
			// _i is the Index
			_x addCuratorEditingArea [_i,getpos _fob,50];
		} forEach Array_Zeus;
		
		_i=_i+1;
	}forEach Array_of_FOBS;
	
	// Set back the index
	_i = 2;
	
	// Only do this every 5 seconds
	sleep 5;
}