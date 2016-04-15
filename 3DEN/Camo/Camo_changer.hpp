// The following structure is the same as the one used for entity attributes

class LT_Catagory
{
	class Attributes
	{
		class LT_Camo_changer
		{
			displayName = "Choose Camouflage";
			tooltip = "Choose the camouflage the units will have";
			property = "LT_camo_selector_id";
			control = "LT_Camo_changer_combo"; // UI control base class displayed in Edit Attributes window, points to Cfg3DEN >> Attributes
			expression = "LT_Camo_var = _value;";
			defaultValue = "None";
			typeName = "STRING";						
		};
	};
};