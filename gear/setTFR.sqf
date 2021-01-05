if (hasInterface) then {
	_lt_camo_var_array = switch (side player) do {
		case WEST: {call compile lt_camo_var};
		case EAST: {if (isNil "LT_Camo_var_OPF") then {call compile lt_camo_var} else {call compile LT_Camo_var_OPF};};
		case resistance: {if (isNil "LT_Camo_var_GUER") then {call compile lt_camo_var} else {call compile LT_Camo_var_GUER};};
		case civilian: {};
	};

	_constraint 	= if (typename (_lt_camo_var_array select 0) == "ARRAY") then {selectRandom (_lt_camo_var_array select 0)} else {_lt_camo_var_array select 0};
	_radioBag 	= _lt_camo_var_array select 4;

	// Only execute this when we want it to run.
	diag_log format["LT template DEBUG: lt_camo_var == %1",lt_camo_var];
	diag_log format["LT template DEBUG: _lt_camo_var_array == %1",_lt_camo_var_array];
	diag_log format["LT template DEBUG: lt_tfr_var == %1",lt_tfr_var];

	_roles = ["radio","vr","jtac","smarineSergeant"];
	_role = player getVariable ["lt_unit_role","none"];

	diag_log format["TFR is on with the role: %1",_role];
	diag_log format["TFR is on with the camo_array: %1",_lt_camo_var_array];
	diag_log format["TFR is on with the tfrpack: %1",_radioBag];

  // FUCKN WAIT OR ELSE NO WORKY
  waitUntil { ([] call acre_api_fnc_isInitialized) };
  sleep 10;

	switch (lt_tfr_var) do {

		/* case "0": {
		 	if ( _role in _roles ) then {
				null = [player,_pack] call lt_fnc_changeBackpack;
			};
		}; */

		case "1": {
		  tf_no_auto_long_range_radio = true;
		  publicVariable "tf_no_auto_long_range_radio";

		  if (_constraint != "None" and _role in _roles) then {
				if (_role != "smarineSergeant") then {
        	null = if (typename _radioBag == "ARRAY")then {[player, selectRandom _radioBag] call lt_fnc_changeBackpack} else {[player, _radioBag] call lt_fnc_changeBackpack;};
				};
				(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC152",1];
			};
		};

		// No Radio
		case "2": {
			waitUntil { count ([] call acre_api_fnc_getCurrentRadioList) >= 1 };
      {
        _radio = _x;
        diag_log format["Deleting Radio: %1",_radio];
  			player removeItem _radio;
      } forEach ([] call acre_api_fnc_getCurrentRadioList);
		};

		// Leaders LR Only
		case "3": {
      waitUntil { count ([] call acre_api_fnc_getCurrentRadioList) >= 1 };
      {
        _radio = _x;
        diag_log format["Deleting Radio: %1",_radio];
  			player removeItem _radio;
      } forEach ([] call acre_api_fnc_getCurrentRadioList);

			if (_constraint != "None" and _role in _roles) then {
				if (_role != "smarineSergeant") then {
        	null = if (typename _radioBag == "ARRAY")then {[player, selectRandom _radioBag] call lt_fnc_changeBackpack} else {[player, _radioBag] call lt_fnc_changeBackpack;};
				};
				(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC152",1];
			};
		};

		// Leaders SR Only
		case "4": {
      waitUntil { count ([] call acre_api_fnc_getCurrentRadioList) >= 1 };
      {
        _radio = _x;
        diag_log format["Deleting Radio: %1",_radio];
  			player removeItem _radio;
      } forEach ([] call acre_api_fnc_getCurrentRadioList);

			if (_role in _roles) then {
				player addItem "ACRE_PRC343";
			};
		};

		// Leader LR Only
		case "5": {
      waitUntil { count ([] call acre_api_fnc_getCurrentRadioList) >= 1 };
      {
        _radio = _x;
        diag_log format["Deleting Radio: %1",_radio];
  			player removeItem _radio;
      } forEach ([] call acre_api_fnc_getCurrentRadioList);

			if (_constraint != "None" and _role in _roles) then {
				if (_role != "smarineSergeant") then {
        	null = if (typename _radioBag == "ARRAY")then {[player, selectRandom _radioBag] call lt_fnc_changeBackpack} else {[player, _radioBag] call lt_fnc_changeBackpack;};
				};
				(unitBackpack _unit) addItemCargoGlobal ["ACRE_PRC152",1];
			};
		};

		// Leader SR Only
		case "6": {
      waitUntil { count ([] call acre_api_fnc_getCurrentRadioList) >= 1 };
      {
        _radio = _x;
        diag_log format["Deleting Radio: %1",_radio];
  			player removeItem _radio;
      } forEach ([] call acre_api_fnc_getCurrentRadioList);

			if (_role in _roles) then {
				player addItem "ACRE_PRC343";
			};
		};

	}; // switch

}; // if (hasInterface)
