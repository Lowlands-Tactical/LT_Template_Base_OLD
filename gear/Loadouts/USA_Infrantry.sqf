// filename 	"USA_Infrantry.sqf"
// loadout name "USA Infrantry"

// Attachments Primary weapon
lt_template_attach1        	 = 	 ""; // ir laser
lt_template_attach2        	 = 	 ""; // flashlightd
lt_template_attachDM         =   "uns_b_m6"; // Marksman
lt_template_attachSNP        =   "uns_b_m40_camo"; // Sniper
lt_template_silencer1      	 = 	 ""; // rifles
lt_template_silencer2      	 = 	 ""; // MG
lt_template_scope1         	 = 	 ""; // normal scope
lt_template_scopeDM          =   "uns_o_LeatherwoodART_m14_custom"; // Marksman Scope
lt_template_scopeSNP         =   "uns_o_RedfieldART"; // Sniper Scope
lt_template_scope3         	 = 	 "";
lt_template_bipod1         	 = 	 ""; // MG
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1         	 = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments         	 = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "uns_m16";
lt_template_riflemag       	 = 	 "uns_20Rnd_556x45_Stanag";
lt_template_riflemag_t     	 = 	 "uns_20Rnd_556x45_Stanag_T";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "uns_m1carbine_pouch";
lt_template_carbinemag     	 = 	 "uns_m2carbinemag__NT";
lt_template_carbinemag_tr          	 = 	 "uns_m2carbinemag_T";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "uns_thompson";
lt_template_smgmag         	 = 	 "uns_thompsonmag_30_NT";
lt_template_smgmag_tr      	 = 	 "uns_thompsonmag_30_T";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle        	 = 	 "uns_m16_xm148";
lt_template_glriflemag     	 = 	 "uns_30Rnd_556x45_Stanag";
lt_template_glriflemag_tr          	 = 	 "uns_30Rnd_556x45_Stanag_T";
lt_template_glmag          	 = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	 = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	 = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered     	 = 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite           	 = 	 "UGL_FlareWhite_F";
lt_template_glflarered     	 = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	 = 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	 = 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol         	 = 	 "uns_m1911";
lt_template_pistolmag      	 = 	 "uns_m1911mag";

// Automatic Rifleman
lt_template_AR             =      "uns_M16A1_HBAR";
lt_template_ARmag                =      "uns_40Rnd_556x45_Stanag_NT";
lt_template_ARmag_tr             =      "uns_40Rnd_556x45_Stanag_T";

// Medium MG Gunner
lt_template_MMG    	 = 	 "uns_m60";
lt_template_MMGmag         	 = 	 "uns_m60mag";
lt_template_MMGmag_tr      	 = 	 "uns_m60mag";

// Heavy MG Gunner
lt_template_HMG    	    = 	 "uns_M63a_LMG";
lt_template_HMGmag         	  = 	 "uns_m63abox";
lt_template_HMGmag_tr      	  = 	 "uns_m63abox";

// Designated Marksman
lt_template_DMrifle  = 	 "uns_m14";
lt_template_DMriflemag     	 = 	 "uns_m14mag";

// Rifleman AT
lt_template_RAT         = "uns_m72";
lt_template_RATmag1        	  = 	 "";
lt_template_RATmag2        	  = 	 "";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT            =      "uns_m20_bazooka";
lt_template_MATmag1              =      "uns_M28A2_mag";
lt_template_MATmag2              =      "uns_M30_smoke_mag";

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

// Shotgunner
lt_template_SHOTrifle   =      "uns_model12";
lt_template_SHOTrifleMag      =      "uns_12gaugemag_6";

// Grenades
lt_template_grenade        	  = 	 "HandGrenade";
lt_template_Mgrenade       	  = 	 "ACE_M14";

// Static weapons
lt_template_baghmgg           =   "uns_M60_high_US_Bag";
lt_template_baghmgag          =   "uns_Tripod_Bag";

lt_template_baghatg           =    "uns_SPG9_NVA_Bag";
lt_template_baghatag          =    "uns_Tripod_Bag";

lt_template_bagmtrg        	  = 	 "uns_M1_81mm_mortar_US_Bag";
lt_template_bagmtrag       	  = 	 "uns_Tripod_Bag";
