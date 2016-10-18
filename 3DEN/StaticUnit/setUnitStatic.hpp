class LT_StaticUnit
{
	displayName = "Set unit static";
	tooltip = "Fix the unit to this position. The unit can still fire";
	property = "LT_StaticUnit_ID";
	control = "Checkbox";
	expression = "_this allowFleeing 0; _this forceSpeed 0; _this addEventHandler ['Animchanged',{(_this select 0) setunitpos 'up'}];";
	defaultValue = "false";
	condition = "objectBrain + objectControllable";
	typeName = "bool";
};
