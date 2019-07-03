// filename 	"USA_WW2.sqf"
// loadout name "US WW2"

// Attachments Primary weapon
lt_template_attach1        	 = 	 ""; // ir laser
lt_template_attach2        	 = 	 ""; // flashlight
lt_template_attachDM         = 	 ""; // Marksman
lt_template_attachSNP        = 	 ""; // Sniper
lt_template_silencer1      	 = 	 ""; // rifles
lt_template_silencer2      	 = 	 ""; // MG
lt_template_scope1         	 = 	 ""; // normal scope
lt_template_scopeDM          = 	 "uns_o_M84"; // Marksman Scope
lt_template_scopeSNP         = 	 ""; // Sniper Scope
lt_template_scope3         	 = 	 "";
lt_template_bipod1         	 = 	 ""; // MG
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1         	 = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments         	 = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, Rifleman
lt_template_rifle       = 	 "uns_m1garand";
lt_template_riflemag       	 = 	 "uns_m1garandmag";
lt_template_riflemag_t     	 = 	 "uns_m1garandmag_T";

// Commander, PlattonLeader, Medic, Rifleman At
lt_template_carbine     = 	 "uns_m1carbine";
lt_template_carbinemag     	  = 	 "uns_m1carbinemag_NT";
lt_template_carbinemag_tr     = 	 "uns_m1carbinemag_T";

// RTO, Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	    = 	 "uns_thompson";
lt_template_smgmag         	  = 	 "uns_thompsonmag_30_NT";
lt_template_smgmag_tr      	  = 	 "uns_thompsonmag_30_T";

// Teamleader, Spotter
lt_template_glrifle        	 = 	 "uns_m1garand_gl";
lt_template_glriflemag     	    = 	 "uns_m1garandmag";
lt_template_glriflemag_tr       = 	 "uns_m1garandmag_T";
lt_template_glmag          	        = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	= 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	= 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glsmokered     	        = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glflarewhite           	= 	 "UGL_FlareWhite_F";
lt_template_glflarered     	        = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	= 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	= 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper, Shotgunner
lt_template_pistol      = 	 "uns_m1911";
lt_template_pistolmag      	  = 	 "uns_m1911mag";

// Automatic Rifleman
lt_template_AR     	    = 	 "uns_M16A1_HBAR";
lt_template_ARmag          	  = 	 "uns_40Rnd_556x45_Stanag_NT";
lt_template_ARmag_tr       	  = 	 "uns_40Rnd_556x45_Stanag_T";

// Medium MG Gunner
lt_template_MMG    	    = 	 "uns_m1919a6";
lt_template_MMGmag         	  = 	 "uns_100Rnd_m1919";
lt_template_MMGmag_tr      	  = 	 "uns_100Rnd_m1919";

// Heavy MG Gunner
lt_template_HMG    	    = 	 "uns_m1919a6";
lt_template_HMGmag         	  = 	 "uns_250Rnd_m1919";
lt_template_HMGmag_tr      	  = 	 "uns_250Rnd_m1919";

// Designated Marksman
lt_template_DMrifle     = 	 "uns_m1garand";
lt_template_DMriflemag     	  = 	 "uns_m1garandmag";

// Rifleman AT
lt_template_RAT         = "uns_m72";
lt_template_RATmag1        	  = 	 "";
lt_template_RATmag2        	  = 	 "";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	    = 	 "uns_m20_bazooka";
lt_template_MATmag1        	  = 	 "uns_M28A2_mag";
lt_template_MATmag2        	  = 	 "uns_M30_smoke_mag";

// Sniper
lt_template_SNrifle     =      "uns_smle_sniper";
lt_template_SNrifleMag        =      "uns_smlemag";

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
lt_template_grenade        	  = 	 "uns_f1gren";
lt_template_Mgrenade       	  = 	 "uns_mk3a2gren";

// Static weapons
lt_template_baghmgg        	  = 	 "uns_M60_high_US_Bag";
lt_template_baghmgag       	  = 	 "uns_Tripod_Bag";

lt_template_baghatg        	  = 	 "uns_SPG9_NVA_Bag";
lt_template_baghatag       	  = 	 "uns_Tripod_Bag";

lt_template_bagmtrg        	  = 	 "uns_M1_81mm_mortar_US_Bag";
lt_template_bagmtrag       	  = 	 "uns_Tripod_Bag";
