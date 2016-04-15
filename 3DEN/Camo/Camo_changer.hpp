class Cfg3DEN
{
	class Mission
	{
		class MySection // Custom section class, everything inside will be opened in one window
		{
			displayName = "Choose Camo";
			class AttributeCategories
			{
				// The following structure is the same as the one used for entity attributes
				class MyMissionCategory
				{
					class Attributes
					{
						class WIS_Camo_Selector
						{
							//--- Mandatory properties
							displayName = "Choose Camo";
							tooltip = "Choose the camouflage the units will have";
							property = "WIS_camo_selector_id";
							control = "Combo"; // UI control base class displayed in Edit Attributes window, points to Cfg3DEN >> Attributes
							class Value: Combo
							{
								// Dynamically loaded items
								class ItemsConfig
								{
									path[] = {"CfgNotifications"}; // Path to config container
									localConfig = 1; // 1 to search local Description.ext as well
									// Name of the property which will be used for item text
									propertyText = "title";
									// Name of the property which will be used for item right text
									propertyTextRight = "description";
									// Name of the property which will be used for item picture
									propertyPicture = "iconPicture";
									// Name of the property which will be used for item text color
									propertyColor = "color"; 
								};
							};
							
							expression = "_this setVariable [%s,_value];";
	 
							// Expression called when custom property is undefined yet (i.e., when setting the attribute for the first time)
							// Entity is passed as _this
							// Returned value is the default value
							// Used when no value is returned, or when it's of other type than NUMBER, STRING or ARRAY
							// Custom attributes of logic entities (e.g., modules) are saved always, even when they have default value
							defaultValue = "42";
	 
							//--- Optional properties
							unique = 0; // When 1, only one entity of the type can have the value in the mission (used for example for variable names or player control)
							validate = "number"; // Validate the value before saving. Can be "none", "expression", "condition", "number" or "variable"
							condition = "object"; // Condition for attribute to appear (see the table below)
							typeName = "NUMBER"; // Defines data type of saved value, can be STRING, NUMBER or BOOL. Used only when control is "Combo", "Edit" or their variants
						};
					};
				};
			};
		};
	};
};
