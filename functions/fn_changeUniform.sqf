// Change the Uniform of a (local) unit.
// Example: null = [player,"nld_camo_wld"] call lt_fnc_changeUniform;

private ["_unit","_type","_uniformItems", "_linkedItems"];

_unit = _this select 0;
_type = _this select 1;

diag_log "LT template DEBUG: fnc_changeUniform started";
_oldUniform = uniform _unit;
diag_log format ["LT template DEBUG: fnc_changeUniform old uniform: %1", (uniform _unit)];
diag_log format ["LT template DEBUG: fnc_changeUniform new uniform is allowed: %1", (_unit isUniformAllowed _type)];

diag_log format ["LT template DEBUG: fnc_changeUniform unit is local: %1", (!local _unit)];

if (!local _unit) exitWith {};

diag_log format ["LT template DEBUG: fnc_changeUniform class: %1", _type];

  _uniformItems = uniformItems _unit;
  _linkedItems = assignedItems _unit;

  diag_log format ["LT template DEBUG: fnc_changeUniform uniformItems: %1", _uniformItems];
  diag_log format ["LT template DEBUG: fnc_changeUniform linkedItems: %1", _linkedItems];

  removeUniform _unit;
  _unit forceAddUniform _type;
  _newUniform = uniform _unit;
  diag_log format ["LT template DEBUG: fnc_changeUniform new uniform: %1", (uniform _unit)];
  {
    if ( isClass (configFile >> "CFGMagazines" >> _x)) then {
    _unit addMagazine _x;
    } else {
    _unit addItem _x;
    };
  } forEach _uniformItems ;
  {_unit linkItem _x} foreach _linkedItems;

  if (_oldUniform != _newUniform) exitwith {true};
  if (_oldUniform == _newUniform) exitwith {false};
