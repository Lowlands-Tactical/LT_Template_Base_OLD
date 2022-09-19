// Default TFR Settings.

diag_log "LT template DEBUG: Radio Settings loading";

// sets up player radio upon mission load
[true,true] remoteExec ["acre_api_fnc_setupMission",allPlayers];
ACRE_TEST_OCCLUSION = false;

diag_log "LT template DEBUG: Radio Settings loaded";
