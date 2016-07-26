class cfgNotifications
{
	// A generic warning notification
	class Alert
	{
		title = "ALERT";
		description = "%1";
		iconPicture="\A3\ui_f\data\map\markers\military\warning_ca.paa";
		duration = 3;
		priority = 9;
	};
	class SafeStart
	{
		title = "SAFE START";
		description = "%1";
		iconPicture="\A3\UI_F\data\IGUI\Cfg\Actions\settimer_ca.paa";
		duration = 10;
		priority = 0;
	};
	class SafeStartMissionStarting
	{
		title = "SAFE START";
		description = "%1";
		iconPicture="\A3\UI_F\data\IGUI\Cfg\Actions\settimer_ca.paa";
		duration = 3;
		priority = 1;
	};
};