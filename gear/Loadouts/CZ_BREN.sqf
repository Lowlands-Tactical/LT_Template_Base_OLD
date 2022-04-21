// Filename "Czech.sqf"
// Loadout name "Army of the Czech Republic"

// Placeholder while the format is being debate
lt_template_attach1        	 = 	 "acc_pointer_IR"; // ir laser
lt_template_attach2        	 = 	 "acc_flashlight"; // flashlight
lt_template_silencer1      	 = 	 "ace_muzzle_mzls_l";
lt_template_silencerSMG      = 	 "";
lt_template_scope1         	 = 	 "cup_optic_ac11704_black";
lt_template_scopeMG          = 	 "cup_optic_ac11704_black";
lt_template_scopeDM          = 	 "cup_optic_pso_1_open";
lt_template_scopeSNP         = 	 "optic_lrps";
lt_template_bipod1         	 = 	 "bipod_01_F_snd";
lt_template_bipodDM          =   "bipod_02_F_blk";
lt_template_attachments    	 = 	 [lt_template_scope1,lt_template_silencer1,lt_template_bipod1];

lt_template_hg_silencer1 =   	"muzzle_snds_L" ;
lt_template_hg_scope1	   =   	"CUP_optic_HoloBlack"  ;
lt_template_hg_attachments	 =   [lt_template_hg_scope1];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle	   		=   	"CUP_arifle_CZ805_A1"  ;
lt_template_riflemag	   	=   	"CUP_30Rnd_556x45_CZ805" ;
lt_template_riflemag_t	  =   	"CUP_30Rnd_TE1_Yellow_Tracer_556x45_CZ805"  ;

//Medic, Rifleman At
lt_template_carbine	   	=   	"CUP_arifle_CZ805_A2"  ;
lt_template_carbinemag	   	=   	"CUP_30Rnd_556x45_CZ805";
lt_template_carbinemag_tr	  =   	"CUP_30Rnd_TE1_Yellow_Tracer_556x45_CZ805" ;

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "CUP_smg_EVO";
lt_template_smgmag         	 = 	 "CUP_30Rnd_9x19_EVO";
lt_template_smgmag_tr      	 = 	 "CUP_30Rnd_9x19_EVO";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle	   =   	"CUP_arifle_CZ805_GL";
lt_template_glriflemag	  = "CUP_30Rnd_556x45_G36";
lt_template_glriflemag_tr	= "CUP_30Rnd_TE1_Red_Tracer_556x45_G36"  ;
lt_template_glmag         = "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite  = "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen  = "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered    = "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite  = "UGL_FlareWhite_F";
lt_template_glflarered    = "UGL_FlareRed_F";
lt_template_glflareyellow = "UGL_FlareYellow_F";
lt_template_glflaregreen  = "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol	   =   	"CUP_hgun_Phantom" ;
lt_template_pistolmag	   =   	"CUP_18Rnd_9x19_Phantom"  ;

// Automatic Rifleman
lt_template_AR	   =   	"CUP_lmg_minimipara" ;
lt_template_ARmag	   =   	"CUP_200Rnd_TE4_Green_Tracer_556x45_M249" ;
lt_template_ARmag_tr =   	"CUP_200Rnd_TE4_Green_Tracer_556x45_M249" ;

// Medium MG Gunner 7.62 mags
lt_template_MMG    	 = 	 "CUP_lmg_UK59";
lt_template_MMGmag     = 	 "CUP_50Rnd_UK59_762x54R_Tracer";
lt_template_MMGmag_tr  = 	 "CUP_50Rnd_UK59_762x54R_Tracer";

// Heavy MG Gunner
lt_template_HMG    	 = 	 "CUP_lmg_PKM";
lt_template_HMGmag     = 	 "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
lt_template_HMGmag_tr  = 	 "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

// Designated Marksman
lt_template_DMrifle	   =   	"CUP_srifle_SVD";
lt_template_DMriflemag	   =   	"CUP_10Rnd_762x54_SVD_M";

// Rifleman AT
lt_template_RAT    	 = 	 "CUP_launch_RPG7V";
lt_template_RATmag1    = 	 "CUP_PG7V_M";
lt_template_RATmag2    = 	 "CUP_OG7_M";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	 = 	 "CUP_launch_MAAWS";
lt_template_MATmag1    = 	 "CUP_MAAWS_HEAT_M";
lt_template_MATmag2    = 	 "CUP_MAAWS_HEDP_M";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM    	 = 	 "CUP_launch_Igla";
lt_template_SAMmag     = 	 "CUP_Igla_M";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT    	 = 	 "CUP_launch_Javelin";
lt_template_HATmag1    = 	 "CUP_Javelin_M";
lt_template_HATmag2    = 	 "CUP_Javelin_M";

// Sniper	 50 cal
lt_template_SNrifle        	 = 	 "CUP_srifle_CZ750";
lt_template_SNrifleMag     	 = 	 "CUP_10Rnd_762x51_CZ750_Tracer";

// Grenades
lt_template_grenade        	 = 	 "CUP_HandGrenade_RGO";
lt_template_Mgrenade       	 = 	 "SmokeShell";

// Static weapons
lt_template_baghmgg = "CUP_B_M2_Gun_Bag";
lt_template_baghmgag = "CUP_B_M2_Tripod_Bag";
lt_template_baghatg = "CUP_B_Tow_Gun_Bag";
lt_template_baghatag = "CUP_B_TOW_Tripod_Bag";
lt_template_bagmtrg = "CUP_B_M252_Gun_Bag";
lt_template_bagmtrag = "CUP_B_M252_Bipod_Bag";
