// Change the backpack of a (local) unit.
// Example: null = [player,"lt_tfr_dst"] call lt_fnc_changeBackpack;

private ["_unit","_type","_backpackItems"];

_unit = _this select 0;
_type = _this select 1;

diag_log "LT template DEBUG: fnc_changeBackpack started";
_oldPack = backpack _unit;
diag_log format ["LT template DEBUG: fnc_changeBackpack old backpack: %1", (backpack _unit)];

diag_log format ["LT template DEBUG: fnc_changeBackpack unit is local: %1", (!local _unit)];

if (!local _unit) exitWith {};

diag_log format ["LT template DEBUG: fnc_changeBackpack class: %1", _type];

_backpackItems = backpackItems _unit;
removeBackpack _unit;

diag_log format ["LT template DEBUG: fnc_changeBackpack BackpackItems: %1", _backpackItems];

_unit addBackpack _type;

_newPack = backpack _unit;

diag_log format ["LT template DEBUG: fnc_changeBackpack new backpack: %1", (BACKPACK _unit)];

{(unitBackpack _unit) addItemCargoGlobal [_x,1];} forEach _backpackItems;

if (_oldPack != _newPack) exitwith {true};
if (_oldPack == _newPack) exitwith {false};
