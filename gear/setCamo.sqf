_lt_camo_var_array = call compile lt_camo_var;

diag_log format ["LT template DEBUG: lt_camo_var: %1", lt_camo_var];

_camo	= _lt_camo_var_array select 0;
_vest	= _lt_camo_var_array select 1;
_pack	= _lt_camo_var_array select 2;
_helm	= _lt_camo_var_array select 3;

if (_camo != "None" and player getVariable ["LT_camo_exclude", 0] == 0) then {

//diag_log format ["LT Template DEBUG: camo: %1 - vest: %2 - pack: %3 - helm: %4", _camo, _vest, _pack, _helm];
//diag_log format ["LT Template DEBUG: variable: %1", player getVariable ["LT_camo_exclude", 0]];

	diag_log format ["LT Template DEBUG: is none: %1 unit is excluded %2", _camo == "None", player getVariable ["LT_camo_exclude", 0] == 0];
	[player, _camo] call lt_fnc_changeUniform;
	[player, _vest] call lt_fnc_changeVest;
	[player, _pack] call lt_fnc_changeBackpack;
	removeHeadgear player;
	player addHeadgear _helm;

};
