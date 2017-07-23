class RscZeusModuleSetVehicleGear
{
	idd=19998;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "(_this select 0) setVariable ['LT_GUI_MouseOver', curatorMouseOver]; _this spawn LT_fnc_FillCombo";


  class controls
  {

    controls[]=
    {
    	IGUIBack_2200,
    	RscCombo_2100,
    	RscCombo_2101,
    	RscText_1000,
    	RscText_1001,
    	RscButton_1600,
    	RscButton_1601,
    	RscFrame_1800,
    	RscText_1002
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by Whistle, v1.063, #Fyvemu)
    ////////////////////////////////////////////////////////

    class IGUIBack_2200: IGUIBack
    {
    	idc = 2200;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.165 * safezoneW;
    	h = 0.209 * safezoneH;
    };
    class RscCombo_2100: RscCombo
    {
    	idc = 2100;
    	x = 0.469062 * safezoneW + safezoneX;
    	y = 0.445 * safezoneH + safezoneY;
    	w = 0.113437 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscCombo_2101: RscCombo
    {
    	idc = 2101;
    	x = 0.469062 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
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
    class RscText_1001: RscText
    {
    	idc = 1001;
    	text = "Role"; //--- ToDo: Localize;
    	x = 0.432969 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.04125 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscButton_1600: RscButton
    {
    	idc = 1600;
    	text = "OK"; //--- ToDo: Localize;
    	x = 0.432969 * safezoneW + safezoneX;
    	y = 0.522 * safezoneH + safezoneY;
    	w = 0.04125 * safezoneW;
    	h = 0.055 * safezoneH;
			action = "[19998] call LT_fnc_GetGUIValues";
    };
    class RscButton_1601: RscButton
    {
    	idc = 1601;
    	text = "Cancel"; //--- ToDo: Localize;
    	x = 0.546406 * safezoneW + safezoneX;
    	y = 0.522 * safezoneH + safezoneY;
    	w = 0.04125 * safezoneW;
    	h = 0.055 * safezoneH;
			action = "closeDialog 19998; "; // _veh = _this getVariable 'LT_GUI_ObjectPlaced'; deleteVehicle _veh;
    };
    class RscFrame_1800: RscFrame
    {
    	idc = 1800;
    	x = 0.432969 * safezoneW + safezoneX;
    	y = 0.434 * safezoneH + safezoneY;
    	w = 0.154687 * safezoneW;
    	h = 0.077 * safezoneH;
    };
    class RscText_1002: RscText
    {
    	idc = 1002;
    	text = "Vehicle Gear"; //--- ToDo: Localize;
    	x = 0.427812 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.165 * safezoneW;
    	h = 0.044 * safezoneH;
    	colorBackground[] = {58,158,79,0};
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT END
    ////////////////////////////////////////////////////////
  };
};
