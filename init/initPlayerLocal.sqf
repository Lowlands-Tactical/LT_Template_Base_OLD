//diag_log format ["Template Base waituntil Permadeath is pubvarred at %1", time];

waitUntil {!isNil "LT_PermaDeath"};

diag_log format ["Template Base Permadeath = %2 is pubvarred at %1", time, LT_PermaDeath];

waitUntil {!isNull player};
uiSleep 5;
player addaction ["<t color='#FF0000'>Parachute</t>", "\lt_template_base\scripts\paradrop.sqf", "", 1, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 100) && (player != driver (vehicle player))"];

if (LT_PermaDeath == 1) then {
  diag_log format ["Template Base Permadeath: %1", LT_PermaDeath];
  waitUntil {!alive player};
  diag_log format ["LT Template Acre Permadeath: %1 died and now is spectator", name player];
  // ["west", "east", "resistance", "civ"] call acre_api_fnc_babelSetSpokenLanguages;
  // [true] call acre_api_fnc_setSpectator;
  [player, true] call TFAR_fnc_forceSpectator;

};
