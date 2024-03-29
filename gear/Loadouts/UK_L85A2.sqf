// filename 	"UK (L85A2).sqf"
// loadout name "UK (L85A2)"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "CUP_acc_ANPEQ_2"; // ir laser
lt_template_attach2        	 = 	 "CUP_acc_Flashlight"; // flashlight
lt_template_silencer1      	 = 	 "CUP_muzzle_snds_L85"; // rifles
lt_template_silencerSMG      	 = 	 ""; // MG
lt_template_scope1         	 = 	 "CUP_optic_HoloBlack"; // normal scope
lt_template_scopeMG		       =	 "CUP_optic_HoloBlack";
lt_template_scopeSNP         = 	 "optic_lrps"; // Sniper Scope
lt_template_scopeDM          = 	 ""; // DM Scope
lt_template_bipod1         	 = 	 ""; // MG
lt_template_bipod2         	 = 	 "CUP_bipod_Harris_1A2_L";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1     = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments   = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "CUP_arifle_L85A2_G";
lt_template_riflemag       	 = 	 "CUP_30Rnd_556x45_Stanag";
lt_template_riflemag_t     	 = 	 "30Rnd_556x45_Stanag_Tracer_Red";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "CUP_arifle_L85A2_G";
lt_template_carbinemag     	 = 	 "CUP_30Rnd_556x45_Stanag";
lt_template_carbinemag_tr          	 = 	 "30Rnd_556x45_Stanag_Tracer_Red";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "CUP_arifle_L85A2_G";
lt_template_smgmag         	 = 	 "CUP_30Rnd_556x45_Stanag";
lt_template_smgmag_tr      	 = 	 "30Rnd_556x45_Stanag_Tracer_Red";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle        	 = 	 "CUP_arifle_L85A2_GL";
lt_template_glriflemag     	 = 	 "CUP_30Rnd_556x45_Stanag";
lt_template_glriflemag_tr          	 = 	 "30Rnd_556x45_Stanag_Tracer_Red";
lt_template_glmag          	 = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	 = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	 = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered     	 = 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite           	 = 	 "UGL_FlareWhite_F";
lt_template_glflarered     	 = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	 = 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	 = 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol         	 = 	 "CUP_hgun_Glock17";
lt_template_pistolmag      	 = 	 "CUP_17Rnd_9x19_glock17";

// Automatic Rifleman
lt_template_AR     	 = 	 "CUP_lmg_minimi_railed";
lt_template_ARmag          	 = 	 "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
lt_template_ARmag_tr       	 = 	 "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";

// Medium MG Gunner
lt_template_MMG    	 = 	 "CUP_lmg_L7A2";
lt_template_MMGmag         	 = 	 "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
lt_template_MMGmag_tr      	 = 	 "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Designated Marksman
lt_template_DMrifle        	 = 	 "CUP_arifle_L86A2";
lt_template_DMriflemag     	 = 	 "CUP_30Rnd_556x45_Stanag";

// Rifleman AT
lt_template_RAT    	 = 	 "CUP_launch_NLAW";
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
lt_template_SNrifle             =      "CUP_srifle_M107_Base";
lt_template_SNrifleMag          =      "CUP_10Rnd_127x99_M107";

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
