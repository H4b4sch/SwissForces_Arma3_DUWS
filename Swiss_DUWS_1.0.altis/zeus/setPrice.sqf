// This Event-Handler sets which objects can be placed and how much they cost
zeus1 addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost = [false,0];
			_class = _x;
			
			{
				if(_class == _x select 0) then
				{
					_zeusPrice = (_x select 1)/1000;
					_cost = [true,_zeusPrice];
				};
			}forEach Array_Zeus_Objects;
			
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
			_class = _x;
			
			{
				if(_class == _x select 0) then
				{
					_zeusPrice = _x select 1 / 1000;
					_cost = [true,_zeusPrice];
				};
			}forEach Array_Zeus_Objects;
			
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
			_class = _x;
			
			{
				if(_class == _x select 0) then
				{
					_zeusPrice = _x select 1 / 1000;
					_cost = [true,_zeusPrice];
				};
			}forEach Array_Zeus_Objects;
			
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
			_class = _x;
			
			{
				if(_class == _x select 0) then
				{
					_zeusPrice = _x select 1 / 1000;
					_cost = [true,_zeusPrice];
				};
			}forEach Array_Zeus_Objects;
			
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
			_class = _x;
			
			{
				if(_class == _x select 0) then
				{
					_zeusPrice = _x select 1 / 1000;
					_cost = [true,_zeusPrice];
				};
			}forEach Array_Zeus_Objects;
			
			_costs = _costs + [_cost];
			
		} forEach _classes; // Go through all classes and assign cost for each of them
		_costs
	}
];