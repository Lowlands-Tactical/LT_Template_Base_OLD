class LT_camo_exclude_unit
{
	displayName = "PermaDeath Scenario";
	tooltip = "Check if this is a PermaDeath scenario";
	property = "LT_PermaDeath_ID";
	control = "CheckboxNumber";
	expression = "LT_PermaDeath =  _value;";
	validate = "number";
	defaultValue = "0";
	typeName = "NUMBER";
};
