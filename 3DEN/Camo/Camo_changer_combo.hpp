// Your attribute class
class LT_Camo_changer_combo: Title
{
	// Expression called when the control is loaded, used to apply the value
	// Passed params are: _this - control, _value - saved value
	attributeLoad = /*"(_this controlsGroupCtrl 100) ctrlSetText _value"*/;

	// Expression called when attributes window is closed and changes confirmed. Used to save the value.
	// Passed param: _this - control
	attributeSave = /*"ctrlText (_this controlsGroupCtrl 100)"*/;

	// List of controls, structure is the same as with any other controls group
	class Controls: Controls
	{
		class Title: Title{}; // Inherit existing title control. Text of any control with class Title will be changed to attribute displayName
		class Value: ctrlCombo
		{
			idc = 100;
			x = ATTRIBUTE_TITLE_W * GRID_W;
			w = ATTRIBUTE_CONTENT_W * GRID_W;
			h = SIZE_M * GRID_H;

				class Items
				{
					class LT_Camo_None
					{
						text = "Current camouflage";
						data = "None";
						default = 1;
					};
					class LT_Camo_Desert
					{
						text = "Desert camouflage";
						data = "Desert";
					};
					class LT_Camo_Woodland
					{
						text = "Woodland camouflage";
						data = "Woodland";
					};
					class LT_Camo_Support
					{
						text = "Support outfits";
						data = "Support";
					};
					class LT_Camo_UN_Woodland
					{
						text = "UN_Woodland camouflage";
						data = "UN_Woodland";
					};
					class LT_Camo_UN_Desert
					{
						text = "UN_Desert camouflage";
						data = "UN_Desert";
					};
					class LT_Camo_NFPTAN
					{
						text = "NFPTAN camouflage";
						data = "NFPTAN";
					};
					class LT_Camo_NFPGREEN
					{
						text = "NFPGREEN camouflage";
						data = "NFPGREEN";
					};
					class LT_Camo_WINTER
					{
						text = "Winter camouflage";
						data = "WINTER";
					};
					class LT_Camo_JUNGLE
					{
						text = "Jungle camouflage";
						data = "JUNGLE";
					};
					class LT_Camo_SF
					{
						text = "Special forces camouflage";
						data = "SF";
					};
					class LT_Camo_SFMTP
					{
						text = "Special forces MTP camouflage";
						data = "SFMTP";
					};
					class LT_Camo_KM
					{
						text = "Koninklijke marine camouflage";
						data = "KM";
					};
					class LT_Camo_DIVER
					{
						text = "Divinggear";
						data = "DIVER";
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
		};
	};
};
