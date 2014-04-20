// This Script creates the zeus zones around FOBs

// Starting with index 2 because 0 is HQ
_i = 1;

while{true}do
{
	// Create or update the zone per FOB
	{		
		// _i is the Index
		zeus1 addCuratorEditingArea [_i,getpos _x,50];
		zeus2 addCuratorEditingArea [_i,getpos _x,50];
		zeus3 addCuratorEditingArea [_i,getpos _x,50];
		zeus4 addCuratorEditingArea [_i,getpos _x,50];
		zeus5 addCuratorEditingArea [_i,getpos _x,50];
		_i=_i+1;
	}forEach Array_of_FOBS;
	
	// Set back the index
	_i = 1;
	
	// Only do this every 5 seconds
	sleep 5;
}