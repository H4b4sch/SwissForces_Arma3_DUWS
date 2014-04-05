waitUntil {!isNull player};
waitUntil {player == player};
#include "=BTC=_functions.sqf"
BTC_action_cargo   = false;
BTC_l_dragging     = false;
BTC_l_actions_cond = true;

_sel   = player addaction [("<t color=""#00FF00"">") + ("Select") + "</t>",BTC_dir_action,[[],BTC_l_select],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_cargo, 5]) > 0"];
_drag  = player addaction [("<t color=""#00FF00"">") + ("Drag") + "</t>",BTC_dir_action,[[],BTC_l_drag],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
_plac  = player addaction [("<t color=""#00FF00"">") + ("Place") + "</t>",BTC_dir_action,[[],BTC_l_placement],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_placement, 5]) > 0"];
_eh = player addEventHandler ["respawn", 
{
	_actions = [] spawn 
	{
		waitUntil {Alive player};
		BTC_action_cargo   = false;
		BTC_l_dragging     = false;
		BTC_l_actions_cond = true;
		_sel   = player addaction [("<t color=""#00FF00"">") + ("Select") + "</t>",BTC_dir_action,[[],BTC_l_select],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_cargo, 5]) > 0"];
		_drag  = player addaction [("<t color=""#00FF00"">") + ("Drag") + "</t>",BTC_dir_action,[[],BTC_l_drag],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
		_plac  = player addaction [("<t color=""#00FF00"">") + ("Place") + "</t>",BTC_dir_action,[[],BTC_l_placement],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_placement, 5]) > 0"];
	};
}];