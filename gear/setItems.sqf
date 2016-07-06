// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];
_vehicles = ["v_tr","v_car","crate_large","crate_med","crate_small"];

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "CUP_optic_CompM4"; // Fuck you Willem
_scope2 = "optic_DMS";				// De optic ding
_scope3 = "optic_SOS";				// SOS Scope - 18x - 75x

_bipod1 = "bipod_01_F_snd";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "NLD_blk_C8";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "NLD_blk_C8";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "CUP_smg_MP5A5";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "NLD_blk_C8GL";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "CUP_1Rnd_HE_M203";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "CUP_1Rnd_Smoke_M203";
_glsmokegreen = "CUP_1Rnd_SmokeGreen_M203";
_glsmokered = "CUP_1Rnd_SmokeRed_M203";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "CUP_FlareWhite_M203";
_glflarered = "CUP_FlareRed_M203";
_glflareyellow = "CUP_FlareYellow_M203";
_glflaregreen = "CUP_FlareGreen_M203";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "ACE_NVG_Wide";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Other items
_cigarette = "murshun_cigs_lighter";
_minedetector = "MineDetector";
_binoculars = "ACE_Yardage450";
_vector = "ACE_Vector";
_trag = "ACE_ATragMX";
_dagr = "ACE_DAGR";
_spotting_scope = "ACE_SpottingScope";
_rangecard = "ACE_RangeCard";
_kestrel = "ACE_Kestrel4500";
_gps = "ItemGPS";

// Backpacks
_bag 		= IF(lt_camo_var == "None") then {"NLD_WLD_Carryall_Empty"} else {[(format ["NLD?_%1_Carryall_Empty", lt_camo_var])	,"NLD_WLD_Carryall_Empty","CfgVehicles"] call LT_fnc_checkClassExist;};
_baguav 	= IF(lt_camo_var == "None") then {"NLD_WLD_Carryall_UAV"  } else {[(format ["NLD?_%1_Carryall_UAV",   lt_camo_var])	,"NLD_WLD_Carryall_UAV"	 ,"CfgVehicles"] call LT_fnc_checkClassExist;};
_bagmediumdiver = "B_AssaultPack_blk";		// used by divers
_baghmgg = "B_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================


// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "NLD_Minimi";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Medium MG
_MMG = "NLD_MAG";
_MMGmag = "NLD_200Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Marksman rifle
_DMrifle = "NLD_AWM";
_DMriflemag = "CUP_5Rnd_86x70_L115A1";

// Rifleman AT
_RAT = "NLD_AT4";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "CUP_launch_FIM92Stinger";
_SAMmag = "CUP_Stinger_M";

// Heavy AT
_HAT = "launch_B_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = "NLD_AWM";
_SNrifleMag = "CUP_5Rnd_86x70_L115A1";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================