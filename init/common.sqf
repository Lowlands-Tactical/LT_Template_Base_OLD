// Stuff common to all our missions!

// Because we don't want to black out in airplanes
player setVariable ["ACE_GForceCoef", 0];

// Because we want to commit suicide
murshun_easywayout_canSuicide = true;

// Because we want to start with the weapon lowered
if (vehicle player == player) then {player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";};

// Start with Earbuds in
player setVariable ["ACE_hasEarPlugsIn", true, true];

// Disable saving ever.
enableSaving [false, false];

// Fuck you
enableSentences false;

// Player fatigue (set via params)
if ("lt_fatigue_onoff" call BIS_fnc_getParamValue == 0) then {player enableFatigue false};

// Disable STHUD Occlusion
STUI_Occlusion = false;

// Disable infested rabbits and birds, allow sounds.
enableEnvironment [false, true];

if (isServer) then {

	_vehicleArray = vehicles;

	{
	  _vehRole = _x getVariable ["LT_vehicle_role",nil];
		_vehSide = _x getVariable ["LT_vehicle_side", "WEST"];
	  if !(isNil "_vehRole") then {
			LT_vehGear = [_x, _vehRole, _vehSide] call LT_fnc_setVehicleGear;
			waitUntil {LT_vehGear};
	  };
	} foreach _vehicleArray;

};

lt_safe_starten = [] execVM "\lt_template_base\functions\f\safeStart\f_safeStart.sqf";
