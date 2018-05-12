// Default TFR Settings.

diag_log "LT template DEBUG: Radio Settings loading";

if (lt_tfr_var == "1") then {
  _status = [true, true] call acre_api_fnc_setupMission;
  ACRE_TEST_OCCLUSION = false;
};

diag_log "LT template DEBUG: Radio Settings loaded";
