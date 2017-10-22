if (hasInterface) then {
	_lt_camo_var_array = switch (side player) do {
		case WEST: {call compile lt_camo_var};
		case EAST: {if (isNil "LT_Camo_var_OPF") then {call compile lt_camo_var} else {call compile LT_Camo_var_OPF};};
		case resistance: {if (isNil "LT_Camo_var_GUER") then {call compile lt_camo_var} else {call compile LT_Camo_var_GUER};};
		case civilian: {};
	};

	_constraint 	= if (typename (_lt_camo_var_array select 0) == "ARRAY") then {selectRandom (_lt_camo_var_array select 0)} else {_lt_camo_var_array select 0};
	// _pack	= _lt_camo_var_array select 2;
	_tfrpack 	= _lt_camo_var_array select 4;

	// Only execute this when we want it to run.

	diag_log format["LT template DEBUG: lt_tfr_var == %1",lt_tfr_var];

	_roles = ["co","dc","ftl"];
	_role = player getVariable ["lt_unit_role","none"];

	diag_log format["TFR is on with the role: %1",_role];

	switch (lt_tfr_var) do {

		case "0": {
		 	if ( _role in _roles ) then {
				null = [player,"tf_rt1523g_green"] call lt_fnc_changeBackpack;
			};
		};

		case "1": {
		  tf_no_auto_long_range_radio = true;
		  publicVariable "tf_no_auto_long_range_radio";

		  if (_constraint != "None" and _role in _roles) then {
			  null = if (typename _tfrpack == "ARRAY")then {[player, selectRandom _tfrpack] call lt_fnc_changeBackpack} else {[player, _tfrpack] call lt_fnc_changeBackpack;};
			  // player addItemToVest "ACRE_PRC152";
			};
		};

		// No Radio
		case "2": {
			tf_no_auto_long_range_radio = true;
			TF_give_personal_radio_to_regular_soldier = false;
			TF_give_microdagr_to_soldier = false;
			// player setVariable ["tf_unable_to_use_radio", true];
			// _radio = call TFAR_fnc_activeLRRadio;
			waitUntil { count (player call TFAR_fnc_radiosList) >= 1 };
			_radio = call TFAR_fnc_activeSwRadio;
			diag_log format["Radio: %1",_radio];
			player unassignItem _radio;
			player removeItem _radio;
		};

		// Leaders LR Only
		case "3": {
			tf_no_auto_long_range_radio = true;
			TF_give_personal_radio_to_regular_soldier = false;
			TF_give_microdagr_to_soldier = false;
			waitUntil { count (player call TFAR_fnc_radiosList) >= 1 };
			_radio = call TFAR_fnc_activeSwRadio;
			diag_log format["Radio: %1",_radio];
			player unassignItem _radio;
			player removeItem _radio;

			if (_constraint != "None" and _role in _roles) then {
			  null = if (typename _tfrpack == "ARRAY")then {[player, selectRandom _tfrpack] call lt_fnc_changeBackpack} else {[player, _tfrpack] call lt_fnc_changeBackpack;};
			};
		};

		// Leaders SR Only
		case "4": {
			tf_no_auto_long_range_radio = true;
			TF_give_personal_radio_to_regular_soldier = false;
			TF_give_microdagr_to_soldier = false;
			waitUntil { count (player call TFAR_fnc_radiosList) >= 1 };
			_radio = call TFAR_fnc_activeSwRadio;
			diag_log format["Radio: %1",_radio];

			if !(_role in _roles) then {
				player unassignItem _radio;
				player removeItem _radio;
			};
		};

		// Leader LR Only
		case "5": {
			_roles = ["co","dc"];

			tf_no_auto_long_range_radio = true;
			TF_give_personal_radio_to_regular_soldier = false;
			TF_give_microdagr_to_soldier = false;
			waitUntil { count (player call TFAR_fnc_radiosList) >= 1 };
			_radio = call TFAR_fnc_activeSwRadio;
			diag_log format["Radio: %1",_radio];
			player unassignItem _radio;
			player removeItem _radio;

			if (_constraint != "None" and _role in _roles) then {
			  null = if (typename _tfrpack == "ARRAY")then {[player, selectRandom _tfrpack] call lt_fnc_changeBackpack} else {[player, _tfrpack] call lt_fnc_changeBackpack;};
			};
		};

		// Leader SR Only
		case "6": {
			_roles = ["co","dc"];

			tf_no_auto_long_range_radio = true;
			TF_give_personal_radio_to_regular_soldier = false;
			TF_give_microdagr_to_soldier = false;
			waitUntil { count (player call TFAR_fnc_radiosList) >= 1 };
			_radio = call TFAR_fnc_activeSwRadio;
			diag_log format["Radio: %1",_radio];
			player unassignItem _radio;
			player removeItem _radio;

			if (_role in _roles) then {
				player addItem _radio;
				player assignItem _radio;
			};
		};

	}; // switch

}; // if (hasInterface)
