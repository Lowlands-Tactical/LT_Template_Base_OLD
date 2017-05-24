private ["_units","_mrkr","_pos"];

// Maybe we want to change this later on or make exceptions because of the maps.
_pos = [100,100];

_mrkr = createMarker ["server_stats",_pos];
_mrkr setMarkerText "...";
_mrkr setMarkerType "KIA";
_mrkr setMarkerColor "ColorOrange";

while {true} do {
  _units = 0;
  // {if (local _x) then {_units=_units+1;};} forEach allUnits;
  _mrkr setMarkerText format ["FPS:%1; allUnits:%2; players:%3; AI_local:%4;", diag_fps, count allUnits, count allPlayers, ((count allUnits) - (count allPlayers))];
  sleep 60;
};
