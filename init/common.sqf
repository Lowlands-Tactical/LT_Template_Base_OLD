// Stuff common to all our missions!

// Because we want to start with the weapon lowered
if (hasInterface) then {
	if (vehicle player == player) then {player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";};

	// On every respawn add this option.
	waitUntil {!isNull player};
	uiSleep 5;
	player addaction ["<t color='#FF0000'>Parachute</t>", "\lt_template_base\scripts\paradrop.sqf", "", 1, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 100) && (player != driver (vehicle player))"];
	
	// Give pretty colour, or white when non-exist
	// this setVariable ["lt_unit_color", "RED", true];
	// player assignTeam (player getVariable ["lt_unit_color","MAIN"]);
};

// Disable saving ever.
enableSaving [false, false];

// Fuck you
enableSentences false;

// Player fatigue (set via params)
if ("lt_fatigue_onoff" call BIS_fnc_getParamValue == 0) then {player enableFatigue false};

// Disable infested rabbits and birds, allow sounds.
enableEnvironment [false, true];

lt_safe_starten = [] execVM "\lt_template_base\functions\f\safeStart\f_safeStart.sqf";
