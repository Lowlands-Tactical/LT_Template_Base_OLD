class LT_StaticUnit
{
	displayName = "Set unit static";
	tooltip = "Fix the unit to this position. The unit can still fire";
	property = "LT_StaticUnit_ID";
	control = "Checkbox";
	expression = "_this allowFleeing 0; _this forceSpeed 0;";
	defaultValue = "false";
	condition = "objectBrain + objectControllable"; // Condition for attribute to appear (see the table below)
	typeName = "bool"; // Defines data type of saved value, can be STRING, NUMBER or BOOL. Used only when control is "Combo", "Edit" or their variants
};
