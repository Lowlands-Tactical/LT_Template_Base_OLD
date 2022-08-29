// filename 	"RACS.sqf"
// loadout name "RACS"

// Attachments Primary weapon	
lt_template_attach1        	 = 	 "";
lt_template_attach2        	 = 	 "";
lt_template_silencer1      	 = 	 "";
lt_template_silencerSMG      	 = 	 "";
lt_template_scope1         	 = 	 "";
lt_template_scopeMG		 =	 "";
lt_template_bipod1         	 = 	 "";
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1,lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1        = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments      = 	 [];
		
// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman		
lt_template_rifle          	 = 	 "CUP_arifle_M16A2";
lt_template_riflemag       	 = 	 "CUP_30Rnd_556x45_Stanag";
lt_template_riflemag_t     	 = 	 "30Rnd_556x45_Stanag_Tracer_Green";
		
//Medic, Rifleman At		
lt_template_carbine        	 = 	 "CUP_arifle_M16A2";
lt_template_carbinemag     	 = 	 lt_template_riflemag;
lt_template_carbinemag_tr       = 	 lt_template_riflemag_t;
		
// Pilots, Vehicle crew, Submachinegunner		
lt_template_smg    	 = 	 "CUP_smg_MP5A5";
lt_template_smgmag         	 = 	 "CUP_30Rnd_9x19_MP5";
lt_template_smgmag_tr      	 = 	 "CUP_30Rnd_9x19_MP5";
		
// Commander, Squadleader, Fireteam leader, Spotter, Grenadier		
lt_template_glrifle        	 = 	 "CUP_arifle_M16A2_GL";
lt_template_glriflemag     	 = 	 lt_template_riflemag;
lt_template_glriflemag_tr       = 	 lt_template_riflemag_t;
lt_template_glmag          	 = 	 "CUP_1Rnd_HEDP_M203";
lt_template_glsmokewhite        = 	 "CUP_1Rnd_Smoke_M203";
lt_template_glsmokegreen        = 	 "CUP_1Rnd_SmokeGreen_M203";
lt_template_glsmokered     	 = 	 "CUP_1Rnd_SmokeRed_M203";
lt_template_glflarewhite        = 	 "CUP_FlareWhite_M203";
lt_template_glflarered     	 = 	 "CUP_FlareRed_M203";
lt_template_glflareyellow       = 	 "CUP_FlareYellow_M203";
lt_template_glflaregreen        = 	 "CUP_FlareGreen_M203";
		
// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper		
lt_template_pistol         	 = 	 "CUP_hgun_M9";
lt_template_pistolmag      	 = 	 "CUP_15Rnd_9x19_M9";
		
// Automatic Rifleman 5.56 mags
lt_template_AR     	 = 	 "CUP_lmg_M249";
lt_template_ARmag      = 	 "CUP_200Rnd_TE4_Green_Tracer_556x45_M249";
lt_template_ARmag_tr   = 	 "CUP_200Rnd_TE4_Green_Tracer_556x45_M249";
		
// Medium MG Gunner 7.62 mags
lt_template_MMG    	 = 	 "CUP_lmg_m240";
lt_template_MMGmag     = 	 "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M";
lt_template_MMGmag_tr  = 	 "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M";
		
// Designated Marksman	7.62 mags	
lt_template_DMrifle        	 = 	 "CUP_srifle_M24_wdl";
lt_template_DMriflemag     	 = 	 "CUP_5Rnd_762x51_M24";
		
// Rifleman AT		
lt_template_RAT    	 = 	 "CUP_launch_M72A6_Special";
lt_template_RATmag1    	 = 	 "CUP_M72A6_M";
lt_template_RATmag2    	 = 	 "CUP_M72A6_M";
		
// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)		
lt_template_MAT    	 = 	 "CUP_launch_MAAWS";
lt_template_MATmag1    = 	 "CUP_MAAWS_HEAT_M";
lt_template_MATmag2    = 	 "CUP_MAAWS_HEDP_M";
		
// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM = "CUP_launch_FIM92Stinger";
lt_template_SAMmag = "CUP_Stinger_M";
		
// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen)
lt_template_HAT         = "CUP_launch_Mk153Mod0";
lt_template_HATmag1     = "CUP_SMAW_HEAA_M";
lt_template_HATmag2     = "CUP_SMAW_HEDP_M";
		
// Sniper	 50 cal	
lt_template_SNrifle    = "CUP_srifle_M107_Base";
lt_template_SNrifleMag = "CUP_10Rnd_127x99_M107";
		
// Grenades
lt_template_grenade  = "CUP_HandGrenade_M67";
lt_template_Mgrenade = "MiniGrenade";

// Static weapons
lt_template_baghmgg = "CUP_B_M2_Gun_Bag";
lt_template_baghmgag = "CUP_B_M2_Tripod_Bag";
lt_template_baghatg = "CUP_B_Tow_Gun_Bag";
lt_template_baghatag = "CUP_B_TOW_Tripod_Bag";
lt_template_bagmtrg = "CUP_B_M252_Gun_Bag";
lt_template_bagmtrag = "CUP_B_M252_Bipod_Bag";
