// Teleport your group to a position on the map

private ["_dest","_myUnits","_count"];

_dest = 0;
_count = 0;

openMap[true,true];
onMapSingleClick { _dest = _pos; openMap[false]; onMapSingleClick ""; };

_myUnits = units player - player;

player setPos _dest;

{
  _x setPos ( [player, 10, (360/(count _myUnits) * _count)] call BIS_fnc_relPos );
  _count = _count + 1;
} foreach _myUnits;
