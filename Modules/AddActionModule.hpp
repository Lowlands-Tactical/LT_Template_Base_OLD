//Addaction Module
class LT_AddActionModule: Module_F
{

	scope = 2;
	displayName = "Lowtac Addaction";
	icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
	category = "LT_missionModules";

	function = "LT_fnc_AddActionModuleInit";
	functionPriority = 8;
	isGlobal = 1;
	isTriggerActivated = 1;
	isDisposable = 0;
	is3DEN = 0;

	class Arguments
	{
		class LT_AddActionTitle
		{
			displayName = "Addaction title";
			description = " The action name which is displayed in the action menu";
			typeName = "STRING"; // Value type, can be "NUMBER", "STRING" or "BOOL"
			defaultValue = "";
		};
		class LT_AddActionHandle
		{
			displayName = "Handle";
			description = "Which type of execution. When script fill in script below, when function fill in function name below, when file fill in filename below.";
			typeName = "STRING"; // Value type, can be "NUMBER", "STRING" or "BOOL"
			defaultValue = "File";
			class Values
			{
				class File {name = "File"; value="File";};
				class Function {name = "Function"; value="Function";};
				class Script {name = "Script"; value="Script";};
			};
		};
		class LT_AddActionScript
		{
			displayName = "Script";
			description = "Either path to the script file, relative to the mission folder or string with code, the actual script code or a function";
			typeName = "STRING";
			defaultValue = "";
		};
		class LT_AddActionArguments
		{
			displayName = "Arguments";
			description = "Arguments to pass to the script, splitted by comma's";
			typeName = "STRING";
			defaultValue = "[]";
		};
		class LT_AddActionLocality
		{
			displayName = "Execution";
			description = "Execution of the script";
			typeName = "STRING";
			defaultValue = "2";
			class Values
			{
				class LT_Server {name = "Server"; value="2";};
				class LT_Global {name = "Global"; value="0";};
				class LT_Local {name = "Local"; value="1";};
				class LT_WEST {name = "BLUFOR"; value="WEST";};
				class LT_EAST {name = "OPFOR"; value="EAST";};
				class LT_GUER {name = "GUERILLA"; value="RESISTANCE";};
				class LT_GROUP {name = "Group of caller"; value="group _caller";};
			};
		};
		class LT_AddActionAddTo {
			displayName = "Visible for";
			description = "The addaction will be visible/added for only the selected. Player is a special attribute as it will add the addaction to the object player.";
			typeName = "STRING";
			defaultValue = "0";
			class values {
				class LT_Global {name = "Everyone"; value="0";};
				class LT_WEST {name = "BLUFOR"; value="WEST";};
				class LT_EAST {name = "OPFOR"; value="EAST";};
				class LT_GUER {name = "GUERILLA"; value="RESISTANCE";};
				class LT_CIV {name = "Civilian"; value="CIVILIAN";};
				class LT_Player {name = "Player"; value = "player";};
			};
		};
		class LT_AddActionRemove
		{
			displayName = "Remove action after use";
			description = "Remove action after use";
			typeName = "STRING";
			defaultValue = "Global";
		  class values {
		    class Global 	{name = "Global"; value = "Global";};
		    class User {name = "User only"; value = "User";};
				class No {name = "No"; value = "No";};
		  };
		};
		class LT_AddActionEmpty
		{
			displayName = "Optional parameters";
			description = "Optional parameters";
			typeName = "STRING";
			defaultValue = "Optional parameters";
			class values {
				class empty {name = "Optional parameters";value = "Optional parameters";};
			};
		};
		class LT_AddActionPriority
		{
			displayName = "Priority";
			description = "Priority value of the action. Actions will be arranged in descending order according to this value.";
			typeName = "NUMBER";
			defaultValue = 1.5;
		};
		class LT_AddActionShowWindow
		{
			displayName = "Show window";
			description = "If set to true, players see 'Titletext' at mid-lower screen, as they approach the object. Only the title text for the action with highest priority and 'showWindow true' will be shown.";
			typeName = "BOOL";
		  class values {
		    class True 	{name = "Yes"; value = true;};
		    class False {name = "No"; value = false;};
		  };
		};
		class LT_AddActionHideOnUse
		{
			displayName = "Hide on use";
			description = "If set to true, it will hide the action menu after selecting that action. If set to false, it will leave the action menu open and visible after selecting that action, leaving the same action highlighted, for the purpose of allowing you to reselect that same action quickly, or to select another action.";
			typeName = "BOOL";
		  class values {
		    class True 	{name = "Yes"; value = true;};
		    class False {name = "No"; value = false;};
		  };
		};
		class LT_AddActionShortCut
		{
			displayName = "Key binding";
			description = "One of the key names defined in bin.pbo (e.g. 'moveForward'). Adding available shortcut will bind corresponding keyboard key to this action. Shortcut availability can be tested with inputAction command.";
			typeName = "STRING";
			defaultValue = "";
		};
		class LT_AddACtionCondition
		{
			displayName = "Condition";
			description = "Script code that must return true for the action to be shown. Special variables passed to the script code are _target (object to which action is attached to) and _this (caller/executing person).";
			typeName = "STRING";
			defaultValue = "";
		};
		class LT_AddActionRadius
		{
			displayName = "Radius";
			description = " 3D distance in meters the unit activating the action must be within to activate it. -1 disables this radius.";
			typeName = "NUMBER";
			defaultValue = 15;
		};
		class LT_AddActionUnconscious
		{
			displayName = "Show when Unconscious";
			description = " if true will be shown to incapacitated player (see setUnconscious, lifeState).";
			typeName = "BOOL";
		  class values {
		    class True 	{name = "Yes"; value = true;};
		    class False {name = "No"; value = false;};
		  };
		};
		class LT_AddActionSelection
		{
			displayName = "Selection";
			description = "Named selection in Geometry LOD to which the action is attached";
			typeName = "STRING";
			defaultValue = "";
		};
	};
};
