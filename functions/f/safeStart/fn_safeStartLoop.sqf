// F3 - Safe Start, Server Loop
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
//=====================================================================================

// Run the loop only on the server
if !(isServer) exitWith {};

// Redundant sleep to give everything a second to settle
sleep 2;

while {lt_param_timer > 0} do {

	// Broadcast remaining time to players
	[["SafeStart",[format["Time Remaining: %1 min",lt_param_timer]]],"bis_fnc_showNotification",true] call BIS_fnc_MP;

	uisleep 60; // Sleep 60 seconds

	// If mission timer has been terminated by admin briefing, simply exit
	if (lt_param_timer < 0) exitWith {};

	// Reduce the mission timer by one
	lt_param_timer = lt_param_timer - 1;
	publicVariable "lt_param_timer";
};

//Once the mission timer has reached 0, disable the safeties
if (lt_param_timer == 0) then {
		// Broadcast message to players
		[["SafeStartMissionStarting",["Mission starting now!"]],"bis_fnc_showNotification",true] call BIS_fnc_MP;

		// Remotely execute script to disable safety for all selectable units
		[[false],"f_fnc_safety",playableUnits + switchableUnits] call BIS_fnc_MP;
};