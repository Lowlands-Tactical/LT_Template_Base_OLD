class LT_role_selector
{
	displayName = "Select role";
	tooltip = "Configure all the things!";
	property = "LT_role_combo_ID";
	control = "LT_role_combo";
	expression = "_this setVariable ['LT_unit_role',_value];";
	defaultValue = "custom";
	condition = "objectBrain + objectControllable"; // Condition for attribute to appear (see the table below)
	typeName = "STRING"; // Defines data type of saved value, can be STRING, NUMBER or BOOL. Used only when control is "Combo", "Edit" or their variants
};