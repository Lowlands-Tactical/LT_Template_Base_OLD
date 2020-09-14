// filename 	"NLD_DSI.sqf"
// loadout name "NLD DSI"

// Attachments Primary weapon
lt_template_attach1        	 = 	 ""; // ir laser
lt_template_attach2        	 = 	 "acc_flashlight"; // flashlight
lt_template_silencer1      	 = 	 "muzzle_snds_M";
lt_template_silencer2      	 = 	 "";
lt_template_scope1         	 = 	 "optic_MRCO";
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_scope1,lt_template_silencer1];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle = "arifle_SPAR_01_blk_F";
lt_template_riflemag = "30Rnd_556x45_Stanag";
lt_template_riflemag_t = "30Rnd_556x45_Stanag_red";

//Medic, Rifleman At
lt_template_carbine = "arifle_SPAR_01_blk_F";
lt_template_carbinemag = lt_template_riflemag;
lt_template_carbinemag_tr = lt_template_riflemag_t;

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg = "CUP_smg_MP5A5_flashlight";
lt_template_smgmag = "CUP_30Rnd_9x19_MP5";
lt_template_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle = "CUP_smg_MP5A5_flashlight";
lt_template_glriflemag = "CUP_30Rnd_9x19_MP5";
lt_template_glriflemag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
lt_template_glmag = "";
lt_template_glsmokewhite = "";
lt_template_glsmokegreen = "";
lt_template_glsmokered = "";
lt_template_glflarewhite = "";
lt_template_glflarered = "";
lt_template_glflareyellow = "";
lt_template_glflaregreen = "";

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
