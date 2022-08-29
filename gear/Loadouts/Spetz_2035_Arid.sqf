// filename 	"MSBS_Grot.sqf"
// loadout name "MSBS Grot"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "acc_pointer_IR"; // ir laser
lt_template_attach2        	 = 	 "acc_flashlight"; // flashlight
lt_template_attachDM         = 	 "acc_pointer_IR"; // DM
lt_template_attachSNP        = 	 "CUP_optic_PSO_3"; // Snip

lt_template_silencer1      	 = 	 "muzzle_snds_B_arid_F"; // rifles
lt_template_silencerSMG      	 = 	 "muzzle_snds_B_arid_F"; // MG
lt_template_silencerDM       = 	 ""; // DM
lt_template_silencerSNP      = 	 "CUP_muzzle_snds_KZRZP_SVD_desert"; // Snip

lt_template_scope1         	 = 	 "optic_Holosight_arid_F"; // normal scope
lt_template_scopeSNP         = 	 "optic_DMS_weathered_Kir_F"; // Sniper
lt_template_scopeDM          = 	 "CUP_optic_PSO_1_1_open"; // DM

lt_template_bipod1         	 = 	 "bipod_01_F_blk"; // MG
lt_template_bipod2         	 = 	 "";

lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1         	 = 	 "muzzle_snds_L";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments         	 = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "arifle_AK12_arid_F";
lt_template_riflemag       	 = 	 "30rnd_762x39_AK12_Arid_Mag_F";
lt_template_riflemag_t     	 = 	 "30rnd_762x39_AK12_Arid_Mag_Tracer_F";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "arifle_AK12U_arid_F";
lt_template_carbinemag     	 = 	 "30rnd_762x39_AK12_Arid_Mag_F";
lt_template_carbinemag_tr    = 	 "30rnd_762x39_AK12_Arid_Mag_Tracer_F";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "CUP_arifle_X95_Grippod";
lt_template_smgmag         	 = 	 "CUP_30Rnd_556x45_X95";
lt_template_smgmag_tr      	 = 	 "CUP_30Rnd_556x45_X95_Tracer_Red";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle        	 = 	 "arifle_AK12_GL_arid_F";
lt_template_glriflemag     	 = 	 "30rnd_762x39_AK12_Arid_Mag_F";
lt_template_glriflemag_tr    = 	 "30rnd_762x39_AK12_Arid_Mag_Tracer_F";
lt_template_glmag          	         = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	 = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	 = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered     	         = 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite           	 = 	 "UGL_FlareWhite_F";
lt_template_glflarered     	         = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	 = 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	 = 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol         	 = 	 "hgun_Rook40_F";
lt_template_pistolmag      	 = 	 "16Rnd_9x21_Mag";

// Automatic Rifleman
lt_template_AR     	 = 	 "arifle_RPK12_arid_F";
lt_template_ARmag          	 = 	 "75rnd_762x39_AK12_Arid_Mag_F";
lt_template_ARmag_tr       	 = 	 "75rnd_762x39_AK12_Arid_Mag_Tracer_F";

// Medium MG Gunner
lt_template_MMG    	 = 	 "CUP_lmg_PKM_B50_vfg";
lt_template_MMGmag         	 = 	 "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
lt_template_MMGmag_tr      	 = 	 "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

// Designated Marksman
lt_template_DMrifle        	 = 	 "srifle_DMR_04_F";
lt_template_DMriflemag     	 = 	 "10Rnd_127x54_Mag";

// Rifleman AT
lt_template_RAT = "launch_RPG32_green_F";
lt_template_RATmag1        	 = 	 "RPG32_F";
lt_template_RATmag2        	 = 	 "RPG32_F";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	 = 	 "launch_I_Titan_short_F";
lt_template_MATmag1        	 = 	 "Titan_AT";
lt_template_MATmag2        	 = 	 "Titan_AT";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM    	 = 	 "launch_B_Titan_olive_F";
lt_template_SAMmag         	 = 	 "Titan_AA";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT    	 = 	 "launch_I_Titan_short_F";
lt_template_HATmag1        	 = 	 "Titan_AT";
lt_template_HATmag2        	 = 	 "Titan_AT";

// Sniper
lt_template_SNrifle             =      "CUP_srifle_SVD_des";
lt_template_SNrifleMag          =      "CUP_10Rnd_762x54_SVD_M";

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
