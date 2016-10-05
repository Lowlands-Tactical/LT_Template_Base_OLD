// Change the Vest of a (local) unit.
// Example: null = [player,"nld_vest_wld"] call lt_fnc_changeVest;

private ["_unit","_type","_vestItems"];

_unit = _this select 0;
_type = _this select 1;

diag_log "LT template DEBUG: fnc_changeVest started";
_oldVest = vest _unit;
diag_log format ["LT template DEBUG: fnc_changeVest old vest: %1", (vest _unit)];

  diag_log format ["LT template DEBUG: fnc_changeVest unit is local: %1", (!local _unit)];

if (!local _unit) exitWith {};

  diag_log format ["LT template DEBUG: fnc_changeVest class: %1", _type];

  _vestItems = VestItems _unit;
  removeVest _unit;

  diag_log format ["LT template DEBUG: fnc_changeVest VestItems: %1", _vestItems];

  _unit addVest _type;
_newVest = vest _unit;

  diag_log format ["LT template DEBUG: fnc_changeVest new vest: %1", (vest _unit)];
  {
    if ( isClass (configFile >> "CFGMagazines" >> _x)) then {
    _unit addMagazine _x;
    } else {
    _unit addItem _x;
    };
  } forEach _vestItems;

  if (_oldVest != _newVest) exitwith {true};
  if (_oldVest == _newVest) exitwith {false};
