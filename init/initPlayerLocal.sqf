[] call lt_fnc_AcreChannelPresets;

//diag_log format ["Template Base waituntil Permadeath is pubvarred at %1", time];

//WIP:
//addMissionEventHandler ["OnUserAdminStateChanged", {
//	params ["_networkId", "_loggedIn", "_votedIn"];
//        diag_log format ["AdminStateChanged: %1 LoggedIn: %2 %3", _networkId, _loggedIn, _votedIn];
//        if((_loggedIn isEqualTo true) && (_networkId == (getPlayerID player))) then {
//            null = execVM "\lt_template_base\briefing\admin.sqf";
//        };
//}];


waitUntil {!isNil "LT_PermaDeath"};

diag_log format ["Template Base Permadeath = %2 is pubvarred at %1", time, LT_PermaDeath];

if ("lt_markers" call BIS_fnc_getParamValue == 1) then { execVM "\lt_template_base\scripts\QS_icons.sqf"; };

waitUntil {!isNull player};
uiSleep 5;

if (LT_PermaDeath == 1) then {
  diag_log format ["Template Base Permadeath: %1", LT_PermaDeath];
  waitUntil {!alive player};
  diag_log format ["LT Template Acre Permadeath: %1 died and now is spectator", name player];
  ["west", "east", "resistance", "civ"] call acre_api_fnc_babelSetSpokenLanguages;
  [true] call acre_api_fnc_setSpectator;
  ["Initialize", [player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
};

