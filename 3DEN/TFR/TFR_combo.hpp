// Your attribute class
class LT_TFR_combo: Title
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
				class LT_TFR_managed
				{
					text = "Use Template presets";
					data = "1";
				};
				class LT_TFR_unmanaged
				{
					text = "Use TFR settings";
					data = "0";
					default = 1;
				};
			};
		};
	};
};
