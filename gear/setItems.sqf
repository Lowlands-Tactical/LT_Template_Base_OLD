// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_lt_camo_var_array = call compile lt_camo_var;

// ATTACHMENTS - PRIMARY
_attach1 = if (isNil "lt_template_attach1") then {"acc_pointer_IR"} else {lt_template_attach1};		// IR Laser
_attach2 = if (isNil "lt_template_attach2") then {"acc_flashlight"} else {lt_template_attach2};		// Flashlight
_attachDM = if (isNil "lt_template_attachDM") then {"acc_pointer_IR"} else {lt_template_attachDM};		// DM
_attachSNP = if (isNil "lt_template_attachSNP") then {"acc_pointer_IR"} else {lt_template_attachSNP};		// Sniper

_silencer1 = if (isNil "lt_template_silencer1") then {"muzzle_snds_M"} else {lt_template_silencer1};	// 5.56 suppressor
_silencerSMG = if (isNil "lt_template_silencerSMG") then {"None"} else {lt_template_silencerSMG}; 	// SMG Sup
_silencerDM = if (isNil "lt_template_silencerDM") then {"None"} else {lt_template_silencerDM};	// DM
_silencerSNP = if (isNil "lt_template_silencerSNP") then {"None"} else {lt_template_silencerSNP}; 	// Sniper

_scope1 = if (isNil "lt_template_scope1") then {"optic_Holosight"} else {lt_template_scope1};  	// General Scope
_scopeMG = if (isNil "lt_template_scopeMG") then {"optic_Holosight"} else {lt_template_scopeMG};  	// General Scope
_scopeSNP = if (isNil "lt_template_scopeSNP") then {"optic_SOS"} else {lt_template_scopeSNP};				// Sniper Scope
_scopeDM = if (isNil "lt_template_scopeDM") then {"optic_DMS"} else {lt_template_scopeDM}; 			// Marksman
_scopeRAT = if (isNil "lt_template_RAT_scope") then {"None"} else {lt_template_RAT_scope};  	// Scope voor RAT
_scopeMAT = if (isNil "lt_template_MAT_scope") then {"None"} else {lt_template_MAT_scope};  	// Scope voor MAT
_scopeHAT = if (isNil "lt_template_HAT_scope") then {"None"} else {lt_template_HAT_scope};  	// Scope voor HAT

_bipod1 = if (isNil "lt_template_bipod1") then {"bipod_01_F_snd"} else {lt_template_bipod1};		// Default bipod
_bipod2 = if (isNil "lt_template_bipod2") then {"bipod_02_F_blk"} else {lt_template_bipod2};		// Black bipod
_bipodDM = if (isNil "lt_template_bipodDM") then {"bipod_02_F_blk"} else {lt_template_bipodDM};		// Black bipod

// Default setup
_attachments = if (isNil "lt_template_attachments") then {[_attach1,_scope1]} else {if (typename lt_template_attachments == "ARRAY") then {lt_template_attachments} else {lt_template_attachments splitstring " ,";};}; // The default attachment set for most units, overwritten in the individual unitType
diag_log format ["*-* LT Template Base *-* array: %1 select 0: %2 typename: %3", _attachments, _attachments select 0, typename _attachments];
// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = if (isNil "lt_template_hg_silencer1") then {"muzzle_snds_L"} else {lt_template_hg_silencer1};	// .45 suppressor

_hg_scope1 = if (isNil "lt_template_hg_scope1") then {"optic_MRD"} else {lt_template_hg_scope1};			// MRD

// Default setup
_hg_attachments = if (isNil "lt_template_hg_attachments") then {[]} else {lt_template_hg_attachments}; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = if (isNil "lt_template_rifle" ) then {"arifle_MX_F"} else {lt_template_rifle};
_riflemag = if (isNil "lt_template_riflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_riflemag};
_riflemag_tr = if (isNil "lt_template_riflemag_t") then {"30Rnd_65x39_caseless_mag_Tracer_Red"} else {lt_template_riflemag_t};

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = if (isNil "lt_template_carbine" ) then {"arifle_MXC_F"} else {lt_template_carbine};
_carbinemag = if (isNil "lt_template_carbinemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_carbinemag};
_carbinemag_tr = if (isNil "lt_template_carbinemag_tr") then {"30Rnd_65x39_caseless_mag_Tracer_Red"} else {lt_template_carbinemag_tr};

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = if (isNil "lt_template_smg") then {"SMG_01_F"} else {lt_template_smg};
_smgmag = if (isNil "lt_template_smgmag") then {"30Rnd_45ACP_Mag_SMG_01"} else {lt_template_smgmag};
_smgmag_tr = if (isNil "lt_template_smgmag_tr") then {"30Rnd_45ACP_Mag_SMG_01_tracer_green"} else {lt_template_smgmag_tr};

// Diver
_diverWep = if (isNil "lt_template_diverWep") then {"arifle_SDAR_F"} else {lt_template_diverWep};
_diverMag1 = if (isNil "lt_template_diverMag1") then {"20Rnd_556x45_UW_mag"} else {lt_template_diverMag1};
_diverMag2 = if (isNil "lt_template_diverMag2") then {"20Rnd_556x45_UW_mag"} else {lt_template_diverMag2};

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = if (isNil "lt_template_glrifle") then {"NLD_blk_C8GL"} else {lt_template_glrifle};
_glriflemag = if (isNil "lt_template_glriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_glriflemag};
_glriflemag_tr = if (isNil "lt_template_glriflemag_tr") then {"30Rnd_65x39_caseless_mag_Tracer_Red"} else {lt_template_glriflemag_tr};
_glmag = if (isNil "lt_template_glmag") then {"1Rnd_HE_Grenade_shell"} else {lt_template_glmag};

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = if (isNil "lt_template_glsmokewhite") then {"1Rnd_Smoke_Grenade_shell"} else {lt_template_glsmokewhite};
_glsmokegreen = if (isNil "lt_template_glsmokegreen") then {"1Rnd_SmokeGreen_Grenade_shell"} else {lt_template_glsmokegreen};
_glsmokered = if (isNil "lt_template_glsmokered") then {"1Rnd_SmokeRed_Grenade_shell"} else {lt_template_glsmokered};

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = if (isNil "lt_template_glflarewhite") then {"UGL_FlareWhite_F"} else {lt_template_glflarewhite};
_glflarered = if (isNil "lt_template_glflarered") then {"UGL_FlareRed_F"} else {lt_template_glflarered};
_glflareyellow = if (isNil "lt_template_glflareyellow") then {"UGL_FlareYellow_F"} else {lt_template_glflareyellow};
_glflaregreen = if (isNil "lt_template_glflaregreen") then {"UGL_FlareGreen_F"} else {};

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = if (isNil "lt_template_pistol") then {"hgun_P07_F"} else {lt_template_pistol};
_pistolmag = if (isNil "lt_template_pistolmag") then {"16Rnd_9x21_Mag"} else {lt_template_pistolmag};

// Heavier Pistol (Commander, Commisar)
_bigPistol = if (isNil "lt_template_big_pistol") then {"hgun_P07_F"} else {lt_template_big_pistol};
_bigPistolmag = if (isNil "lt_template_big_pistolmag") then {"16Rnd_9x21_Mag"} else {lt_template_big_pistolmag};

// Grenades
_grenade = if (isNil "lt_template_grenade") then {"HandGrenade"} else {lt_template_grenade};
_Mgrenade = if (isNil "lt_template_Mgrenade") then {"MiniGrenade"} else {lt_template_Mgrenade};
_smokegrenade = if (isNil "lt_template_smokegrenade") then {"SmokeShell"} else {lt_template_smokegrenade};
_smokegrenadegreen = if (isNil "lt_template_smokegrenadegreen") then {"SmokeShellGreen"} else {lt_template_smokegrenadegreen};

// misc medical items.
_firstaid = if (isNil "lt_template_firstaid") then {"FirstAidKit"} else {lt_template_firstaid};
_medkit = if (isNil "lt_template_medkit") then {"Medikit"} else {lt_template_medkit};
_bandages = if (isNil "lt_template_bandages" ) then {"ACE_fieldDressing"} else {lt_template_bandages};
_elasticbandages = if (isNil "lt_template_elasticbandages" ) then {"ACE_elasticBandage"} else {lt_template_elasticbandages};
_quikclot = if (isNil "lt_template_quikclot" ) then {"ACE_quikclot"} else {lt_template_quikclot};
_tourniquet = if (isNil "lt_template_tourniquet" ) then {"ACE_tourniquet"} else {lt_template_tourniquet};
_splint = if (isNil "lt_template_splint" ) then {"ACE_splint"} else {lt_template_splint};
_morphine = if (isNil "lt_template_morphine" ) then {"ACE_morphine"} else {lt_template_morphine};
_epinephrine = if (isNil "lt_template_epinephrine" ) then {"ACE_epinephrine"} else {lt_template_epinephrine};
_bloodbags = if (isNil "lt_template_bloodbags" ) then {"ACE_bloodIV"} else {lt_template_bloodbags};
_plasmaIV = if (isNil "lt_template_plasmaIV" ) then {"ACE_plasmaIV_500"} else {lt_template_plasmaIV};
_saline = if (isNil "lt_template_saline" ) then {"ACE_salineIV_500"} else {lt_template_saline};
_surgicalKit = if (isNil "lt_template_surgicalKit" ) then {"ACE_surgicalKit"} else {lt_template_surgicalKit};

// Night Vision Goggles (NVGoggles)
_nvg = if (isNil "lt_template_nvg") then {"ACE_NVG_Wide"} else {lt_template_nvg};
_nvgSmarine = if (isNil "lt_template_nvgSmarine") then {"None"} else {lt_template_nvgSmarine};

// UAV Terminal
// _uavterminal = if (isNil "lt_template_uavterminal") then {"B_UavTerminal"} else {lt_template_uavterminal};
diag_log format["Player Side: %1", side player];
_uavterminal = switch (side player) do {
  case west: {"B_UavTerminal";};
  case east: {"O_UavTerminal";};
  case independent: {"I_UavTerminal";};
};
diag_log format["UAV Terminal: %1", _uavterminal];

// Chemlights
_chemgreen =  if (isNil "lt_template_chemgreen") then {"Chemlight_green"} else {lt_template_chemgreen};
_chemred = if (isNil "lt_template_chemred") then {"Chemlight_red"} else {lt_template_chemred};
_chemyellow =  if (isNil "lt_template_chemyellow") then {"Chemlight_yellow"} else {lt_template_chemyellow};
_chemblue = if (isNil "lt_template_chemblue") then {"Chemlight_blue"} else {lt_template_chemblue};

// Other items
_minedetector = if (isNil "lt_template_minedetector") then {"MineDetector"} else {lt_template_minedetector};
_cabletie = if (isNil "lt_template_cabletie") then {"ACE_CableTie"} else {lt_template_cabletie};

_rangefinder = if (isNil "lt_template_rangefinder") then {"ACE_Vector"} else {lt_template_rangefinder};
_laserdesignator = if (isNil "lt_template_laserdesignator") then {"Laserbatteries"} else {lt_template_laserdesignator};
_laserdesignatorBattery = if (isNil "lt_template_laserdesignatorBattery") then {"Laserdesignator_03"} else {lt_template_laserdesignatorBattery};
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

_spade = if (isNil "lt_template_spade") then {"ACE_EntrenchingTool"} else {lt_template_spade};

_PlasmaCoolantL = if (isNil "lt_template_PlasmaCoolantL") then {"ML700_L_Plasma_Coolant"} else {lt_template_PlasmaCoolantL};
_PlasmaCoolantS = if (isNil "lt_template_PlasmaCoolantS") then {"ML700_S_Plasma_Coolant"} else {lt_template_PlasmaCoolantS};

// Backpacks
_TypeName = typename (_lt_camo_var_array select 2);
_CamoVarBag = _lt_camo_var_array select 2;
_bag = _CamoVarBag;
_baguav 		= IF (_TypeName == "ARRAY") then {
	selectrandom _CamoVarBag
	} else {
		IF(typename (_lt_camo_var_array select 0) == "ARRAY") then {
			_lt_camo_var_array select 2;
		} else {
			if (_lt_camo_var_array select 0 == "None") then {
				"B_Carryall_khk"
			} else {
				_lt_camo_var_array select 2;
			};
		};
	};
_bagmediumdiver = if (isNil "lt_template_bagmediumdiver") then {"B_AssaultPack_blk"} else {lt_template_bagmediumdiver};			// used by divers
_baghmgg 		= if (isNil "lt_template_baghmgg") then {"B_HMG_01_weapon_F"} else {lt_template_baghmgg};			// used by Heavy MG gunner
_baghmgag 		= if (isNil "lt_template_baghmgag") then {"B_HMG_01_support_F"} else {lt_template_baghmgag};			// used by Heavy MG assistant gunner
_baghatg 		= if (isNil "lt_template_baghatg") then {"B_AT_01_weapon_F"} else {lt_template_baghatg};			// used by Heavy AT gunner
_baghatag 		= if (isNil "lt_template_baghatag") then {"B_HMG_01_support_F"} else {lt_template_baghatag};			// used by Heavy AT assistant gunner
_bagmtrg 		= if (isNil "lt_template_bagmtrg") then {"B_Mortar_01_weapon_F"} else {lt_template_bagmtrg};		// used by Mortar gunner
_bagmtrag 		= if (isNil "lt_template_bagmtrag") then {"B_Mortar_01_support_F"} else {lt_template_bagmtrag};		// used by Mortar assistant gunner
_baghsamg 		= if (isNil "lt_template_baghsamg") then {"B_AA_01_weapon_F"} else {lt_template_baghsamg};			// used by Heavy SAM gunner
_baghsamag 		= if (isNil "lt_template_baghsamag") then {"B_HMG_01_support_F"} else {lt_template_baghsamag};			// used by Heavy SAM assistant gunner

// ====================================================================================


// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = if (isNil "lt_template_AR") then {"arifle_MX_SW_F"} else {lt_template_AR};
_ARmag = if (isNil "lt_template_ARmag") then {"100Rnd_65x39_caseless_mag"} else {lt_template_ARmag};
_ARmag_tr = if (isNil "lt_template_ARmag_tr") then {"100Rnd_65x39_caseless_mag_Tracer"} else {lt_template_ARmag_tr};

// Medium MG
_MMG = if (isNil "lt_template_MMG") then {"LMG_Mk200_LP_BI_F"} else {lt_template_MMG};
_MMGmag = if (isNil "lt_template_MMGmag") then {"200Rnd_65x39_cased_Box"} else {lt_template_MMGmag};
_MMGmag_tr = if (isNil "lt_template_MMGmag_tr") then {"200Rnd_65x39_cased_Box_Tracer"} else {lt_template_MMGmag_tr};

// Heavy MG
_HMG = if (isNil "lt_template_HMG") then {"LMG_Mk200_LP_BI_F"} else {lt_template_HMG};
_HMGmag = if (isNil "lt_template_HMGmag") then {"200Rnd_65x39_cased_Box"} else {lt_template_HMGmag};
_HMGmag_tr = if (isNil "lt_template_HMGmag_tr") then {"200Rnd_65x39_cased_Box_Tracer"} else {lt_template_HMGmag_tr};

// Marksman rifle
_DMrifle = if (isNil "lt_template_DMrifle") then {"arifle_MXM_F"} else {lt_template_DMrifle};
_DMriflemag = if (isNil "lt_template_DMriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_DMriflemag};

// Rifleman AT
_RAT = if (isNil "lt_template_RAT") then {"launch_NLAW_F"} else {lt_template_RAT};
_RATmag1 = if (isNil "lt_template_RATmag1") then {"None"} else {lt_template_RATmag1};
_RATmag2 = if (isNil "lt_template_RATmag2") then {"None"} else {lt_template_RATmag2};

// Medium AT
_MAT = if (isNil "lt_template_MAT") then {"launch_MRAWS_olive_F"} else {lt_template_MAT};
_MATmag1 = if (isNil "lt_template_MATmag1") then {"MRAWS_HEAT_F"} else {lt_template_MATmag1};
_MATmag2 = if (isNil "lt_template_MATmag2") then {"MRAWS_HE_F"} else {lt_template_MATmag2};

// Heavy AT
_HAT = if (isNil "lt_template_HAT") then {"launch_B_Titan_short_F"} else {lt_template_HAT};
_HATmag1 = if (isNil "lt_template_HATmag1") then {"Titan_AT"} else {lt_template_HATmag1};
_HATmag2 = if (isNil "lt_template_HATmag2") then {"Titan_AP"} else {lt_template_HATmag2};

// Surface Air
_SAM = if (isNil "lt_template_SAM") then {"launch_B_Titan_F"} else {lt_template_SAM};
_SAMmag = if (isNil "lt_template_SAMmag") then {"Titan_AA"} else {lt_template_SAMmag};

// Plasma rifle
_PlasmaRifle = if (isNil "lt_template_PlasmaRifle") then {"arifle_MXM_F"} else {lt_template_PlasmaRifle};
_PlasmaRifleMag = if (isNil "lt_template_PlasmaRifleMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_PlasmaRifleMag};
_PlasmaRifleMag_tr = if (isNil "lt_template_PlasmaRifleMag_tr") then {"30Rnd_65x39_caseless_mag"} else {lt_template_PlasmaRifleMag_tr};

// Plasma pistol
_PlasmaPistol = if (isNil "lt_template_PlasmaPistol") then {"arifle_MXM_F"} else {lt_template_PlasmaPistol};
_PlasmaPistolMag = if (isNil "lt_template_PlasmaPistolMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_PlasmaPistolMag};
_PlasmaPistolMag_tr = if (isNil "lt_template_PlasmaPistolMag_tr") then {"30Rnd_65x39_caseless_mag"} else {lt_template_PlasmaPistolMag_tr};

// Flamer
_Flamer = if (isNil "lt_template_Flamer") then {"arifle_MXM_F"} else {lt_template_Flamer};
_FlamerMag = if (isNil "lt_template_FlamerMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_FlamerMag};

// Shotgun
_Shotrifle = if (isNil "lt_template_Shotrifle") then {"arifle_MXM_F"} else {lt_template_Shotrifle};
_ShotrifleMag = if (isNil "lt_template_ShotrifleMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_ShotrifleMag};

// Marksman rifle
_DMrifle = if (isNil "lt_template_DMrifle") then {"arifle_MXM_F"} else {lt_template_DMrifle};
_DMriflemag = if (isNil "lt_template_DMriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_DMriflemag};

// Sniper
_SNrifle = if (isNil "lt_template_SNrifle") then {"srifle_LRR_F"} else {lt_template_SNrifle};
_SNrifleMag = if (isNil "lt_template_SNrifleMag") then {"7Rnd_408_Mag"} else {lt_template_SNrifleMag};

// Grenade Launcher
_GrenLauncher = if (isNil "lt_template_GrenLauncher") then {"lt_template_glrifle"} else {lt_template_GrenLauncher};
_GrenLauncherMag = if (isNil "lt_template_GrenLauncherMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_GrenLauncherMag};
_GrenLauncherMag_AT = if (isNil "lt_template_GrenLauncherMag_AT") then {"1Rnd_HE_Grenade_shell"} else {lt_template_GrenLauncherMag_AT};
_GrenLauncherMag_Bck = if (isNil "lt_template_GrenLauncherMag_Bck") then {"1Rnd_HE_Grenade_shell"} else {lt_template_GrenLauncherMag_Bck};
_GrenLauncherMag_Smk = if (isNil "lt_template_GrenLauncherMag_Smk") then {"1Rnd_HE_Grenade_shell"} else {lt_template_GrenLauncherMag_Smk};
_GrenLauncherMag_Flr = if (isNil "lt_template_GrenLauncherMag_Flr") then {"1Rnd_HE_Grenade_shell"} else {lt_template_GrenLauncherMag_Flr};
_GrenLauncherMag_Flm = if (isNil "lt_template_GrenLauncherMag_Flm") then {"1Rnd_HE_Grenade_shell"} else {lt_template_GrenLauncherMag_Flm};

// Special Guns
_Speshalrifle = if (isNil "lt_template_Speshalrifle") then {"arifle_MXM_F"} else {lt_template_Speshalrifle};
_Speshalriflemag = if (isNil "lt_template_SpeshalrifleMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_SpeshalrifleMag};
_Speshalriflemag_tr = if (isNil "lt_template_SpeshalrifleMag_tr") then {"30Rnd_65x39_caseless_mag"} else {lt_template_SpeshalrifleMag_tr};

// Faction Sepcifics
// Ranger
_Rangerrifle = if (isNil "lt_template_Rangerrifle") then {"ML700_Galvanic_Rifle"} else {lt_template_Rangerrifle};
_Rangerscope = if (isNil "lt_template_Rangerscope") then {"ML700_Galvanic_scope"} else {lt_template_Rangerscope};
_Rangerriflemag = if (isNil "lt_template_Rangerriflemag") then {"ML700_Galvanic_Rifle_Battery"} else {lt_template_Rangerriflemag};

// Ranger AT
_RangerATrifle = if (isNil "lt_template_RangerATrifle") then {"ML700_Transuranic_Arquebus_Rifle"} else {lt_template_RangerATrifle};
_RangerATscope = if (isNil "lt_template_RangerATscope") then {"ML700_Transuranic_Arquebus_scope"} else {lt_template_RangerATscope};
_RangerATriflemag = if (isNil "lt_template_RangerATriflemag") then {"ML700_Transuranic_Arquebus_Battery"} else {lt_template_RangerATriflemag};

// Sisters Rifle
_Sisterrifle = if (isNil "lt_template_Sisterrifle") then {"ML700_Bolter_F"} else {lt_template_Sisterrifle};
_Sisterriflemag = if (isNil "lt_template_Sisterriflemag") then {"ML700_Bolter_Stanag"} else {lt_template_Sisterriflemag};

// SPACE MARINES
// Space Marine Bolter
_Smarinerifle = if (isNil "lt_template_Smarinerifle") then {"TIOW_GodwynBoltgun_2"} else {lt_template_Smarinerifle};
_Smarineriflemag = if (isNil "lt_template_Smarineriflemag") then {"TIOW_30rnd_GodwynBoltgunMag"} else {lt_template_Smarineriflemag};

// Space Marine Plasma
_SmarinePlasmarifle = if (isNil "lt_template_SmarinePlasmarifle") then {"TIOW_SM_Ragefire_PlasmaGun"} else {lt_template_SmarinePlasmarifle};
_SmarinePlasmariflemag = if (isNil "lt_template_SmarinePlasmariflemag") then {"TIOW_SM_Plasmagun_Mag"} else {lt_template_SmarinePlasmariflemag};

// Space Marine Heavy Bolter
_SmarineHeavyrifle = if (isNil "lt_template_SmarineHeavyrifle") then {"TIOW_Mars_HeavyBolter"} else {lt_template_SmarineHeavyrifle};
_SmarineHeavyriflemag = if (isNil "lt_template_SmarineHeavyriflemag") then {"TIOW_Mars_HeavyBolterMag_85rnd"} else {lt_template_SmarineHeavyriflemag};

// Space Marine Meltagun
_SmarineMeltarifle = if (isNil "lt_template_SmarineMeltarifle") then {"TIOW_SM_MeltaGun_01"} else {lt_template_SmarineMeltarifle};
_SmarineMeltariflemag = if (isNil "lt_template_SmarineMeltariflemag") then {"TIOW_Meltagun_Mag"} else {lt_template_SmarineMeltariflemag};

// Space Marine Flamethrower
_SmarineFlamethrifle = if (isNil "lt_template_SmarineFlamethrifle") then {"TIOW_SM_Flamer"} else {lt_template_SmarineFlamethrifle};
_SmarineFlamethriflemag = if (isNil "lt_template_SmarineFlamethriflemag") then {"TIOW_SM_Flamer_mag"} else {lt_template_SmarineFlamethriflemag};


// Engineer items
_ATmine = if (isNil "lt_template_ATmine") then {"ATMine_Range_Mag"} else {lt_template_ATmine};
_satchel = if (isNil "lt_template_satchel") then {"DemoCharge_Remote_Mag"} else {lt_template_satchel};
_APmine1 = if (isNil "lt_template_APmine1") then { "APERSBoundingMine_Range_Mag"} else {lt_template_APmine1};
_APmine2 = if (isNil "lt_template_APmine2") then {"APERSMine_Range_Mag"} else {lt_template_APmine2};

// Respawn stuff
_respawn = if (isNil "lt_template_respawn") then {"B_Patrol_Respawn_bag_F"} else {lt_template_respawn};
