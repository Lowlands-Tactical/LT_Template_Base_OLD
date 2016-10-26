_vehicle 	= _this select 0;
_role 		= _this select 1;

diag_log format ["Template Base Vehicle: %1",_vehicle];
diag_log format ["Template Base Vehicle: %1",_role];

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = if (isNil "lt_template_rifle" ) then {"NLD_blk_C8"} else {lt_template_rifle};
_riflemag = if (isNil "lt_template_riflemag") then {"30Rnd_556x45_Stanag"} else {lt_template_riflemag};
_riflemag_tr = if (isNil "lt_template_riflemag_t") then {"30Rnd_556x45_Stanag_Tracer_Red"} else {lt_template_riflemag_t};

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = if (isNil "lt_template_carbine" ) then {"NLD_blk_C8"} else {lt_template_carbine};
_carbinemag = if (isNil "lt_template_carbinemag") then {"30Rnd_556x45_Stanag"} else {lt_template_carbinemag};
_carbinemag_tr = if (isNil "lt_template_carbinemag_tr") then {"30Rnd_556x45_Stanag_Tracer_Red"} else {lt_template_carbinemag_tr};

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = if (isNil "lt_template_smg") then {"CUP_smg_MP5A5"} else {lt_template_smg};
_smgmag = if (isNil "lt_template_smgmag") then {"CUP_30Rnd_9x19_MP5"} else {lt_template_smgmag};
_smgmag_tr = if (isNil "lt_template_smgmag_tr") then {"CUP_30Rnd_9x19_MP5"} else {lt_template_smgmag_tr};

// Diver
_diverWep = if (isNil "lt_template_diverWep") then {"arifle_SDAR_F"} else {lt_template_diverWep};
_diverMag1 = if (isNil "lt_template_diverMag1") then {"30Rnd_556x45_Stanag"} else {lt_template_diverMag1};
_diverMag2 = if (isNil "lt_template_diverMag2") then {"20Rnd_556x45_UW_mag"} else {lt_template_diverMag2};

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = if (isNil "lt_template_glrifle") then {"NLD_blk_C8GL"} else {lt_template_glrifle};
_glriflemag = if (isNil "lt_template_glriflemag") then {"30Rnd_556x45_Stanag"} else {lt_template_glriflemag};
_glriflemag_tr = if (isNil "lt_template_glriflemag_tr") then {"30Rnd_556x45_Stanag_Tracer_Red"} else {lt_template_glriflemag_tr};
_glmag = if (isNil "lt_template_glmag") then {"CUP_1Rnd_HE_M203"} else {lt_template_glmag};

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = if (isNil "lt_template_glsmokewhite") then {"CUP_1Rnd_Smoke_M203"} else {lt_template_glsmokewhite};
_glsmokegreen = if (isNil "lt_template_glsmokegreen") then {"CUP_1Rnd_SmokeGreen_M203"} else {lt_template_glsmokegreen};
_glsmokered = if (isNil "lt_template_glsmokered") then {"CUP_1Rnd_SmokeRed_M203"} else {lt_template_glsmokered};

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = if (isNil "lt_template_glflarewhite") then {"CUP_FlareWhite_M203"} else {lt_template_glflarewhite};
_glflarered = if (isNil "lt_template_glflarered") then {"CUP_FlareRed_M203"} else {lt_template_glflarered};
_glflareyellow = if (isNil "lt_template_glflareyellow") then {"CUP_FlareYellow_M203"} else {lt_template_glflareyellow};
_glflaregreen = if (isNil "lt_template_glflaregreen") then {"CUP_FlareGreen_M203"} else {};

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = if (isNil "lt_template_pistol") then {"CUP_hgun_Glock17"} else {lt_template_pistol};
_pistolmag = if (isNil "lt_template_pistolmag") then {"CUP_17Rnd_9x19_glock17"} else {lt_template_pistolmag};

// Grenades
_grenade = if (isNil "lt_template_grenade") then {"HandGrenade"} else {lt_template_grenade};
_Mgrenade = if (isNil "lt_template_Mgrenade") then {"MiniGrenade"} else {lt_template_Mgrenade};
_smokegrenade = if (isNil "lt_template_smokegrenade") then {"SmokeShell"} else {lt_template_smokegrenade};
_smokegrenadegreen = if (isNil "lt_template_smokegrenadegreen") then {"SmokeShellGreen"} else {lt_template_smokegrenadegreen};

// misc medical items.
_firstaid = if (isNil "lt_template_firstaid") then {"FirstAidKit"} else {lt_template_firstaid};
_medkit = if (isNil "lt_template_medkit") then {"Medikit"} else {lt_template_medkit};
_bandages = if (isNil "lt_template_bandages" ) then {"ACE_fieldDressing"} else {lt_template_bandages};
_morphine = if (isNil "lt_template_morphine" ) then {"ACE_morphine"} else {lt_template_morphine};
_epinephrine = if (isNil "lt_template_epinephrine" ) then {"ACE_epinephrine"} else {lt_template_epinephrine};
_bloodbags = if (isNil "lt_template_bloodbags" ) then {"ACE_bloodIV"} else {lt_template_bloodbags};

// Night Vision Goggles (NVGoggles)
_nvg = if (isNil "lt_template_nvg") then {"ACE_NVG_Wide"} else {lt_template_nvg};

// UAV Terminal
_uavterminal = if (isNil "lt_template_uavterminal") then {"B_UavTerminal"} else {lt_template_uavterminal};	  // BLUFOR - FIA

// Chemlights
_chemgreen =  if (isNil "lt_template_chemgreen") then {"Chemlight_green"} else {lt_template_chemgreen};
_chemred = if (isNil "lt_template_chemred") then {"Chemlight_red"} else {lt_template_chemred};
_chemyellow =  if (isNil "lt_template_chemyellow") then {"Chemlight_yellow"} else {lt_template_chemyellow};
_chemblue = if (isNil "lt_template_chemblue") then {"Chemlight_blue"} else {lt_template_chemblue};

// Other items
_cigarette = if (isNil "lt_templatecigarette") then {"murshun_cigs_lighter"} else {lt_templatecigarette};
_minedetector = if (isNil "lt_template_minedetector") then {"MineDetector"} else {lt_template_minedetector};

_rangefinder = if (isNil "lt_template_rangefinder") then {"ACE_Vector"} else {lt_template_rangefinder};
_advancedbinoculars = if (isNil "lt_template_advancedbinoculars") then {"ACE_Vector"} else {lt_template_advancedbinoculars};
_simplebinoculars = if (isNil "lt_template_simplebinoculars") then {"Binocular"} else {lt_template_simplebinoculars};

_atragmx = if (isNil "lt_template_atragmx") then {"ACE_ATragMX"} else {lt_template_atragmx};
_dagr = if (isNil "lt_templatedagr") then {"ACE_DAGR"} else {lt_templatedagr};
_spotting_scope = if (isNil "lt_template_spotting_scope") then {"ACE_SpottingScope"} else {lt_template_spotting_scope};
_rangecard = if (isNil "lt_template_rangecard") then {"ACE_RangeCard"} else {lt_template_rangecard};
_kestrel = if (isNil "lt_template_kestrel") then {"ACE_Kestrel4500"} else {lt_template_kestrel};

_gps = if (isNil "lt_template_gps") then {"ItemGPS"} else {lt_template_gps};
_telephone = if (isNil "lt_template_telephone") then {"ItemAndroid"} else {lt_template_telephone};

_toolkit = if (isNil "lt_template_toolkit") then {"ToolKit"} else {lt_template_toolkit};
_clacker = if (isNil "lt_template_clacker") then {"ACE_Clacker"} else {lt_template_clacker};

_maptools = if (isNil "lt_template_maptools") then {"ACE_MapTools"} else {lt_template_maptools};
_mapflashlight = if (isNil "lt_template_mapflashlight") then {"ACE_Flashlight_XL50"} else {lt_template_mapflashlight};
_map = if (isNil "lt_template_map") then {"ItemMap"} else {lt_template_map};
_compass = if (isNil "lt_template_compass") then {"ItemCompass"} else {lt_template_compass};
_radio = if (isNil "lt_template_radio") then {"ItemRadio"} else {lt_template_radio};
_watch = if (isNil "lt_template_watch") then {"ItemWatch"} else {lt_template_watch};

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = if (isNil "lt_template_AR") then {"NLD_Minimi"} else {lt_template_AR};
_ARmag = if (isNil "lt_template_ARmag") then {"CUP_100Rnd_TE4_Red_Tracer_556x45_M249"} else {lt_template_ARmag};
_ARmag_tr = if (isNil "lt_template_ARmag_tr") then {"CUP_100Rnd_TE4_Red_Tracer_556x45_M249"} else {lt_template_ARmag_tr};

// Medium MG
_MMG = if (isNil "lt_template_MMG") then {"NLD_MAG"} else {lt_template_MMG};
_MMGmag = if (isNil "lt_template_MMGmag") then {"NLD_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"} else {lt_template_MMGmag};
_MMGmag_tr = if (isNil "lt_template_MMGmag_tr") then {"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"} else {lt_template_MMGmag_tr};

// Marksman rifle
_DMrifle = if (isNil "lt_template_DMrifle") then {"NLD_AWM"} else {lt_template_DMrifle};
_DMriflemag = if (isNil "lt_template_DMriflemag") then {"CUP_5Rnd_86x70_L115A1"} else {lt_template_DMriflemag};

// Rifleman AT
_RAT = if (isNil "lt_template_RAT") then {"NLD_AT4"} else {lt_template_RAT};

// Medium AT
_MAT = if (isNil "lt_template_MAT") then {"launch_NLAW_F"} else {lt_template_MAT};
_MATmag1 = if (isNil "lt_template_MATmag1") then {"NLAW_F"} else {lt_template_MATmag1};
_MATmag2 = if (isNil "lt_template_MATmag2") then {"NLAW_F"} else {lt_template_MATmag2};

// Surface Air
_SAM = if (isNil "lt_template_SAM") then {"CUP_launch_FIM92Stinger"} else {lt_template_SAM};
_SAMmag = if (isNil "lt_template_SAMmag") then {"CUP_Stinger_M"} else {lt_template_SAMmag};

// Heavy AT
_HAT = if (isNil "lt_template_HAT") then {"launch_B_Titan_short_F"} else {lt_template_HAT};
_HATmag1 = if (isNil "lt_template_HATmag1") then {"Titan_AT"} else {lt_template_HATmag1};
_HATmag2 = if (isNil "lt_template_HATmag2") then {"Titan_AP"} else {lt_template_HATmag2};

// Sniper
_SNrifle = if (isNil "lt_template_SNrifle") then {"NLD_AWM"} else {lt_template_SNrifle};
_SNrifleMag = if (isNil "lt_template_SNrifleMag") then {"CUP_5Rnd_86x70_L115A1"} else {lt_template_SNrifleMag};

// Engineer items
_ATmine = if (isNil "lt_template_ATmine") then {"ATMine_Range_Mag"} else {lt_template_ATmine};
_satchel = if (isNil "lt_template_satchel") then {"DemoCharge_Remote_Mag"} else {lt_template_satchel};
_APmine1 = if (isNil "lt_template_APmine1") then { "APERSBoundingMine_Range_Mag"} else {lt_template_APmine1};
_APmine2 = if (isNil "lt_template_APmine2") then {"APERSMine_Range_Mag"} else {lt_template_APmine2};

switch (_role) do {
// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addWeaponCargoGlobal [_carbine, 2];
		_vehicle addMagazineCargoGlobal [_riflemag, 8];
		_vehicle addMagazineCargoGlobal [_glriflemag, 8];
		_vehicle addMagazineCargoGlobal [_carbinemag, 10];
		_vehicle addMagazineCargoGlobal [_armag, 5];
		_vehicle addWeaponCargoGlobal [_rat, 2];
		_vehicle addMagazineCargoGlobal [_grenade, 4];
		_vehicle addMagazineCargoGlobal [_smokegrenade, 4];
		_vehicle addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_vehicle addMagazineCargoGlobal [_glmag, 4];
		_vehicle addMagazineCargoGlobal [_glsmokewhite, 4];
		_vehicle addItemCargoGlobal [_bandages,8];
		_vehicle addItemCargoGlobal [_bloodbags,2];
		_vehicle addItemCargoGlobal [_morphine,4];
		_vehicle addItemCargoGlobal [_epinephrine,4];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addWeaponCargoGlobal [_carbine, 10];
		_vehicle addMagazineCargoGlobal [_riflemag, 40];
		_vehicle addMagazineCargoGlobal [_glriflemag, 40];
		_vehicle addMagazineCargoGlobal [_carbinemag, 40];
		_vehicle addMagazineCargoGlobal [_armag, 22];
		_vehicle addWeaponCargoGlobal [_rat, 6];
		_vehicle addMagazineCargoGlobal [_grenade, 12];
		_vehicle addmagazineCargoGlobal [_mgrenade,12];
		_vehicle addMagazineCargoGlobal [_smokegrenade, 12];
		_vehicle addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_vehicle addMagazineCargoGlobal [_glmag, 12];
		_vehicle addMagazineCargoGlobal [_glsmokewhite, 12];
		_vehicle addItemCargoGlobal [_bandages,16];
		_vehicle addItemCargoGlobal [_bloodbags,4];
		_vehicle addItemCargoGlobal [_morphine,8];
		_vehicle addItemCargoGlobal [_epinephrine,8];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addWeaponCargoGlobal [_carbine, 4];
		_vehicle addMagazineCargoGlobal [_riflemag, 20];
		_vehicle addMagazineCargoGlobal [_glriflemag, 20];
		_vehicle addMagazineCargoGlobal [_carbinemag, 20];
		_vehicle addMagazineCargoGlobal [_armag, 8];
		_vehicle addWeaponCargoGlobal [_rat, 2];
		_vehicle addMagazineCargoGlobal [_grenade, 8];
		_vehicle addmagazineCargoGlobal [_mgrenade,8];
		_vehicle addMagazineCargoGlobal [_smokegrenade, 8];
		_vehicle addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_vehicle addMagazineCargoGlobal [_glmag, 8];
		_vehicle addMagazineCargoGlobal [_glsmokewhite, 4];
		_vehicle addItemCargoGlobal [_bandages,6];
		_vehicle addItemCargoGlobal [_bloodbags,3];
		_vehicle addItemCargoGlobal [_morphine,6];
		_vehicle addItemCargoGlobal [_epinephrine,6];
	};

// CRATE: Small, ammo for 1 fireteam
	case "crate_small":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addMagazineCargoGlobal [_riflemag, 5];
		_vehicle addMagazineCargoGlobal [_glriflemag, 5];
		_vehicle addMagazineCargoGlobal [_armag, 5];
		_vehicle addMagazineCargoGlobal [_carbinemag, 5];
		_vehicle addMagazineCargoGlobal [_glmag, 5];
		_vehicle addMagazineCargoGlobal [_glsmokewhite, 4];
		_vehicle addWeaponCargoGlobal [_rat, 2];
		_vehicle addMagazineCargoGlobal [_grenade, 8];
		_vehicle addMagazineCargoGlobal [_mgrenade, 8];
		_vehicle addMagazineCargoGlobal [_smokegrenade, 8];
		_vehicle addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_vehicle addItemCargoGlobal [_bandages,10];
		_vehicle addItemCargoGlobal [_bloodbags,4];
		_vehicle addItemCargoGlobal [_morphine,8];
		_vehicle addItemCargoGlobal [_epinephrine,8];
	};

// CRATE: Medium, ammo for 1 squad
	case "crate_med":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addMagazineCargoGlobal [_riflemag, 15];
		_vehicle addMagazineCargoGlobal [_glriflemag, 20];
		_vehicle addMagazineCargoGlobal [_armag, 15];
		_vehicle addMagazineCargoGlobal [_carbinemag, 20];
		_vehicle addMagazineCargoGlobal [_glmag, 20];
		_vehicle addMagazineCargoGlobal [_glsmokewhite,16];
		_vehicle addWeaponCargoGlobal [_rat, 6];
		_vehicle addMagazineCargoGlobal [_grenade, 25];
		_vehicle addMagazineCargoGlobal [_mgrenade, 25];
		_vehicle addMagazineCargoGlobal [_smokegrenade, 25];
		_vehicle addMagazineCargoGlobal [_smokegrenadegreen, 6];
		_vehicle addItemCargoGlobal [_bandages, 25];
		_vehicle addItemCargoGlobal [_bloodbags,8];
		_vehicle addItemCargoGlobal [_morphine,12];
		_vehicle addItemCargoGlobal [_epinephrine,12];
	};

// CRATE: Large, ammo for 1 platoon
	case "crate_large":
	{
		clearWeaponCargoGlobal _vehicle;
		clearMagazineCargoGlobal _vehicle;
		clearItemCargoGlobal _vehicle;
		clearBackpackCargoGlobal _vehicle;
		_vehicle addMagazineCargoGlobal [_riflemag, 45];
		_vehicle addMagazineCargoGlobal [_glriflemag, 60];
		_vehicle addMagazineCargoGlobal [_armag, 45];
		_vehicle addMagazineCargoGlobal [_carbinemag, 60];
		_vehicle addMagazineCargoGlobal [_glmag, 60];
		_vehicle addMagazineCargoGlobal [_glsmokewhite,50];
		_vehicle addWeaponCargoGlobal [_rat, 20];
		_vehicle addMagazineCargoGlobal [_grenade, 75];
		_vehicle addMagazineCargoGlobal [_mgrenade, 75];
		_vehicle addMagazineCargoGlobal [_smokegrenade, 75];
		_vehicle addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_vehicle addItemCargoGlobal [_bandages, 75];
		_vehicle addItemCargoGlobal [_bloodbags,20];
		_vehicle addItemCargoGlobal [_morphine,35];
		_vehicle addItemCargoGlobal [_epinephrine,35];
	};
};