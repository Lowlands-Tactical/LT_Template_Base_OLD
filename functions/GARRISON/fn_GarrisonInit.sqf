// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = param [1,[],[[]]];
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];


if (_activated && (count _units > 0)) then {

	_Radius = _logic getVariable "Radius";
	_Stationary = _logic getVariable "Stationary";
	_CapacityChance = _logic getVariable "CapacityChance";
	_MaxInBuilding = _logic getVariable "MaxInBuilding";
	_Warping = _logic getVariable "Warping";
	_CQCAI = _logic getVariable "CQCAI";

	{
		if (_x isKindOf "Man") then {
			_nul = [_x,_Radius,_Stationary,[_CapacityChance,_MaxInBuilding],_Warping, _CQCAI] execVM "lt_template_base\AI\GARRISON\Garrison_script.sqf";
		} else {
			diag_log format ["*-* LT Template Base *-* Garrison Module: %1 is not isKindOf 'Man'.", _x];
			hint format ["Garrison Module: %1 is not isKindOf 'Man'. Please only select soldiers.", _x];
		};
	} foreach _units;

};

true
