class LT_veh_role_selector
{
	displayName = "Select vehicle type";
	tooltip = "Configure the type of vehicle";
	property = "LT_veh_role_combo_ID";
	control = "LT_veh_role_combo";
	expression = "_this setVariable ['LT_vehicle_role',_value];";
	defaultValue = "custom";
	condition = "objectHasInventoryCargo + objectVehicle"; // Condition for attribute to appear (see the table below)
	typeName = "STRING"; // Defines data type of saved value, can be STRING, NUMBER or BOOL. Used only when control is "Combo", "Edit" or their variants
};
