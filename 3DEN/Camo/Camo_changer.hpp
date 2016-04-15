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
						displayName = "Choose Camouflage";
						tooltip = "Choose the camouflage the units will have";
						property = "WIS_camo_selector_id";
						control = "Combo"; // UI control base class displayed in Edit Attributes window, points to Cfg3DEN >> Attributes
						class Value: Combo
						{
							class Items
							{
								class WIS_Camo_None
								{
									text = "None";
									data = "None";
								};
								class WIS_Camo_Desert
								{
									text = "Desert camouflage";
									data = "Desert";
								};
								class WIS_Camo_Woodland
								{
									text = "Woodland camouflage";
									data = "Woodland";
								};
								class WIS_Camo_Support
								{
									text = "Support outfits";
									data = "Support";
								};
								class WIS_Camo_UN_Woodland
								{
									text = "UN_Woodland camouflage";
									data = "UN_Woodland";
								};
								class WIS_Camo_UN_Desert
								{
									text = "UN_Desert camouflage";
									data = "UN_Desert";
								};
								class WIS_Camo_NFPTAN
								{
									text = "NFPTAN camouflage";
									data = "NFPTAN";
								};
								class WIS_Camo_NFPGREEN
								{
									text = "NFPGREEN camouflage";
									data = "NFPGREEN";
								};
								class WIS_Camo_WINTER
								{
									text = "Winter camouflage";
									data = "WINTER";
								};
								class WIS_Camo_JUNGLE
								{
									text = "Jungle camouflage";
									data = "JUNGLE";
								};
								class WIS_Camo_SF
								{
									text = "Special forces camouflage";
									data = "SF";
								};
								class WIS_Camo_SFMTP
								{
									text = "Special forces MTP camouflage";
									data = "SFMTP";
								};
								class WIS_Camo_KM
								{
									text = "Koninklijke marine camouflage";
									data = "KM";
								};
								class WIS_Camo_DIVER
								{
									text = "Divinggear";
									data = "DIVER";
								};
							};
							
							
							/* (Will be used when proof that camo changer works) https://community.bistudio.com/wiki/Notification
							// Dynamically loaded items
							class ItemsConfig
							{
								path[] = {"CfgNotifications"}; // Path to config container
								// Name of the property which will be used for item text
								propertyText = "title";
								// Name of the property which will be used for item right text
								propertyTextRight = "description";
							};
							*/
						};

						expression = "WIS_Camo = _value;";
						defaultValue = "None";
            					typeName = "STRING";						
					};
				};
			};
		};
	};
};
