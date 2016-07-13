// Change the backpack of a (local) unit.
// Example: null = [player,"lt_tfr_dst"] call lt_fnc_changeBackpack;

private ["_unit","_type","_backpackItems"];

_unit = _this select 0;
_type = _this select 1;

diag_log "LT template DEBUG: fnc change backpack started";

if (!local _unit) exitWith {};

_backpackItems = backpackItems _unit;
removeBackpack _unit;
_unit addBackpack _type;
{_unit addItemToBackpack _x;} forEach _backpackItems;
