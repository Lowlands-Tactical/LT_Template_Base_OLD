publicVariable "LT_PermaDeath";

_vehicleArray = vehicles;

{
  _vehRole = _x getVariable ["LT_vehicle_role",nil];
  if !(isNil "_vehRole") then {
    [_x, _vehRole] call LT_fnc_setVehicleGear;
  };
} foreach _vehicleArray;
