private ["_staff","_lt_main","_action"];

_staff = ["76561198007493141","76561198023151588","76561197972110272"];

if ( missionNamespace getVariable ["ace_common", false] and (serverCommandAvailable "#kick" or getPlayerUID player in _staff) ) then {

	private ["_lt_main","_action"];

	_lt_main = ["lt_main","Lowlands Tactical","\lt_template_base\logos\lowtac.paa",{},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _lt_main ] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_markActiveUnits", "Mark Active Units", "", {[] call ALIVE_fnc_markUnits}, {alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_ghost", "Hide player", "", {[player,true] call ALIVE_fnc_adminGhost}, {!isObjectHidden player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_unghost", "Unhide player", "", {[player,false] call ALIVE_fnc_adminGhost}, {isObjectHidden player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_disableFatigue", "Disable Fatigue", "", {player enableFatigue false}, {alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_camera", "Splendid Camera", "", {call BIS_fnc_camera}, {alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_debugConsole", "Debug Console", "", {(finddisplay 12) createdisplay 'RscDisplayDebugPublic';}, {alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_Arsenal", "Arsenal", "", {["Open",true] spawn BIS_fnc_arsenal}, {alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

	_action = ["lt_main_comsup", "Combat Support", "", {["radio"] call ALIVE_fnc_radioAction}, {alive player}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "lt_main"], _action] call ace_interact_menu_fnc_addActionToObject;

};
