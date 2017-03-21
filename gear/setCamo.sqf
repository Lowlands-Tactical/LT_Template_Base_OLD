waituntil {!isNil 'lt_camo_var'};
diag_log format ["LT template DEBUG: lt_camo_var: %1", lt_camo_var];

_lt_camo_var_array = call compile lt_camo_var;
_exclude = player getVariable ["LT_camo_exclude", 0];

diag_log format ["LT template DEBUG: lt_camo_var compiled: %1", _lt_camo_var_array];

_camo	= _lt_camo_var_array select 0;
_vest	= _lt_camo_var_array select 1;
_pack	= _lt_camo_var_array select 2;
_helm	= _lt_camo_var_array select 3;

diag_log format ["LT template DEBUG: lt_camo_var: %1", lt_camo_var];

diag_log format ["LT Template DEBUG: Exclude: %1", _exclude];

if (_camo != "None" and _exclude == 0) then {

	diag_log format ["LT Template DEBUG: Camo: %1 *-* Vest: %2 *-* Pack: %3 *-* Helm: %4", _camo, _vest, _pack, _helm];

	diag_log format ["LT Template DEBUG: _camo: %1 *-* _exclude: %2", _camo, _exclude];
	_CamoUniform 	= if (typename _camo == "STRING") then {[player, _camo] call lt_fnc_changeUniform;} else {[player, [selectRandom _camo]] call lt_fnc_changeUniform;};
	_CamoVest 		=  if (typename _vest == "STRING") then {[player, _vest] call lt_fnc_changeVest;} else {[player, [selectRandom _vest]] call lt_fnc_changeVest;};
	_CamoBackpack = if (typename _pack == "STRING") then {[player, _pack] call lt_fnc_changeBackpack} else {[player, [selectRandom _pack]] call lt_fnc_changeBackpack;};
	removeHeadgear player;
	if (typename _helm == "STRING") then {player addHeadgear _helm;} else {player addHeadgear [selectRandom _helm];};

	diag_log format ["LT Template DEBUG: Camo functions have been finished. Uniform: %1 *-* Vest: %2 *-* Backpack: %3", _CamoUniform,_CamoVest,_CamoBackpack];
};
