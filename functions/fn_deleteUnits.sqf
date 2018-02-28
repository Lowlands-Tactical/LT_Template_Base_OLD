// Nuke shit

// Turn the group into a variable.
_grp = _this select 0;

diag_log format["Deleting Group: %1",_grp];

_grp deleteGroupWhenEmpty true;

// Loop through all the units in the group
{
  // Delete any vehicle the units are in.
  deleteVehicle (vehicle _x);

  // Delete the units itself.
  deleteVehicle _x;

} forEach (units _grp);

// deleteGroup _grp;
