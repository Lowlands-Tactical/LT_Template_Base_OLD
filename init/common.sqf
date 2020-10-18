// Stuff common to all our missions!


// added Viewsettings in ACE menu

private ["_lt_main","_action"];

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

// Because we want to start with the weapon lowered
if (hasInterface) then {
	if (vehicle player == player) then {player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";};

	// On every respawn add this option.
	waitUntil {!isNull player};
	uiSleep 5;
	player addaction ["<t color='#FF0000'>Parachute</t>", "\lt_template_base\scripts\paradrop.sqf", "", 1, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 100) && (player != driver (vehicle player))"];
	
	// Give pretty colour, or white when non-exist
	// this setVariable ["lt_unit_color", "RED", true];
	player assignTeam (player getVariable ["lt_unit_color","MAIN"]);
};

// Disable saving ever.
enableSaving [false, false];

// Fuck you
enableSentences false;

// Player fatigue (set via params)
if ("lt_fatigue_onoff" call BIS_fnc_getParamValue == 0) then {player enableFatigue false};

// Disable infested rabbits and birds, allow sounds.
enableEnvironment [false, true];

lt_safe_starten = [] execVM "\lt_template_base\functions\f\safeStart\f_safeStart.sqf";
