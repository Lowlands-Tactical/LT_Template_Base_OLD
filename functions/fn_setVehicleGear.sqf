_vehicle 	= _this select 0;
_role 		= _this select 1;

diag_log format ["Template Base Vehicle: %1",_vehicle];
diag_log format ["Template Base Vehicle: %1",_role];

switch (_role) do {
// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addWeaponCargoGlobal [lt_template_carbine, 2];
		_vehicle addMagazineCargoGlobal [lt_template_riflemag, 8];
		_vehicle addMagazineCargoGlobal [lt_template_glriflemag, 8];
		_vehicle addMagazineCargoGlobal [lt_template_carbinemag, 10];
		_vehicle addMagazineCargoGlobal [lt_template_armag, 5];
		_vehicle addWeaponCargoGlobal [lt_template_rat, 2];
		_vehicle addMagazineCargoGlobal [lt_template_grenade, 4];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenade, 4];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenadegreen, 2];
		_vehicle addMagazineCargoGlobal [lt_template_glmag, 4];
		_vehicle addMagazineCargoGlobal [lt_template_glsmokewhite, 4];
		_vehicle addItemCargoGlobal [lt_template_bandages,8];
		_vehicle addItemCargoGlobal [lt_template_bloodbags,2];
		_vehicle addItemCargoGlobal [lt_template_morphine,4];
		_vehicle addItemCargoGlobal [lt_template_epinephrine,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addWeaponCargoGlobal [lt_template_carbine, 10];
		_vehicle addMagazineCargoGlobal [lt_template_riflemag, 40];
		_vehicle addMagazineCargoGlobal [lt_template_glriflemag, 40];
		_vehicle addMagazineCargoGlobal [lt_template_carbinemag, 40];
		_vehicle addMagazineCargoGlobal [lt_template_armag, 22];
		_vehicle addWeaponCargoGlobal [lt_template_rat, 6];
		_vehicle addMagazineCargoGlobal [lt_template_grenade, 12];
		_vehicle addmagazineCargoGlobal [lt_template_mgrenade,12];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenade, 12];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenadegreen, 4];
		_vehicle addMagazineCargoGlobal [lt_template_glmag, 12];
		_vehicle addMagazineCargoGlobal [lt_template_glsmokewhite, 12];
		_vehicle addItemCargoGlobal [lt_template_bandages,16];
		_vehicle addItemCargoGlobal [lt_template_bloodbags,4];
		_vehicle addItemCargoGlobal [lt_template_morphine,8];
		_vehicle addItemCargoGlobal [lt_template_epinephrine,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addWeaponCargoGlobal [lt_template_carbine, 4];
		_vehicle addMagazineCargoGlobal [lt_template_riflemag, 20];
		_vehicle addMagazineCargoGlobal [lt_template_glriflemag, 20];
		_vehicle addMagazineCargoGlobal [lt_template_carbinemag, 20];
		_vehicle addMagazineCargoGlobal [lt_template_armag, 8];
		_vehicle addWeaponCargoGlobal [lt_template_rat, 2];
		_vehicle addMagazineCargoGlobal [lt_template_grenade, 8];
		_vehicle addmagazineCargoGlobal [lt_template_mgrenade,8];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenade, 8];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenadegreen, 2];
		_vehicle addMagazineCargoGlobal [lt_template_glmag, 8];
		_vehicle addMagazineCargoGlobal [lt_template_glsmokewhite, 4];
		_vehicle addItemCargoGlobal [lt_template_bandages,6];
		_vehicle addItemCargoGlobal [lt_template_bloodbags,3];
		_vehicle addItemCargoGlobal [lt_template_morphine,6];
		_vehicle addItemCargoGlobal [lt_template_epinephrine,6];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addMagazineCargoGlobal [lt_template_riflemag, 5];
		_vehicle addMagazineCargoGlobal [lt_template_glriflemag, 5];
		_vehicle addMagazineCargoGlobal [lt_template_armag, 5];
		_vehicle addMagazineCargoGlobal [lt_template_carbinemag, 5];
		_vehicle addMagazineCargoGlobal [lt_template_glmag, 5];
		_vehicle addMagazineCargoGlobal [lt_template_glsmokewhite, 4];
		_vehicle addWeaponCargoGlobal [lt_template_rat, 2];
		_vehicle addMagazineCargoGlobal [lt_template_grenade, 8];
		_vehicle addMagazineCargoGlobal [lt_template_mgrenade, 8];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenade, 8];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenadegreen, 2];
		_vehicle addItemCargoGlobal [lt_template_bandages,10];
		_vehicle addItemCargoGlobal [lt_template_bloodbags,4];
		_vehicle addItemCargoGlobal [lt_template_morphine,8];
		_vehicle addItemCargoGlobal [lt_template_epinephrine,8];
	};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addMagazineCargoGlobal [lt_template_riflemag, 15];
		_vehicle addMagazineCargoGlobal [lt_template_glriflemag, 20];
		_vehicle addMagazineCargoGlobal [lt_template_armag, 15];
		_vehicle addMagazineCargoGlobal [lt_template_carbinemag, 20];
		_vehicle addMagazineCargoGlobal [lt_template_glmag, 20];
		_vehicle addMagazineCargoGlobal [lt_template_glsmokewhite,16];
		_vehicle addWeaponCargoGlobal [lt_template_rat, 6];
		_vehicle addMagazineCargoGlobal [lt_template_grenade, 25];
		_vehicle addMagazineCargoGlobal [lt_template_mgrenade, 25];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenade, 25];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenadegreen, 6];
		_vehicle addItemCargoGlobal [lt_template_bandages, 25];
		_vehicle addItemCargoGlobal [lt_template_bloodbags,8];
		_vehicle addItemCargoGlobal [lt_template_morphine,12];
		_vehicle addItemCargoGlobal [lt_template_epinephrine,12];
	};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addMagazineCargoGlobal [lt_template_riflemag, 45];
		_vehicle addMagazineCargoGlobal [lt_template_glriflemag, 60];
		_vehicle addMagazineCargoGlobal [lt_template_armag, 45];
		_vehicle addMagazineCargoGlobal [lt_template_carbinemag, 60];
		_vehicle addMagazineCargoGlobal [lt_template_glmag, 60];
		_vehicle addMagazineCargoGlobal [lt_template_glsmokewhite,50];
		_vehicle addWeaponCargoGlobal [lt_template_rat, 20];
		_vehicle addMagazineCargoGlobal [lt_template_grenade, 75];
		_vehicle addMagazineCargoGlobal [lt_template_mgrenade, 75];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenade, 75];
		_vehicle addMagazineCargoGlobal [lt_template_smokegrenadegreen, 20];
		_vehicle addItemCargoGlobal [lt_template_bandages, 75];
		_vehicle addItemCargoGlobal [lt_template_bloodbags,20];
		_vehicle addItemCargoGlobal [lt_template_morphine,35];
		_vehicle addItemCargoGlobal [lt_template_epinephrine,35];
	};
};
