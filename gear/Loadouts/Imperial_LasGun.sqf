// filename 	"Imperial_LasGun.sqf"
// loadout name "Imperial Guard - LasGun"

// Attachments Primary weapon
lt_template_attach1        	 = 	 ""; // ir laser
lt_template_attach2        	 = 	 ""; // flashlight
lt_template_silencer1      	 = 	 ""; // rifles
lt_template_silencerSMG      = 	 ""; // SMG
lt_template_scope1         	 = 	 "ML700_Lasgun_CarryHandle"; // normal scope
lt_template_scopeSNP         = 	 "ML700_Longlas_Scope"; // Sniper Scope
lt_template_scopeDM          = 	 ""; // DM Scope
lt_template_bipod1         	 = 	 ""; // MG
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1     = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments   = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, Rifleman, Medic
lt_template_rifle        = 	 "ML700_Lasgun_Aquila_Rifle";
lt_template_riflemag       	 = 	 "ML700_Lasgun_Rifle_B_50_Battery";
lt_template_riflemag_t     	 = 	 "ML700_Lasgun_Rifle_B_50_Battery";

// Rifle grenadier
lt_template_glrifle      = 	 "TIOW_AgripinaaType2_UGL";
lt_template_glriflemag     	 = 	 "30Rnd_Agrip_mag";
lt_template_glriflemag_tr    = 	 "30Rnd_Agrip_mag_Tracer";
lt_template_glmag          	 = 	 "TIOW_1Rnd_HE_Grenade_shell";

// Rifleman At, Radioman
lt_template_carbine      = 	 "ML700_Lasgun_Aquila_Rifle";
lt_template_carbinemag     	 = 	 "ML700_Lasgun_Rifle_B_50_Battery";
lt_template_carbinemag_tr    = 	 "ML700_Lasgun_Rifle_B_50_Battery";

// Squad Lead, Automatic Rifleman, Medium Machinegunner, Designated Marksman, AT-Rifleman
lt_template_pistol       = 	 "LuciusLaspistolGreen";
lt_template_pistolmag      	 = 	 "LuciusLaspistol_mag";

// Commander, Commisar
lt_template_big_pistol   = 	 "ML700_B_LasPistol_F";
lt_template_big_pistolmag    = 	 "ML700_Laspistol_B_Battery";

// Automatic Rifleman
lt_template_AR     	     = 	 "ML700_LMG_Stubber_Green";
lt_template_ARmag          	 = 	 "ML700_Stubber_Drum";
lt_template_ARmag_tr       	 = 	 "ML700_Stubber_Drum_Green";

// Designated Marksman
lt_template_DMrifle      = 	 "ML700_Longlas_8Star_Rifle";
lt_template_DMriflemag     	 = 	 "ML700_Lasgun_Rifle_50_Battery";

// Rifleman AT
lt_template_RAT 			   = "ML700_Launcher_Weapon_TreadFether";
lt_template_RATmag1        	 = 	 "ML700_40mm_Treadfether_Mag";
lt_template_RATmag2        	 = 	 "ML700_40mm_Treadfether_Mag";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    			 = 	 "ML700_Launcher_Weapon_LockeLauncher";
lt_template_MATmag1        	 = 	 "ML700_84mm_HEAT_Locke_Mag";
lt_template_MATmag2        	 = 	 "ML700_84mm_HEAT_Locke_Mag";

// Plasma Gun
lt_template_PlasmaRifle    =      "ML700_PlasmaRifle_F";
lt_template_PlasmaRifleMag     =      "ML700_PlasmaRifle_Battery";
lt_template_PlasmaRifleMag_tr  =      "ML700_PlasmaRifle_Battery_Overcharged";

// Plasma Pistol
lt_template_PlasmaPistol    =      "ML700_PlasmaPistol_F";
lt_template_PlasmaPistolMag     =      "ML700_PlasmaPistol_Battery";
lt_template_PlasmaPistolMag_tr  =      "ML700_PlasmaPistol_Battery_Overcharged";

// Flamer
lt_template_Flamer       =      "TIOW_IG_Flamer";
lt_template_FlamerMag        =      "TIOW_Krieg_Flamer_mag";

// Shotgun
lt_template_Shotrifle    =      "TIOW_Shotgun";
lt_template_ShotrifleMag     =      "TIOW_Shotgun_pellets_mag";

// Grenade Launcher (Not all ammo types are required but needed for ammo)
lt_template_GrenLauncher =      "TIOW_IG_GL";
lt_template_GrenLauncherMag     =      "TIOW_IG_GL_Frag_mag";
lt_template_GrenLauncherMag_AT  =      "TIOW_IG_GL_Krak_mag";
lt_template_GrenLauncherMag_Bck =      "TIOW_IG_GL_Buck_mag";
lt_template_GrenLauncherMag_Smk =      "TIOW_IG_GL_Smoke_mag";
lt_template_GrenLauncherMag_Flr =      "TIOW_IG_GL_Flare_mag";
lt_template_GrenLauncherMag_Flm =      "TIOW_IG_GL_Flame_mag";

// Shotgun
lt_template_Shotrifle    =      "fow_w_k98_scoped";
lt_template_ShotrifleMag     =      "fow_5Rnd_792x57";

// Special Gun (Can be anything)
lt_template_Speshalrifle =      "TIOW_MeltaGun_01";
lt_template_SpeshalrifleMag  =      "TIOW_Meltagun_Mag";
lt_template_SpeshalrifleMag_tr  =      "TIOW_Meltagun_Mag";

// Grenades
lt_template_grenade        	 = 	 "TIOW_ig_frag_grenade_mag";  // Small Nades
lt_template_Mgrenade       	 = 	 "ML700_krak_grenade_magazine";  // Bigger Nades, mainly AT
lt_template_smokegrenade  	 =   "TIOW_ig_smoke_grenade_mag"; //smoke

// MG Bag
lt_template_baghmgg        	 = 	 "TIOW_IG_Autocannon_Bag1_Blu";
lt_template_baghmgag         = 	 "TIOW_IG_Autocannon_Bag2_Blu";
// HAT  Bag
lt_template_baghatg        	 = 	 "TIOW_IG_Lascannon_Bag1_Blu";
lt_template_baghatag         = 	 "TIOW_IG_Lascannon_Bag2_Blu";
// Mortar Bag
lt_template_bagmtrg        	 = 	 "TIOW_IG_Mortar_Bag1_Blu";
lt_template_bagmtrag       	 = 	 "TIOW_IG_Mortar_Bag1_Blu";

lt_template_nvg              =   "TIOW_CadPhotovisorGoggles";
