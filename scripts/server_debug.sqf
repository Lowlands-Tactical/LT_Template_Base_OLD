private ["_units"];
while {true} do {
  _units = 0;
  {if (local _x) then {_units=_units+1;};} forEach allUnits;
  "server_debug" setMarkerText format["%1 units at %2 FPS",_units,diag_fps];
  "players_debug" setMarkerText format["%1 players",count allPlayers];
  "total_debug" setMarkerText format["%1 units in total", count allUnits];
  sleep 60;
};
