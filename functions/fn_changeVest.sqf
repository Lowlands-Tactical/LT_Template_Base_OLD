// Change the Vest of a (local) unit.
// Example: null = [player,"nld_vest_wld"] call lt_fnc_changeVest;

private ["_unit","_type","_vestItems"];

_unit = _this select 0;
_type = _this select 1;

diag_log "*-* test *-* fnc change vest started";

if (!local _unit) exitWith {};

  _vestItems = VestItems _unit;
  removeVest _unit;
  _unit addVest _type;
  {
    if ( isClass (configFile >> "CFGMagazines" >> _x)) then {
    _unit addMagazine _x;
    } else {
    _unit addItem _x;
    };
  } forEach _vestItems;
