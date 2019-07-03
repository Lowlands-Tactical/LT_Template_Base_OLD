// filename 	"USA_Speshual_2.sqf"
// loadout name "USA Speshual Forces (M16 Camo's)"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "uns_b_m7"; // ir laser
lt_template_attach2        	 = 	 "uns_b_m7"; // flashlight
lt_template_attachDM         = 	 "uns_b_m6"; // Marksman
lt_template_attachSNP        = 	 "uns_b_m40_camo"; // Sniper
lt_template_silencer1      	 = 	 ""; // rifles
lt_template_silencer2      	 = 	 ""; // MG
lt_template_scope1         	 = 	 ""; // normal scope
lt_template_scopeDM          = 	 "uns_o_colt4x"; // Marksman Scope
lt_template_scopeSNP         = 	 "uns_o_RedfieldART"; // Sniper Scope
lt_template_scope3         	 = 	 "";
lt_template_bipod1         	 = 	 ""; // MG
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1         	 = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments         	 = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, Rifleman
lt_template_rifle       = 	 "uns_m16_camo";
lt_template_riflemag       	 = 	 "uns_40Rnd_556x45_Stanag_NT";
lt_template_riflemag_t     	 = 	 "uns_40Rnd_556x45_Stanag_T";

// Commander, PlatoonLeader, Medic, Rifleman At
lt_template_carbine     = 	 "uns_m16A1_camo";
lt_template_carbinemag     	  = 	 "uns_30Rnd_556x45_Stanag_NT";
lt_template_carbinemag_tr     = 	 "uns_30Rnd_556x45_Stanag_T";

// RTO, Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	    = 	 "uns_thompson";
lt_template_smgmag         	  = 	 "uns_thompsonmag_30_NT";
lt_template_smgmag_tr      	  = 	 "uns_thompsonmag_30_T";

// Teamleader, Spotter
lt_template_glrifle        	 = 	 "uns_m16_xm148_camo";
lt_template_glriflemag     	    = 	 "uns_30Rnd_556x45_Stanag_NT";
lt_template_glriflemag_tr       = 	 "uns_30Rnd_556x45_Stanag_T";
lt_template_glmag          	        = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	= 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	= 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glsmokered     	        = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glflarewhite           	= 	 "UGL_FlareWhite_F";
lt_template_glflarered     	        = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	= 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	= 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper, Shotgunner
lt_template_pistol      = 	 "uns_357m";
lt_template_pistolmag      	  = 	 "uns_357mag";

// Automatic Rifleman
lt_template_AR     	    = 	 "uns_M16A1_HBAR";
lt_template_ARmag          	  = 	 "uns_40Rnd_556x45_Stanag_NT";
lt_template_ARmag_tr       	  = 	 "uns_40Rnd_556x45_Stanag_T";

// Medium MG Gunner
lt_template_MMG    	    = 	 "uns_m60shorty";
lt_template_MMGmag         	  = 	 "uns_m60mag";
lt_template_MMGmag_tr      	  = 	 "uns_m60mag";

// Heavy MG Gunner
lt_template_HMG    	    = 	 "uns_M63a_drum";
lt_template_HMGmag         	  = 	 "uns_m63amag";
lt_template_HMGmag_tr      	  = 	 "uns_m63amag";

// Designated Marksman
lt_template_DMrifle     = 	 "uns_m16";
lt_template_DMriflemag     	  = 	 "uns_20Rnd_556x45_Stanag_NT";

// Rifleman AT
lt_template_RAT         = "uns_m72";
lt_template_RATmag1        	  = 	 "";
lt_template_RATmag2        	  = 	 "";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	    = 	 "uns_m20_bazooka";
lt_template_MATmag1        	  = 	 "uns_M28A2_mag";
lt_template_MATmag2        	  = 	 "uns_M30_smoke_mag";

// Sniper
lt_template_SNrifle     =      "uns_M40_base";
lt_template_SNrifleMag        =      "uns_m40mag";

// Grenadier
lt_template_GRENrifle   =    "uns_m79";
lt_template_GRENrifleMag      =    "1Rnd_HE_Grenade_shell";
lt_template_GRENsmokewhite     = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_GRENsmokegreen     = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_GRENsmokered     	= 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_GRENflarewhite    = 	 "UGL_FlareWhite_F";
lt_template_GRENflarered     	= 	 "UGL_FlareRed_F";
lt_template_GRENflareyellow   = 	 "UGL_FlareYellow_F";
lt_template_GRENflaregreen    = 	 "UGL_FlareGreen_F";

// Shotgunner / RAT / MAT
lt_template_SHOTrifle   =      "uns_m1897";
lt_template_SHOTrifleMag      =      "uns_12gaugemag_6";

// Grenades
lt_template_grenade        	  = 	 "uns_m67gren";
lt_template_Mgrenade       	  = 	 "ACE_M14";

// Static weapons
lt_template_baghmgg        	  = 	 "uns_M60_high_US_Bag";
lt_template_baghmgag       	  = 	 "uns_Tripod_Bag";

lt_template_baghatg        	  = 	 "uns_SPG9_NVA_Bag";
lt_template_baghatag       	  = 	 "uns_Tripod_Bag";

lt_template_bagmtrg        	  = 	 "uns_M1_81mm_mortar_US_Bag";
lt_template_bagmtrag       	  = 	 "uns_Tripod_Bag";
