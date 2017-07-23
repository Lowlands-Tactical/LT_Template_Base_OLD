disableSerialization;
_display = findDisplay (_this select 0);

switch _display do {
  // defense module
  case (findDisplay 19999): {
    _logic = _display getVariable "LT_GUI_ObjectPlaced";
    _veh = _display getVariable "LT_GUI_MouseOver";
    _areaSize = ctrlText 1400;
    _faction = lbCurSel 2100;
    _waves = ctrlText 1401;
    _infyAmnt = ctrlText 1402;
    _lightVehAmnt = ctrlText 1403;
    _mechAmnt = ctrlText 1404;
    _armorAmnt = ctrlText 1405;
    _heliAmnt = ctrlText 1406;
    _wavetime = ctrlText 1407;
    _behaviour = lbCurSel 2101;
    _speed = lbCurSel 2102;
    _formation = lbCurSel 2103;

    // todo: setvariables to _logic object and then start function defense module.

    closeDialog 19999;
  };

  // set vehicle gear
  case (findDisplay 19998): {
    _sideArray = ["WEST","EAST","Independant"];
    _roleArray = ["v_car","v_ifv","v_tr","crate_small","crate_med","crate_large","empty"];
    _side = _sideArray select (lbCurSel 2100);
    _role = _roleArray select (lbCurSel 2101);

    _logic = _display getVariable "LT_GUI_ObjectPlaced";
    _mo = _display getVariable "LT_GUI_MouseOver";
    if (_mo select 0 == "OBJECT") then {
      _veh = _mo select 1;
      [_veh, _role, _side] remoteExec ['LT_fnc_SetVehicleGear', 2, false];
    } else {
            systemChat "Drag the module over an object that is editable and has inventory.";
    };

    deleteVehicle _logic;
    closeDialog 19998;
  };

  // supplydrop
  case (findDisplay 19997): {
    _sideArray = ["WEST","EAST","Independant"];
    _side = _sideArray select (lbCurSel 2100);

    _logic = _display getVariable "LT_GUI_ObjectPlaced";
    _pos = getpos _logic;

    [_side,_pos] remoteExec ['LT_fnc_SupplyDrop',2,false];

    deleteVehicle _logic;
    closeDialog 19997;
  };
};
