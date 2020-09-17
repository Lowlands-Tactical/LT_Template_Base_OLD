// filename 	"NLD_C8s.sqf"
// loadout name "NLD C8 Silenced"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "COLT_Flashlight_Tan"; // ir laser
lt_template_attach2        	 = 	 "Colt_laser_pointer_tan"; // flashlight
lt_template_silencer1      	 = 	 "colt_suppressor_black";
lt_template_silencer2      	 = 	 "";
lt_template_scope1         	 = 	 "colt_scope_down";
lt_template_bipod2         	 = 	 "colt_grip";
lt_template_attachments    	 = 	 [lt_template_scope1,lt_template_silencer1];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle = "weapon_C8NLD_nogrip";
lt_template_riflemag = "30Rnd_556x45_Stanag";
lt_template_riflemag_t = "30Rnd_556x45_Stanag_red";

//Medic, Rifleman At
lt_template_carbine = "Weapon_C8NLD_nogrip";
lt_template_carbinemag = lt_template_riflemag;
lt_template_carbinemag_tr = lt_template_riflemag_t;

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg = "hgun_PDW2000_F";
lt_template_smgmag = "30Rnd_9x21_Mag";
lt_template_smgmag_tr = "30Rnd_9x21_Red_Mag";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle = "Weapon_C8NLD_BaseGL";
lt_template_glriflemag = "30Rnd_556x45_Stanag";
lt_template_glriflemag_tr = "30Rnd_556x45_Stanag_red";
lt_template_glmag = "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered = "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite = "UGL_FlareWhite_F";
lt_template_glflarered = "UGL_FlareRed_F";
lt_template_glflareyellow = "UGL_FlareYellow_F";
lt_template_glflaregreen = "UGL_FlareGreen_F";

// Automatic Rifleman
lt_template_AR = "CUP_lmg_M249";
lt_template_ARmag = "CUP_200Rnd_TE4_Green_Tracer_556x45_M249";
lt_template_ARmag_tr = "CUP_200Rnd_TE4_Green_Tracer_556x45_M249";

// Medium MG Gunner
lt_template_MMG = "CUP_lmg_M240";
lt_template_MMGmag = "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M";
lt_template_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Designated Marksman
lt_template_DMrifle = "arifle_SPAR_03_blk_F";
lt_template_DMriflemag = "20Rnd_762x51_Mag";

// Rifleman AT
lt_template_RAT = "CUP_launch_HCPF3";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT = "launch_B_Titan_short_tna_F";
lt_template_MATmag1 = "Titan_AT";
lt_template_MATmag2 = "Titan_AP";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM = "launch_B_Titan_tna_F";
lt_template_SAMmag = "Titan_AA";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT = "launch_B_Titan_short_tna_F";
lt_template_HATmag1 = "Titan_AT";
lt_template_HATmag2 = "Titan_AP";

// Sniper
lt_template_SNrifle = "cup_srifle_AWM_wdl";
lt_template_SNrifleMag = "CUP_5Rnd_86x70_L115A1";

// Static weapons
lt_template_baghmgg = "CUP_B_M2_Gun_Bag";
lt_template_baghmgag = "CUP_B_M2_Tripod_Bag";
lt_template_baghatg = "CUP_B_Tow_Gun_Bag";
lt_template_baghatag = "CUP_B_TOW_Tripod_Bag";
lt_template_bagmtrg = "CUP_B_M252_Gun_Bag";
lt_template_bagmtrag = "CUP_B_M252_Bipod_Bag";
