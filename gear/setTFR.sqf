_lt_camo_var_array = call compile lt_camo_var;

_constraint 	= _lt_camo_var_array  select 0;
_pack	= _lt_camo_var_array select 2;
//_tfrpack 	= _lt_camo_var_array select 4;

// Only execute this when we want it to run.

if (lt_tfr_var == "1") then {
  tf_no_auto_long_range_radio = true;

  _roles = ["co","dc","ftl"];
  _role = player getVariable "lt_unit_role";

  // diag_log format["TFR is on with the role: %1",_role];

  if (_constraint != "None" and _role in _roles) then {

      // null = [player, _tfrpack] call lt_fnc_changeBackpack;
      player addItemToVest "ACRE_PRC152";

  } else {
    // Give at least something...
    if ( _role in _roles ) then {
      // null = [player,"tf_rt1523g_green"] call lt_fnc_changeBackpack;
      player addItemToVest "ACRE_PRC152";
    };

  };

};
