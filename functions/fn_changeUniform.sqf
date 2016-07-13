// Change the Uniform of a (local) unit.
// Example: null = [player,"nld_camo_wld"] call lt_fnc_changeUniform;

private ["_unit","_type","_uniformItems", "_linkedItems"];

_unit = _this select 0;
_type = _this select 1;

diag_log "LT template DEBUG: fnc change uniform started";

if (!local _unit) exitWith {};

  _uniformItems = uniformItems _unit;
  _linkedItems = assignedItems _unit;
  removeUniform _unit;
  _unit forceAddUniform _type;
  {
    if ( isClass (configFile >> "CFGMagazines" >> _x)) then {
    _unit addMagazine _x;
    } else {
    _unit addItem _x;
    };
  } forEach _uniformItems ;
  {_unit linkItem _x} foreach _linkedItems;
