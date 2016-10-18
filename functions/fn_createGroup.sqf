private ["_side","_amount","_pos","_units","_grp"];

_side = _this select 0;
_amount = _this select 1;
_pos = _this select 2;
_units = _this select 3;

_grp = createGroup _side;

for "_i" from 1 to _amount do {
  ( _units call BIS_fnc_selectRandom ) createUnit [_pos,_grp];
};

_grp
