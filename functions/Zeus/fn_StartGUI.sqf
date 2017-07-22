_logic = param [0,objNull,[objNull]];
_units = param [1,[],[[]]];
_activated = param [2,true,[true]];

_type = typeOf _logic;

switch _type do {
  case "LT_Defense_Module_Zeus": {
    disableSerialization;
    _disp = createDialog "RscZeusModuleDefense";
    _dg = (findDisplay 19999);
    _dg setVariable ["LT_GUI_ObjectPlaced", _logic];
    _dg setVariable ["LT_GUI_MouseOver", curatorMouseOver];
  };
  case "LT_SetVehicleGear": {
    disableSerialization;
    // if object then go.
    if (curatorMouseOver select 0 == "OBJECT") then {
      _disp = createdialog "RscZeusModuleSetVehicleGear";
      _dg = (findDisplay 19998);
      _dg setVariable ["LT_GUI_ObjectPlaced", _logic];
      _dg setVariable ["LT_GUI_MouseOver", curatorMouseOver];
    };
  };
  case "LT_SupplyDropZeus": {
    disableSerialization;
    _disp = createDialog "RscZeusModuleSupplyDrop";
    _dg = finddisplay 19997;
    _dg setVariable ["LT_GUI_ObjectPlaced", _logic];
  }
};

true
