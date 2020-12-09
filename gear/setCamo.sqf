waituntil {!isNil 'lt_camo_var'};

if (hasInterface) then {

	_lt_camo_var_array = switch (side player) do {
		case WEST: {call compile lt_camo_var};
		case EAST: {if (isNil "LT_Camo_var_OPF") then {call compile lt_camo_var} else {call compile LT_Camo_var_OPF};};
		case resistance: {if (isNil "LT_Camo_var_GUER") then {call compile lt_camo_var} else {call compile LT_Camo_var_GUER};};
		case civilian: {};
		default {call compile lt_camo_var};
	};
	_exclude = player getVariable ["LT_camo_exclude", 0];

	diag_log format ["LT template DEBUG: lt_camo_var compiled: %1", _lt_camo_var_array];

	_roles = ["aar","mmgag","hmgag","hmgag","hmgag","eng","engm"];
	_role = player getVariable ["lt_unit_role","none"];

	_camo	= _lt_camo_var_array select 0;
	_vest	= _lt_camo_var_array select 1;
	_pack	= _lt_camo_var_array select 2; // Smol Pack
	if (_role in _roles) then {
		_pack = _lt_camo_var_array select 5; // Big Pack
	};
	_helm	= _lt_camo_var_array select 3;

	diag_log format ["LT template DEBUG: lt_camo_var: %1", lt_camo_var];

	diag_log format ["LT Template DEBUG: Exclude: %1", _exclude];


	if (_exclude == 0) then {
	diag_log format ["LT Template DEBUG: Camo: %1 *-* Vest: %2 *-* Pack: %3 *-* Helm: %4", _camo, _vest, _pack, _helm];
		if (typename _camo == "ARRAY") then {

			diag_log format ["LT Template DEBUG: _camo: %1 *-* _exclude: %2", _camo, _exclude];
			_CamoUniform 	= if (typename _camo == "ARRAY") then {[player, selectRandom _camo] call lt_fnc_changeUniform;} else {[player, _camo] call lt_fnc_changeUniform;};
			_CamoVest 	= if (typename _vest == "ARRAY") then {[player, selectRandom _vest] call lt_fnc_changeVest;} else {[player, _vest] call lt_fnc_changeVest;};
			_CamoBackpack = if (typename _pack == "ARRAY") then {[player, selectRandom _pack] call lt_fnc_changeBackpack;} else {[player, _pack] call lt_fnc_changeBackpack;};
			removeHeadgear player;
			if (typename _helm == "ARRAY") then {player addHeadgear selectRandom _helm;} else {player addHeadGear _helm};

			diag_log format ["LT Template DEBUG: Camo functions have been finished. Uniform: %1 *-* Vest: %2 *-* Backpack: %3", _CamoUniform,_CamoVest,_CamoBackpack];
		} else {
			if (_camo != "None") then {

				diag_log format ["LT Template DEBUG: _camo: %1 *-* _exclude: %2", _camo, _exclude];
				_CamoUniform 	= if (typename _camo == "ARRAY") then {[player, selectRandom _camo] call lt_fnc_changeUniform;} else {[player, _camo] call lt_fnc_changeUniform;};
				_CamoVest 	= if (typename _vest == "ARRAY") then {[player, selectRandom _vest] call lt_fnc_changeVest;} else {[player, _vest] call lt_fnc_changeVest;};
				_CamoBackpack = if (typename _pack == "ARRAY") then {[player, selectRandom _pack] call lt_fnc_changeBackpack;} else {[player, _pack] call lt_fnc_changeBackpack;};
				removeHeadgear player;
				if (typename _helm == "ARRAY") then {player addHeadgear selectRandom _helm;} else {player addHeadGear _helm};

				diag_log format ["LT Template DEBUG: Camo functions have been finished. Uniform: %1 *-* Vest: %2 *-* Backpack: %3", _CamoUniform,_CamoVest,_CamoBackpack];
			};
		};
	};
};
