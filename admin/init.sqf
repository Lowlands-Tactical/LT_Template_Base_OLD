// ACE3 Menu for Lowlands Tactical

private ["_staff","_lt_main","_action"];

_staff = ["76561198007493141","76561198023151588","76561197972110272"];

//  and (serverCommandAvailable "#kick" or getPlayerUID player in _staff) 
if ( missionNamespace getVariable ["ace_common", false]) then {

	private ["_lt_main","_action"];

	_lt_main = ["lt_main","Lowlands Tactical","\lt_template_base\logos\lowtac.paa",{},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _lt_main ] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_markActiveUnits", "Mark Active Units", "", {[] call ALIVE_fnc_markUnits}, {serverCommandAvailable "#kick" or getPlayerUID player in _staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_ghost", "Hide player", "", {[player,true] call ALIVE_fnc_adminGhost}, {!isObjectHidden player and (serverCommandAvailable "#kick" or getPlayerUID player in _staff)}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_unghost", "Unhide player", "", {[player,false] call ALIVE_fnc_adminGhost}, {isObjectHidden player and (serverCommandAvailable "#kick" or getPlayerUID player in _staff)}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableFatigue", "Disable Fatigue", "", {player enableFatigue false}, {serverCommandAvailable "#kick" or getPlayerUID player in _staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_debugConsole", "Debug Console", "", {createDialog "RscDisplayDebugPublic"}, {serverCommandAvailable "#kick" or getPlayerUID player in _staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_Arsenal", "Arsenal", "", {["Open",true] spawn BIS_fnc_arsenal}, {serverCommandAvailable "#kick" or getPlayerUID player in _staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_comsup", "Combat Support", "", {["radio"] call ALIVE_fnc_radioAction}, {serverCommandAvailable "#kick" or getPlayerUID player in _staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_enableGTP", "Enable Group Teleport", "", { {lt_group_teleport = 1} remoteExec ["bis_fnc_call", 0, false] }, {serverCommandAvailable "#kick" or getPlayerUID player in _staff} ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableGTP", "Disable Group Teleport", "", { {lt_group_teleport = 0} remoteExec ["bis_fnc_call", 0, false] }, {serverCommandAvailable "#kick" or getPlayerUID player in _staff} ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_doGroupTP", "Teleport Group", "", { call lt_fnc_teleportGroup }, {lt_group_teleport == 1 and player == leader player }] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

};
