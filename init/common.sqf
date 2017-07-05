// Stuff common to all our missions!

// Because we want to start with the weapon lowered
if (vehicle player == player) then {player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";};

// Disable saving ever.
enableSaving [false, false];

// Fuck you
enableSentences false;

// Player fatigue (set via params)
if ("lt_fatigue_onoff" call BIS_fnc_getParamValue == 0) then {player enableFatigue false};

// Disable infested rabbits and birds, allow sounds.
enableEnvironment [false, true];

lt_safe_starten = [] execVM "\lt_template_base\functions\f\safeStart\f_safeStart.sqf";
