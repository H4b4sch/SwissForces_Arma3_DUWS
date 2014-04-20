// Add respawned MHQ to each Zeus
while{true}do
{
	// Get the MHQ
	{
		if (format ["%1",_x getVariable "BTC_mobile_west"] == "MHQ_Alpha" && Alive _x) then
		{	
			_obj = _x;
			{
				_x addCuratorEditableObjects [[_obj],true];
				_x addCuratorEditingArea [1,getpos _obj,20];
			}forEach Array_Zeus;
		};
	} foreach vehicles;

	// Only do this ever 5 seconds
	sleep 5;
}