// ACE3 Menu for Lowlands Tactical

private ["_lt_main","_action"];

staff = ["76561198007493141","76561197972110272","76561197972132272"];

lt_group_teleport = 0;

//  and (serverCommandAvailable "#kick" or getPlayerUID player in staff)
if ( missionNamespace getVariable ["ace_common", false]) then {

	private ["_lt_main","_action"];

	_lt_main = ["lt_main","Lowlands Tactical","\lt_template_base\logos\lowtac.paa",{},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _lt_main ] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_markActiveUnits", "Mark Active Units", "", {[] call ALIVE_fnc_markUnits}, {getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_ghost", "Hide player", "", {[player,true] call ALIVE_fnc_adminGhost}, { !isObjectHidden player and getPlayerUID player in staff }] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_unghost", "Unhide player", "", {[player,false] call ALIVE_fnc_adminGhost}, { isObjectHidden player and getPlayerUID player in staff }] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_disableFatigue", "Disable Fatigue", "", {player enableFatigue false}, { serverCommandAvailable "#kick" or getPlayerUID player in staff }] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_debugConsole", "Debug Console", "", {createDialog "RscDisplayDebugPublic";}, {getPlayerUID player in staff OR call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_Arsenal", "Arsenal", "", { ["Open",true] spawn BIS_fnc_arsenal; }, {getPlayerUID player in staff OR call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_comsup", "Combat Support", "", {["radio"] call ALIVE_fnc_radioAction}, {serverCommandAvailable "#kick" or getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableSafety","Disable Safety","",{ lt_param_timer = -1; publicVariable 'lt_param_timer'; [['SafeStartMissionStarting',['Mission starting now!']],'bis_fnc_showNotification',true] call BIS_fnc_MP; [[false],'f_fnc_safety',playableUnits + switchableUnits] call BIS_fnc_MP; 	hintsilent 'Safe Start ended!';},{ lt_param_timer >= 0 and serverCommandAvailable "#kick" }] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_enableGTP", "Enable Group Teleport", "", { lt_group_teleport = 1; publicVariable 'lt_group_teleport'; }, { lt_group_teleport == 0 and serverCommandAvailable "#kick" } ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_disableGTP", "Disable Group Teleport", "", { lt_group_teleport = 0; publicVariable 'lt_group_teleport'; }, { lt_group_teleport == 1 and serverCommandAvailable "#kick" } ] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = [ "lt_main_doGroupTP", "Teleport Group", "", { openMap[true,true]; onMapSingleClick "[_pos] call LT_fnc_teleportGroup; openMap[false,false]; onMapSingleClick ''; "; lt_group_teleport = 0; }, { lt_group_teleport == 1 and player == leader player } ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

};
