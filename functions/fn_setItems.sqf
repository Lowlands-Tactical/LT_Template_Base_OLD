// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = param [1,[],[[]]];
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];

if (_activated) then {

		lt_template_attach1 = _logic getVariable ["lt_template_attach1", "acc_pointer_IR" ];
		lt_template_attach2 = _logic getVariable ["lt_template_attach2", "acc_flashlight" ];
		lt_template_silencer1 = _logic getVariable ["lt_template_silencer1", "muzzle_snds_M" ];
		lt_template_silencer2 = _logic getVariable ["lt_template_silencer2", "muzzle_snds_H" ];
		lt_template_scope1 = _logic getVariable ["lt_template_scope1", "optic_Holosight"];
		lt_template_scope2 = _logic getVariable ["lt_template_scope2", "optic_DMS"];
		lt_template_scope3 = _logic getVariable ["lt_template_scope3", "optic_SOS" ];
		lt_template_bipod1 = _logic getVariable ["lt_template_bipod1", "bipod_01_F_snd" ];
		lt_template_bipod2 = _logic getVariable ["lt_template_bipod2", "bipod_02_F_blk" ];
		lt_template_attachments = _logic getVariable ["lt_template_attachments", ["acc_pointer_IR" , "optic_Holosight"]];
		lt_template_hg_silencer1 = _logic getVariable ["lt_template_hg_silencer1", "muzzle_snds_L" ];
		lt_template_hg_scope1 = _logic getVariable ["lt_template_hg_scope1", "optic_MRD"  ];
		lt_template_hg_attachments = _logic getVariable ["lt_template_hg_attachments", []];
		lt_template_rifle = _logic getVariable ["lt_template_rifle", "arifle_MX_F"  ];
		lt_template_riflemag = _logic getVariable ["lt_template_riflemag", "30Rnd_65x39_caseless_mag" ];
		lt_template_riflemag_t = _logic getVariable ["lt_template_riflemag_t", "30Rnd_65x39_caseless_mag_Tracer"  ];
		lt_template_carbine = _logic getVariable ["lt_template_carbine", "arifle_MXC_F"  ];
		lt_template_carbinemag = _logic getVariable ["lt_template_carbinemag", "30Rnd_65x39_caseless_mag" ];
		lt_template_carbinemag_tr = _logic getVariable ["lt_template_carbinemag_tr", "30Rnd_65x39_caseless_mag_Tracer"  ];
		lt_template_smg = _logic getVariable ["lt_template_smg", "SMG_01_F"  ];
		lt_template_smgmag = _logic getVariable ["lt_template_smgmag", "30Rnd_45ACP_Mag_SMG_01"  ];
		lt_template_smgmag_tr = _logic getVariable ["lt_template_smgmag_tr", "30Rnd_45ACP_Mag_SMG_01_tracer_green"  ];
		lt_template_diverWep = _logic getVariable ["lt_template_diverWep", "arifle_SDAR_F"  ];
		lt_template_diverMag1 = _logic getVariable ["lt_template_diverMag1", "30Rnd_556x45_Stanag"  ];
		lt_template_diverMag2 = _logic getVariable ["lt_template_diverMag2", "20Rnd_556x45_UW_mag"  ];
		lt_template_glrifle = _logic getVariable ["lt_template_glrifle", "arifle_MX_GL_F"  ];
		lt_template_glriflemag = _logic getVariable ["lt_template_glriflemag", "30Rnd_65x39_caseless_mag"  ];
		lt_template_glriflemag_tr = _logic getVariable ["lt_template_glriflemag_tr", "30Rnd_65x39_caseless_mag_Tracer"  ];
		lt_template_glmag = _logic getVariable ["lt_template_glmag", "1Rnd_HE_Grenade_shell" ];
		lt_template_glsmokewhite = _logic getVariable ["lt_template_glsmokewhite", "1Rnd_Smoke_Grenade_shell"  ];
		lt_template_glsmokegreen = _logic getVariable ["lt_template_glsmokegreen", "1Rnd_SmokeGreen_Grenade_shell"  ];
		lt_template_glsmokered = _logic getVariable ["lt_template_glsmokered", "1Rnd_SmokeRed_Grenade_shell"  ];
		lt_template_glflarewhite = _logic getVariable ["lt_template_glflarewhite", "UGL_FlareWhite_F"  ];
		lt_template_glflarered = _logic getVariable ["lt_template_glflarered", "UGL_FlareRed_F"  ];
		lt_template_glflareyellow = _logic getVariable ["lt_template_glflareyellow", "UGL_FlareYellow_F" ];
		lt_template_glflaregreen = _logic getVariable ["lt_template_glflaregreen", "UGL_FlareGreen_F"  ];
		lt_template_pistol = _logic getVariable ["lt_template_pistol", "hgun_P07_F" ];
		lt_template_pistolmag = _logic getVariable ["lt_template_pistolmag", "16Rnd_9x21_Mag"  ];
		lt_template_AR = _logic getVariable ["lt_template_AR", "arifle_MX_SW_F"  ];
		lt_template_ARmag = _logic getVariable ["lt_template_ARmag", "100Rnd_65x39_caseless_mag"  ];
		lt_template_ARmag_tr = _logic getVariable ["lt_template_ARmag_tr", "100Rnd_65x39_caseless_mag_Tracer"  ];
		lt_template_MMG = _logic getVariable ["lt_template_MMG", "LMG_Mk200_LP_BI_F"  ];
		lt_template_MMGmag = _logic getVariable ["lt_template_MMGmag", "200Rnd_65x39_cased_Box"  ];
		lt_template_MMGmag_tr = _logic getVariable ["lt_template_MMGmag_tr", "200Rnd_65x39_cased_Box_Tracer"  ];
		lt_template_DMrifle = _logic getVariable ["lt_template_DMrifle", "arifle_MXM_F"  ];
		lt_template_DMriflemag = _logic getVariable ["lt_template_DMriflemag", "30Rnd_65x39_caseless_mag"  ];
		lt_template_RAT = _logic getVariable ["lt_template_RAT", "launch_NLAW_F"  ];
		lt_template_MAT = _logic getVariable ["lt_template_MAT", "launch_MRAWS_olive_F"  ];
		lt_template_MATmag1 = _logic getVariable ["lt_template_MATmag1", "MRAWS_HEAT_F"  ];
		lt_template_MATmag2 = _logic getVariable ["lt_template_MATmag2", "MRAWS_HE_F"  ];
		lt_template_SAM = _logic getVariable ["lt_template_SAM", "launch_B_Titan_F"  ];
		lt_template_SAMmag = _logic getVariable ["lt_template_SAMmag", "Titan_AA"  ];
		lt_template_HAT = _logic getVariable ["lt_template_HAT", "launch_B_Titan_short_F"  ];
		lt_template_HATmag1 = _logic getVariable ["lt_template_HATmag1", "Titan_AT"  ];
		lt_template_HATmag2 = _logic getVariable ["lt_template_HATmag2", "Titan_AP"  ];
		lt_template_SNrifle = _logic getVariable ["lt_template_SNrifle", "srifle_LRR_F"  ];
		lt_template_SNrifleMag = _logic getVariable ["lt_template_SNrifleMag", "7Rnd_408_Mag"  ];
		lt_template_grenade = _logic getVariable ["lt_template_grenade", "HandGrenade"  ];
		lt_template_Mgrenade = _logic getVariable ["lt_template_Mgrenade", "MiniGrenade"  ];
		lt_template_smokegrenade = _logic getVariable ["lt_template_smokegrenade", "SmokeShell" ];
		lt_template_smokegrenadegreen = _logic getVariable ["lt_template_smokegrenadegreen", "SmokeShellGreen"  ];
		lt_template_firstaid = _logic getVariable ["lt_template_firstaid", "FirstAidKit" ];
		lt_template_medkit = _logic getVariable ["lt_template_medkit", "Medikit" ];
		lt_template_bandages = _logic getVariable ["lt_template_bandages", "ACE_fieldDressing" ];
		lt_template_morphine = _logic getVariable ["lt_template_morphine", "ACE_morphine" ];
		lt_template_epinephrine = _logic getVariable ["lt_template_epinephrine", "ACE_epinephrine"  ];
		lt_template_bloodbags = _logic getVariable ["lt_template_bloodbags", "ACE_bloodIV"  ];
		lt_template_nvg = _logic getVariable ["lt_template_nvg", "ACE_NVG_Wide"  ];
		lt_template_uavterminal = _logic getVariable ["lt_template_uavterminal", "B_UavTerminal"];
		lt_template_chemgreen = _logic getVariable ["lt_template_chemgreen", "Chemlight_green"  ];
		lt_template_chemred = _logic getVariable ["lt_template_chemred", "Chemlight_red" ];
		lt_template_chemyellow = _logic getVariable ["lt_template_chemyellow", "Chemlight_yellow" ];
		lt_template_chemblue = _logic getVariable ["lt_template_chemblue", "Chemlight_blue"  ];
		lt_templatecigarette = _logic getVariable ["lt_templatecigarette", "murshun_cigs_lighter" ];
		lt_template_advancedbinoculars = _logic getVariable ["lt_template_advancedbinoculars", "ACE_Vector"  ];
		lt_template_simplebinoculars = _logic getVariable ["lt_template_simplebinoculars", "Binocular" ];
		lt_template_atragmx = _logic getVariable ["lt_template_atragmx", "ACE_ATragMX" ];
		lt_templatedagr = _logic getVariable ["lt_templatedagr", "ACE_DAGR" ];
		lt_template_spotting_scope = _logic getVariable ["lt_template_spotting_scope", "ACE_SpottingScope" ];
		lt_template_rangecard = _logic getVariable ["lt_template_rangecard", "ACE_RangeCard" ];
		lt_template_kestrel = _logic getVariable ["lt_template_kestrel", "ACE_Kestrel4500" ];
		lt_template_gps = _logic getVariable ["lt_template_gps", "ItemGPS" ];
		lt_template_telephone = _logic getVariable ["lt_template_telephone", "ItemAndroid"  ];
		lt_template_maptools = _logic getVariable ["lt_template_maptools", "ACE_MapTools"  ];
		lt_template_mapflashlight = _logic getVariable ["lt_template_mapflashlight", "ACE_Flashlight_XL50"  ];
		lt_template_map = _logic getVariable ["lt_template_map", "ItemMap"  ];
		lt_template_compass = _logic getVariable ["lt_template_compass", "ItemCompass"  ];
		lt_template_radio = _logic getVariable ["lt_template_radio", "ItemRadio"  ];
		lt_template_watch = _logic getVariable ["lt_template_watch", "ItemWatch"  ];
    lt_template_spade = _logic getVariable ["lt_template_spade", "ACE_EntrenchingTool" ];
		lt_template_ATmine = _logic getVariable ["lt_template_ATmine", "ATMine_Range_Mag"  ];
		lt_template_satchel = _logic getVariable ["lt_template_satchel", "DemoCharge_Remote_Mag"  ];
		lt_template_APmine1 = _logic getVariable ["lt_template_APmine1", "APERSBoundingMine_Range_Mag"  ];
		lt_template_APmine2 = _logic getVariable ["lt_template_APmine2", "APERSMine_Range_Mag"];
		lt_template_toolkit = _logic getVariable ["lt_template_toolkit", "ToolKit"  ];
		lt_template_clacker = _logic getVariable ["lt_template_clacker", "ACE_Clacker"  ];
		lt_template_minedetector = _logic getVariable ["lt_template_minedetector", "MineDetector"  ];
		lt_template_bagmediumdiver = _logic getVariable ["lt_template_bagmediumdiver", "B_AssaultPack_blk"  ];
		lt_template_baghmgg = _logic getVariable ["lt_template_baghmgg", "B_HMG_01_weapon_F"  ];
		lt_template_baghmgag = _logic getVariable ["lt_template_baghmgag", "B_HMG_01_support_F"  ];
		lt_template_baghatg = _logic getVariable ["lt_template_baghatg", "B_AT_01_weapon_F"  ];
		lt_template_baghatag = _logic getVariable ["lt_template_baghatag", "B_HMG_01_support_F"  ];
		lt_template_bagmtrg = _logic getVariable ["lt_template_bagmtrg", "B_Mortar_01_weapon_F"  ];
		lt_template_bagmtrag = _logic getVariable ["lt_template_bagmtrag", "B_Mortar_01_support_F"  ];
		lt_template_baghsamg = _logic getVariable ["lt_template_baghsamg", "B_AA_01_weapon_F"  ];
		lt_template_baghsamag = _logic getVariable ["lt_template_baghsamag", "B_HMG_01_support_F"];

};

true
