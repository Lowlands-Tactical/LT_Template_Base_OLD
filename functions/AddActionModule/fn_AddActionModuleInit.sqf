// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = param [1,[],[[]]];
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];


// Module specific behavior. Function can extract arguments from logic and use them.
if (_activated) then {

	_title = _logic getVariable "LT_AddActionTitle";
	_script = _logic getVariable "LT_AddActionScript";
	_args = _logic getVariable "LT_AddActionArguments";
	_locality = _logic getVariable "LT_AddActionLocality";
	_side = _logic getVariable "LT_AddActionAddTo";
	_remove = _logic getVariable "LT_AddActionRemove";
	_handle = _logic getVariable "LT_AddActionHandle";
	_priority = _logic getVariable "LT_AddActionPriority";
	_showWindow = _logic getVariable "LT_AddActionShowWindow";
	_hideOnUse = _logic getVariable "LT_AddActionHideOnUse";
	_shortCut = _logic getVariable "LT_AddActionShortCut";
	_condition = _logic getVariable "LT_AddACtionCondition";
	_radius = _logic getVariable "LT_AddActionRadius";
	_unconscious = _logic getVariable "LT_AddActionUnconscious";
	_selection = _logic getVariable "LT_AddActionSelection";

	diag_log format ["-=AddAction Name player %1", name player];

	switch (_side) do {
		case "0": {
			{
				_action = _x addAction [_title, {_this call LT_fnc_HandleAction}, ["Init", _script, _locality, _remove, _args, _handle], _priority,_showWindow,_hideOnUse,_shortCut,_condition,_radius,_unconscious,_selection];
			} forEach _units;
		};
		case "player": {
			_action = player addAction [_title, {_this call LT_fnc_HandleAction}, ["Init", _script, _locality, _remove, _args, _handle], _priority,_showWindow,_hideOnUse,_shortCut,_condition,_radius,_unconscious,_selection];
		};
		default {
			_selSide = if (_side != "0") then {call compile _side};
			if (side player == _selSide) then {
				{
					_action = _x addAction [_title, {_this call LT_fnc_HandleAction}, ["Init", _script, _locality, _remove, _args, _handle], _priority,_showWindow,_hideOnUse,_shortCut,_condition,_radius,_unconscious,_selection];
				} forEach _units;
			};
		};
	};
};
true
