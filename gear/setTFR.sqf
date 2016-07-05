// Only execute this when we want it to run.
if (lt_tfr_var == "1") then {
  tf_no_auto_long_range_radio = true;

  _roles = ["co","dc","ftl"];
  _role = player getVariable "lt_unit_role";

  // diag_log format["TFR is on with the role: %1",_role];

  if (lt_camo_var != "None") then {

    _dst = ["DST","UND","NFPT"];
    _wdl = ["WLD","UN","NFPG","WTR","JGL","SF","SFMTP","KM"];

    if ( lt_camo_var in _dst ) then {
      null = [player,"lt_tfr_dst"] call lt_fnc_changeBackpack;
    };

    if ( lt_camo_var in _wdl ) then {
      null = [player,"lt_tfr_wdl"] call lt_fnc_changeBackpack;
    };

  } else {
    // Give at least something...
    if ( _role in _roles ) then {
      null = [player,"tf_rt1523g_green"] call lt_fnc_changeBackpack;
    };

  };

};
