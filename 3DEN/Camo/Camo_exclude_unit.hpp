class LT_camo_exclude_unit
{
	displayName = "Exclude unit from camouflage-setter";
	tooltip = "Exclude unit from camouflage-setter";
	property = "LT_camo_exclude_unit_ID";
	control = "CheckboxNumber";
	expression = "_this setVariable ['LT_camo_exclude', _value];";
	validate = "number";
	defaultValue = "0";
	condition = "objectBrain + objectControllable"; // Condition for attribute to appear (see the table below)
	typeName = "NUMBER"; // Defines data type of saved value, can be STRING, NUMBER or BOOL. Used only when control is "Combo", "Edit" or their variants
};
