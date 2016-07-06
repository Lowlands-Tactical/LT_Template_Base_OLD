// Change the backpack of a (local) unit.
// Example: null = [player,"lt_tfr_dst"] call lt_fnc_changeBackpack;

private ["_unit","_type","_UniformItems", "_LinkedItems"];

_unit = _this select 0;
_type = _this select 1;

if (!local _unit) exitWith {};

  _UniformItems = uniformItems _unit;
  _LinkedItems = assignedItems _unit;
  removeUniform _unit;
  _unit forceAddUniform _type;
  {
    if ( isClass (configFile >> "CFGMagazines" >> _x)) then {
    _unit addMagazine _x;
    } else {
    _unit addItem _x;
    };
  } forEach _UniformItems ;
  {_unit linkItem _x} foreach _LinkedItems;
