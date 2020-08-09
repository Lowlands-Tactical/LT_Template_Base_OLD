// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

_lt_camo_var_array = call compile lt_camo_var;

// ATTACHMENTS - PRIMARY
_attach1 = if (isNil "lt_template_attach1") then {"acc_pointer_IR"} else {lt_template_attach1};		// IR Laser
_attach2 = if (isNil "lt_template_attach2") then {"acc_flashlight"} else {lt_template_attach2};		// Flashlight

_silencer1 = if (isNil "lt_template_silencer1") then {"muzzle_snds_M"} else {lt_template_silencer1};	// 5.56 suppressor
_silencer2 = if (isNil "lt_template_silencer2") then {"muzzle_snds_H"} else {lt_template_silencer2}; 	// 6.5 suppressor

_scope1 = if (isNil "lt_template_scope1") then {"optic_Holosight"} else {lt_template_scope1};  	// Fuck you Willem
_scope2 = if (isNil "lt_template_scope2") then {"optic_DMS"} else {lt_template_scope2};				// De optic ding
_scope3 = if (isNil "lt_template_scope3") then {"optic_SOS"} else {lt_template_scope3}; 			// SOS Scope - 18x - 75x

_bipod1 = if (isNil "lt_template_bipod1") then {"bipod_01_F_snd"} else {lt_template_bipod1};		// Default bipod
_bipod2 = if (isNil "lt_template_bipod2") then {"bipod_02_F_blk"} else {lt_template_bipod2};		// Black bipod

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
_riflemag_tr = if (isNil "lt_template_riflemag_t") then {"30Rnd_65x39_caseless_mag_Tracer"} else {lt_template_riflemag_t};

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = if (isNil "lt_template_carbine" ) then {"arifle_MXC_F"} else {lt_template_carbine};
_carbinemag = if (isNil "lt_template_carbinemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_carbinemag};
_carbinemag_tr = if (isNil "lt_template_carbinemag_tr") then {"30Rnd_65x39_caseless_mag_Tracer"} else {lt_template_carbinemag_tr};

// Standard Submachine ( Commander, Squad Leader)
_smg = if (isNil "lt_template_smg") then {"SMG_01_F"} else {lt_template_smg};
_smgmag = if (isNil "lt_template_smgmag") then {"30Rnd_45ACP_Mag_SMG_01"} else {lt_template_smgmag};
_smgmag_tr = if (isNil "lt_template_smgmag_tr") then {"30Rnd_45ACP_Mag_SMG_01_tracer_green"} else {lt_template_smgmag_tr};

// GL and HE grenades (Grenadier)
_glrifle = if (isNil "lt_template_glrifle") then {"arifle_MX_GL_F"} else {lt_template_glrifle};
_glriflemag = if (isNil "lt_template_glriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_glriflemag};
_glriflemag_tr = if (isNil "lt_template_glriflemag_tr") then {"30Rnd_65x39_caseless_mag_Tracer"} else {lt_template_glriflemag_tr};
_glmag = if (isNil "lt_template_glmag") then {"1Rnd_HE_Grenade_shell"} else {lt_template_glmag};

// Smoke for Grenadiers
_glsmokewhite = if (isNil "lt_template_glsmokewhite") then {"1Rnd_Smoke_Grenade_shell"} else {lt_template_glsmokewhite};
_glsmokegreen = if (isNil "lt_template_glsmokegreen") then {"1Rnd_SmokeGreen_Grenade_shell"} else {lt_template_glsmokegreen};
_glsmokered = if (isNil "lt_template_glsmokered") then {"1Rnd_SmokeRed_Grenade_shell"} else {lt_template_glsmokered};

// Flares for Grenadiers
_glflarewhite = if (isNil "lt_template_glflarewhite") then {"UGL_FlareWhite_F"} else {lt_template_glflarewhite};
_glflarered = if (isNil "lt_template_glflarered") then {"UGL_FlareRed_F"} else {lt_template_glflarered};
_glflareyellow = if (isNil "lt_template_glflareyellow") then {"UGL_FlareYellow_F"} else {lt_template_glflareyellow};
_glflaregreen = if (isNil "lt_template_glflaregreen") then {"UGL_FlareGreen_F"} else {};

// Pistols (DC, Automatic Rifleman, Medium MG Gunner, Grenadier)
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

// Chemlights
_chemgreen =  if (isNil "lt_template_chemgreen") then {"Chemlight_green"} else {lt_template_chemgreen};
_chemred = if (isNil "lt_template_chemred") then {"Chemlight_red"} else {lt_template_chemred};
_chemyellow =  if (isNil "lt_template_chemyellow") then {"Chemlight_yellow"} else {lt_template_chemyellow};
_chemblue = if (isNil "lt_template_chemblue") then {"Chemlight_blue"} else {lt_template_chemblue};

// Other items
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

_spade = if (isNil "lt_template_spade") then {"ACE_EntrenchingTool"} else {lt_template_spade};

_PlasmaCoolantL = if (isNil "lt_template_PlasmaCoolantL") then {"ML700_L_Plasma_Coolant"} else {lt_template_PlasmaCoolantL};
_PlasmaCoolantS = if (isNil "lt_template_PlasmaCoolantS") then {"ML700_S_Plasma_Coolant"} else {lt_template_PlasmaCoolantS};

// Backpacks
_TypeName = typename (_lt_camo_var_array select 2);
_CamoVarBag = _lt_camo_var_array select 2;
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
_baghmgg 		= if (isNil "lt_template_baghmgg") then {"B_HMG_01_weapon_F"} else {lt_template_baghmgg};			// used by Heavy MG gunner
_baghmgag 		= if (isNil "lt_template_baghmgag") then {"B_HMG_01_support_F"} else {lt_template_baghmgag};			// used by Heavy MG assistant gunner
_baghatg 		= if (isNil "lt_template_baghatg") then {"B_AT_01_weapon_F"} else {lt_template_baghatg};			// used by Heavy AT gunner
_baghatag 		= if (isNil "lt_template_baghatag") then {"B_HMG_01_support_F"} else {lt_template_baghatag};			// used by Heavy AT assistant gunner
_bagmtrg 		= if (isNil "lt_template_bagmtrg") then {"B_Mortar_01_weapon_F"} else {lt_template_bagmtrg};		// used by Mortar gunner
_bagmtrag 		= if (isNil "lt_template_bagmtrag") then {"B_Mortar_01_support_F"} else {lt_template_bagmtrag};		// used by Mortar assistant gunner

// ====================================================================================


// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = if (isNil "lt_template_AR") then {"arifle_MX_SW_F"} else {lt_template_AR};
_ARmag = if (isNil "lt_template_ARmag") then {"100Rnd_65x39_caseless_mag"} else {lt_template_ARmag};
_ARmag_tr = if (isNil "lt_template_ARmag_tr") then {"100Rnd_65x39_caseless_mag_Tracer"} else {lt_template_ARmag_tr};

// Marksman rifle
_DMrifle = if (isNil "lt_template_DMrifle") then {"arifle_MXM_F"} else {lt_template_DMrifle};
_DMriflemag = if (isNil "lt_template_DMriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_DMriflemag};

// Rifleman AT
_RAT = if (isNil "lt_template_RAT") then {"launch_NLAW_F"} else {lt_template_RAT};
_RATmag1 = if (isNil "lt_template_RATmag1") then {""} else {lt_template_RATmag1};
_RATmag2 = if (isNil "lt_template_RATmag2") then {""} else {lt_template_RATmag2};

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

// Marksman rifle
_DMrifle = if (isNil "lt_template_DMrifle") then {"arifle_MXM_F"} else {lt_template_DMrifle};
_DMriflemag = if (isNil "lt_template_DMriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_DMriflemag};

// Shotgun
_Shotrifle = if (isNil "lt_template_Shotrifle") then {"arifle_MXM_F"} else {lt_template_Shotrifle};
_ShotrifleMag = if (isNil "lt_template_ShotrifleMag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_ShotrifleMag};

// Marksman rifle
_DMrifle = if (isNil "lt_template_DMrifle") then {"arifle_MXM_F"} else {lt_template_DMrifle};
_DMriflemag = if (isNil "lt_template_DMriflemag") then {"30Rnd_65x39_caseless_mag"} else {lt_template_DMriflemag};

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


// Engineer items
_ATmine = if (isNil "lt_template_ATmine") then {"ATMine_Range_Mag"} else {lt_template_ATmine};
_satchel = if (isNil "lt_template_satchel") then {"DemoCharge_Remote_Mag"} else {lt_template_satchel};
_APmine1 = if (isNil "lt_template_APmine1") then { "APERSBoundingMine_Range_Mag"} else {lt_template_APmine1};
_APmine2 = if (isNil "lt_template_APmine2") then {"APERSMine_Range_Mag"} else {lt_template_APmine2};

// Respawn stuff
_respawn = if (isNil "lt_template_respawn") then {"B_Patrol_Respawn_bag_F"} else {lt_template_respawn};
