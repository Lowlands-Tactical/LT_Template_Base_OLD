class RscZeusModuleSupplyDrop
{
	idd=19997;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "_this spawn LT_fnc_FillCombo";

  class controls
  {

		controls[]=
{
	IGUIBack_2200,
	RscCombo_2100,
	RscText_1000,
	RscButton_1600,
	RscButton_1601,
	RscFrame_1800,
	RscText_1002
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Whistle, v1.063, #Ciqawu)
////////////////////////////////////////////////////////

class IGUIBack_2200: IGUIBack
{
	idc = 2200;

	x = 0.427812 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.176 * safezoneH;
};
class RscCombo_2100: RscCombo
{
	idc = 2100;

	x = 0.469062 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 1000;

	text = "Side"; //--- ToDo: Localize;
	x = 0.432969 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.0309375 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	action = "[19997] call LT_fnc_GetGUIValues";

	text = "OK"; //--- ToDo: Localize;
	x = 0.432969 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
};
class RscButton_1601: RscButton
{
	idc = 1601;
	action = "closeDialog 19997; ";

	text = "Cancel"; //--- ToDo: Localize;
	x = 0.54125 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
};
class RscFrame_1800: RscFrame
{
	idc = 1800;

	x = 0.432969 * safezoneW + safezoneX;
	y = 0.434 * safezoneH + safezoneY;
	w = 0.154687 * safezoneW;
	h = 0.044 * safezoneH;
};
class RscText_1002: RscText
{
	idc = 1002;

	text = "Supply drop"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.165 * safezoneW;
	h = 0.044 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


  };
};
