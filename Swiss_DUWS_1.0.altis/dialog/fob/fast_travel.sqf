if (!enable_fast_travel) exitWith {hint "Fast travel is disabled"};

if (commandpointsblu1<2) exitWith  
{
  ["info",["Not enough command points","Not enough Command Points (2CP required)"]] call bis_fnc_showNotification;
};
commandpointsblu1 = commandpointsblu1 - 2;


//// CREATE THE ARRAY OF FOBS w/ POSITION
_array_of_fobs_list = [];  // init the array of fobs
_list = [];


_index = -1;
{
_array_of_fobs_list = _array_of_fobs_list + [[getpos _x]]; // add the FOB (pos) into a nested array

_index = _index + 1; 
_array_of_fobs_list_selected = _array_of_fobs_list select _index; // select the current array inside _array_of_fobs_list

_actual_fobname = Array_of_FOBname select _index;
_array_of_fobs_list_selected = _array_of_fobs_list_selected + [_actual_fobname];

_list = _list + [_array_of_fobs_list_selected];
} forEach Array_of_FOBS;
//// CREATE THE ARRAY OF FOBS w/ POSITION -- END
// add the base
_hqpos = getpos hq_blu1;
_list = _list + [[_hqpos,"Main base"]];
_index = lbCurSel 2100;


_selected_fob = _list select _index;
_selected_fob_pos =  _selected_fob select 0;
_selected_fob_name = _selected_fob select 1;

 player setpos _selected_fob_pos;
_newpos = [(getpos player select 0)-15, (getpos player select 1)-4];

{_x setpos (_newpos)} forEach units group player;
//{_x setpos (selected_fob_pos)} forEach units group player;


closedialog 0;

hint "Fast travel done";