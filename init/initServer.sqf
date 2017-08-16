publicVariable "LT_PermaDeath";

execVM "\lt_template_base\scripts\server_debug.sqf";

sleep 5;

_vehicleArray = vehicles;

{
  _vehRole = _x getVariable ["LT_vehicle_role", nil];
	_vehSide = _x getVariable ["LT_vehicle_side", "WEST"];
  if !(isNil "_vehRole") then {
		LT_vehGear = [_x, _vehRole, _vehSide] call LT_fnc_setVehicleGear;
		waitUntil {LT_vehGear};
  };
} foreach _vehicleArray;

lt_safe_starten = [] execVM "\lt_template_base\functions\f\safeStart\f_safeStart.sqf";
