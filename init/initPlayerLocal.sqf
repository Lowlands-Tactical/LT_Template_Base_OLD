
if (LT_PermaDeath == 1) then {

  waitUntil {!alive player};
  diag_log format ["LT Template Acre Permadeath: %1 died and now is spectator", name player];
  [true] call acre_api_fnc_setSpectator;

};
