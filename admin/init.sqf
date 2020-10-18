// ACE3 Menu for Lowlands Tactical

private ["_lt_main","_action"];

// Iedereen

private _actDistVis = ["lmf_visibility","Visibility","",{},{true}] call ace_interact_menu_fnc_createAction;
private _actDistGen = ["lmf_viewDistParent","Overall","",{},{true}] call ace_interact_menu_fnc_createAction;
private _actDistObj = ["lmf_objectDistParent","Object","",{},{true}] call ace_interact_menu_fnc_createAction;
[player,1,["ACE_SelfActions"],_actDistVis] call ace_interact_menu_fnc_addActionToObject;
[player,1,["ACE_SelfActions","lmf_visibility"],_actDistGen] call ace_interact_menu_fnc_addActionToObject;
[player,1,["ACE_SelfActions","lmf_visibility"],_actDistObj] call ace_interact_menu_fnc_addActionToObject;

{
	private _currentAction = [format ["lmf_viewOverall_%1",_x],str _x,"",{setViewDistance (_this select 2)},{true},{},_x] call ace_interact_menu_fnc_createAction;
	[player,1,["ACE_SelfActions","lmf_visibility","lmf_viewDistParent"],_currentAction] call ace_interact_menu_fnc_addActionToObject;

	private _currentAction = [format ["lmf_viewObject_%1",_x],str _x,"",{setObjectViewDistance (_this select 2)},{true},{},_x] call ace_interact_menu_fnc_createAction;
	[player,1,["ACE_SelfActions","lmf_visibility","lmf_objectDistParent"],_currentAction] call ace_interact_menu_fnc_addActionToObject;
} forEach [500,1000,1500,2000,2500,3000,4000,5000,6000,7000,8000];

// Flendurs, SvenBrandt99, SkullFinger
staff = ["76561197972110272","76561198069718715","76561197992586763"];

lt_group_teleport = 0;

//  and (serverCommandAvailable "#kick" or getPlayerUID player in staff)
if ( missionNamespace getVariable ["ace_common", false]) then {

	private ["_lt_main","_action"];

	_lt_main = ["lt_main","Lowlands Tactical","\lt_template_base\logos\lowtac.paa",{},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _lt_main ] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_markActiveUnits", "Mark Active Units", "", {[] call ALIVE_fnc_markUnits}, {getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_ghost", "Hide player", "", {[player,true] call ALIVE_fnc_adminGhost}, {!isObjectHidden player and getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_unghost", "Unhide player", "", {[player,false] call ALIVE_fnc_adminGhost}, {isObjectHidden player and getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableFatigue", "Disable Fatigue", "", {player enableFatigue false}, { serverCommandAvailable "#kick" or getPlayerUID player in staff }] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_debugConsole", "Debug Console", "", {createDialog "RscDisplayDebugPublic";}, {getPlayerUID player in staff OR call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_Arsenal", "Arsenal", "", { ["Open",true] spawn BIS_fnc_arsenal; }, {getPlayerUID player in staff OR call ALIVE_fnc_isServerAdmin}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	// _action = ["lt_main_comsup", "Combat Support", "", {["radio"] call ALIVE_fnc_radioAction}, {serverCommandAvailable "#kick" or getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	// [player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableSafety","Disable Safety","",{ lt_param_timer = -1; publicVariable 'lt_param_timer'; [['SafeStartMissionStarting',['Mission starting now!']],'bis_fnc_showNotification',true] call BIS_fnc_MP; [[false],'f_fnc_safety',playableUnits + switchableUnits] call BIS_fnc_MP; 	hintsilent 'Safe Start ended!';},{ lt_param_timer >= 0 and getPlayerUID player in staff }] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_enableGTP", "Enable Group Teleport", "", { lt_group_teleport = 1; publicVariable 'lt_group_teleport'; }, { lt_group_teleport == 0 and getPlayerUID player in staff } ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableGTP", "Disable Group Teleport", "", { lt_group_teleport = 0; publicVariable 'lt_group_teleport'; }, { lt_group_teleport == 1 and getPlayerUID player in staff } ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = [ "lt_main_doGroupTP", "Teleport Group", "", { openMap[true,true]; onMapSingleClick "[_pos] call LT_fnc_teleportGroup; openMap[false,false]; onMapSingleClick ''; "; lt_group_teleport = 0; }, { lt_group_teleport == 1 and player == leader player } ] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_SupplyDrop", "Call supply drop", "", { openMap[true,false]; player onMapSingleClick '[_this,_pos] remoteExec ["LT_fnc_SupplyDrop", 2, false]; openMap[false,false]; player onMapSingleClick "";'; lt_group_teleport = 0; }, {getPlayerUID player in staff}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

};
