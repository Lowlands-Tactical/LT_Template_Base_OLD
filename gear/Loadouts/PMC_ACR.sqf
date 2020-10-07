// filename 	"PMC ACR.sqf"
// loadout name "PMC ACR"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "cup_acc_llm01_l"; // ir laser
lt_template_attach2        	 = 	 "cup_acc_llm01_l"; // flashlight
lt_template_silencer1      	 = 	 "";
lt_template_silencerSMG    	 = 	 "muzzle_snds_570";
lt_template_scope1         	 = 	 "cup_optic_vortexrazor_uh1_black";
lt_template_scopeMG          = 	 "cup_optic_vortexrazor_uh1_black";
lt_template_scopeDM          = 	 "cup_optic_elcan_specterdr_kf_rmr_black";
lt_template_scopeSNP         = 	 "optic_lrps";
lt_template_bipod1         	 = 	 "cup_bipod_vltor_modpod_black";
lt_template_bipodDM          =   "cup_bipod_vltor_modpod_black";
lt_template_attachments    	 = 	 [lt_template_scope1,lt_template_silencer1,lt_template_bipod1];

// Handgun attachements
lt_template_hg_attachments         	 = 	 ["cup_muzzle_snds_mk23", "cup_acc_mk23_lam_f"];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "CUP_arifle_ACR_blk_68";
lt_template_riflemag       	 = 	 "CUP_30Rnd_680x43_Stanag";
lt_template_riflemag_t     	 = 	 "CUP_30Rnd_680x43_Stanag_Tracer_Red";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "CUP_arifle_ACRC_blk_68";
lt_template_carbinemag     	 = 	 "CUP_30Rnd_680x43_Stanag";
lt_template_carbinemag_tr    = 	 "CUP_30Rnd_680x43_Stanag_Tracer_Red";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "SMG_02_F";
lt_template_smgmag         	 = 	 "30Rnd_9x21_Mag_SMG_02";
lt_template_smgmag_tr      	 = 	 "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle    = 	 "CUP_arifle_ACR_EGLM_blk_68";
lt_template_glriflemag    = "CUP_30Rnd_680x43_Stanag";
lt_template_glriflemag_tr = "CUP_30Rnd_680x43_Stanag_Tracer_Red";
lt_template_glmag         = "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite  = "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen  = "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered    = "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite  = "UGL_FlareWhite_F";
lt_template_glflarered    = "UGL_FlareRed_F";
lt_template_glflareyellow = "UGL_FlareYellow_F";
lt_template_glflaregreen  = "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol        = 	 "CUP_hgun_Mk23";
lt_template_pistolmag      	 = 	 "CUP_12Rnd_45ACP_mk23";

// Automatic Rifleman
lt_template_AR     	 = 	 "CUP_arifle_RPK74M_railed";
lt_template_ARmag          	 = 	 "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
lt_template_ARmag_tr       	 = 	 "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Medium MG Gunner
lt_template_MMG    	 = 	 "CUP_lmg_M60E4";
lt_template_MMGmag         	 = 	 "CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M";
lt_template_MMGmag_tr      	 = 	 "CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M";

// Heavy MG Gunner
lt_template_HMG    	 = 	 "MMG_01_tan_F";
lt_template_HMGmag         	 = 	 "ACE_150Rnd_93x64_Mag_yellow";
lt_template_HMGmag_tr      	 = 	 "ACE_150Rnd_93x64_Mag_yellow";

// Designated Marksman
lt_template_DMrifle        	 = 	 "CUP_srifle_RSASS_Black";
lt_template_DMriflemag     	 = 	 "CUP_20Rnd_TE1_White_Tracer_762x51_M110";

// Rifleman AT
lt_template_RAT    	 = 	 "CUP_launch_RPG18";
lt_template_RATmag1    	 = 	 "";
lt_template_RATmag2    	 = 	 "";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	 = 	 "CUP_launch_Mk153Mod0";
lt_template_MATmag1        	 = 	 "CUP_SMAW_HEDP_M";
lt_template_MATmag2        	 = 	 "CUP_SMAW_HEAA_M";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM    	 = 	 "CUP_launch_FIM92Stinger";
lt_template_SAMmag         	 = 	 "CUP_Stinger_M";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT    	 = 	 "CUP_launch_Javelin";
lt_template_HATmag1        	 = 	 "CUP_Javelin_M";
lt_template_HATmag2        	 = 	 "CUP_Javelin_M";

// Sniper
lt_template_SNrifle             =      "CUP_srifle_AS50";
lt_template_SNrifleMag          =      "CUP_5Rnd_127x99_as50_M";

// Grenades
lt_template_grenade        	 = 	 "CUP_HandGrenade_M67";
lt_template_Mgrenade       	 = 	 "MiniGrenade";

// Static weapons
lt_template_baghmgg        	 = 	 "CUP_B_M2_Gun_Bag";
lt_template_baghmgag       	 = 	 "CUP_B_M2_Tripod_Bag";

lt_template_baghatg        	 = 	 "CUP_B_Tow_Gun_Bag";
lt_template_baghatag       	 = 	 "CUP_B_TOW_Tripod_Bag";

lt_template_bagmtrg        	 = 	 "CUP_B_M252_Gun_Bag";
lt_template_bagmtrag       	 = 	 "CUP_B_M252_Bipod_Bag";
