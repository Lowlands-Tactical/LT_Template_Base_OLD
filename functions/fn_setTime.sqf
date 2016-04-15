// RUN ONLY ON THE SERVER
// This function does never need to run on a client
if !(isServer) exitWith {};

// DECLARE VARIABLES AND FUNCTIONS

private ["_timeOfDay","_date","_now"];

// ====================================================================================

// SET KEY VARIABLES
// We interpret the values parsed to the script. If the function was called from the parameters those values are used.

_timeOfDay = _this select 0;

// Exit when using mission settings
if ( _timeOfDay == 25 ) exitWith {};

// ====================================================================================

_date = date;
_date set [3,_timeOfDay];

// ====================================================================================

// SET DATE FOR ALL CLIENTS
// Using a BIS function we share the new date across the network
[_date,true,false] call BIS_fnc_setDate;

// ====================================================================================
