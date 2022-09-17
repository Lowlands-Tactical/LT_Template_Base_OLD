// F3 - Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
//	This script inits the Mission Timer and the Safe Start, has the server setup the publicVariable
//      while the client waits, sets units invincibility and displays hints, then disables it.

//Setup the variables
if (isNil "lt_param_timer") then {
	lt_param_timer = ["lt_param_timer",0] call BIS_fnc_getParamValue;
};

// ====================================================================================

// BEGIN SAFE-START LOOP
// If a value was set for the mission-timer, begin the safe-start loop and turn on invincibility

if (lt_param_timer > 0) then
{
    // The server will handle the loop and notifications
    if (isServer) then {
        [] remoteExec ["LT_fnc_safeStartLoop"];
    };

    // Enable invincibility for players
    if (!isDedicated) then {
        [true] remoteExec ["LT_fnc_safety",allPlayers];
    };
}; 
