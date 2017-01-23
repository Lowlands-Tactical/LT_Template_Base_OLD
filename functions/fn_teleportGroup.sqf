// Teleport your group to a position on the map
//diag_log format["_this = %1",_this];
player setPos (_this select 0);
private ["_count"];
_count = 0;
{
  if (_x != player) then {
    _x setPos ( [player, 4, (360/(count (units player)) * _count)] call BIS_fnc_relPos );
    _count = _count + 1;
  };
} foreach (units player);
