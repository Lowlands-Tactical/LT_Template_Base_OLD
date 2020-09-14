// filename 	"BW_G36_FLeck.sqf"
// loadout name "Bundeswher - G36 Flecktarn"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "acc_pointer_IR"; // ir laser
lt_template_attach2        	 = 	 "acc_flashlight"; // flashlight
lt_template_silencer1      	 = 	 ""; // rifles
lt_template_silencer2      	 = 	 ""; // AR
lt_template_scope1         	 = 	 "CUP_optic_HoloWdl"; // normal scope
lt_template_scope2         	 = 	 "CUP_optic_SB_11_4x20_PM"; // scope DM
lt_template_scope3         	 = 	 ""; // Scope Sniper
lt_template_bipod1         	 = 	 "bipod_01_F_blk"; // Bipod
lt_template_bipod2         	 = 	 ""; // Black Bipod
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1         	 = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments         	 = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "CUP_arifle_G36A_RIS_wdl";
lt_template_riflemag       	 = 	 "CUP_30Rnd_556x45_G36_wdl";
lt_template_riflemag_t     	 = 	 "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "CUP_arifle_G36C_wdl";
lt_template_carbinemag     	 = 	 "CUP_30Rnd_556x45_G36_wdl";
lt_template_carbinemag_tr    = 	 "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "CUP_smg_MP7_woodland";
lt_template_smgmag         	 = 	 "CUP_40Rnd_46x30_MP7";
lt_template_smgmag_tr      	 = 	 "CUP_40Rnd_46x30_MP7_Red_Tracer";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle        	 = 	 "CUP_arifle_AG36_wdl";
lt_template_glriflemag     	 = 	 "CUP_30Rnd_556x45_G36_wdl";
lt_template_glriflemag_tr    = 	 "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl";
lt_template_glmag          	         = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	 = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	 = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered     	         = 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite           	 = 	 "UGL_FlareWhite_F";
lt_template_glflarered     	         = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	 = 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	 = 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol         	 = 	 "CUP_hgun_Glock17";
lt_template_pistolmag      	 = 	 "CUP_17Rnd_9x19_glock17";

// Automatic Rifleman
lt_template_AR     	 = 	 "CUP_arifle_MG36_wdl";
lt_template_ARmag          	 = 	 "CUP_100Rnd_556x45_BetaCMag";
lt_template_ARmag_tr       	 = 	 "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";

// Medium MG Gunner
lt_template_MMG    	 = 	 "CUP_lmg_MG3";
lt_template_MMGmag         	 = 	 "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
lt_template_MMGmag_tr      	 = 	 "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Designated Marksman
lt_template_DMrifle        	 = 	 "CUP_arifle_HK417_20_Wood";
lt_template_DMriflemag     	 = 	 "CUP_20Rnd_762x51_HK417_Camo_Wood";

// Rifleman AT
lt_template_RAT = "CUP_launch_HCPF3";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	 = 	 "CUP_launch_MAAWS";
lt_template_MAT_attachment   =   "CUP_optic_MAAWS_Scope";
lt_template_MATmag1        	 = 	 "CUP_MAAWS_HEAT_M";
lt_template_MATmag2        	 = 	 "CUP_MAAWS_HEAT_M";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM    	 = 	 "CUP_launch_FIM92Stinger";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT    	 = 	 "CUP_launch_Javelin";
lt_template_HATmag1        	 = 	 "CUP_Javelin_MCUP_Javelin_M";
lt_template_HATmag2        	 = 	 "CUP_Javelin_M";

// Sniper
lt_template_SNrifle             =      "CUP_srifle_G22_wdl";
lt_template_SNrifleMag          =      "CUP_5Rnd_762x67_G22";

// Grenades
lt_template_grenade        	 = 	 "CUP_HandGrenade_M67";
lt_template_Mgrenade       	 = 	 "MiniGrenade";

// Static weapons
lt_template_baghmgg        	 = 	 "B_HMG_01_high_weapon_F";
lt_template_baghmgag       	 = 	 "B_HMG_01_support_high_F";

lt_template_baghatg        	 = 	 "B_AT_01_weapon_F";
lt_template_baghatag       	 = 	 "B_HMG_01_support_F";

lt_template_bagmtrg        	 = 	 "B_Mortar_01_weapon_F";
lt_template_bagmtrag       	 = 	 "B_Mortar_01_support_F";
