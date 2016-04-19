// Your attribute class
class LT_Camo_combo: Title
{
	//attributeLoad = "(_this controlsGroupCtrl 100) ctrlSetText _value";
	//attributeSave = "ctrlText (_this controlsGroupCtrl 100)";
	class Controls: Controls
	{
		class Title: Title{}; // Inherit existing title control. Text of any control with class Title will be changed to attribute displayName
		class Value: ctrlCombo
		{
			idc = 4567893;
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
					data = "DST";
				};
				class LT_Camo_Woodland
				{
					text = "Woodland camouflage";
					data = "WLD";
				};
				class LT_Camo_UN_Woodland
				{
					text = "UN_Woodland camouflage";
					data = "UN";
				};
				class LT_Camo_UN_Desert
				{
					text = "UN_Desert camouflage";
					data = "UND";
				};
				class LT_Camo_NFPTAN
				{
					text = "NFPTAN camouflage";
					data = "NFPT";
				};
				class LT_Camo_NFPGREEN
				{
					text = "NFPGREEN camouflage";
					data = "NFPG";
				};
				class LT_Camo_WINTER
				{
					text = "Winter camouflage";
					data = "WTR";
				};
				class LT_Camo_JUNGLE
				{
					text = "Jungle camouflage";
					data = "JGL";
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
			};
		};
	};
};
