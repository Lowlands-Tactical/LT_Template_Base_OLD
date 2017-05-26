class LT_veh_side_selector
{
	displayName = "Select vehicle side";
	tooltip = "Configure the side of vehicle to ";
	property = "LT_veh_side_combo_ID";
	control = "LT_veh_side_combo";
	expression = "_this setVariable ['LT_vehicle_side',_value];";
	defaultValue = "custom";
	condition = "objectHasInventoryCargo + objectVehicle"; // Condition for attribute to appear (see the table below)
	typeName = "STRING"; // Defines data type of saved value, can be STRING, NUMBER or BOOL. Used only when control is "Combo", "Edit" or their variants
};
