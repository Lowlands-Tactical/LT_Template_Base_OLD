// filename 	"MA5C.sqf"
// loadout name "MA5C"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "acc_pointer_IR"; // ir laser
lt_template_attach2        	 = 	 "acc_flashlight"; // flashlight
lt_template_silencer1      	 = 	 ""; // rifles
lt_template_silencer2      	 = 	 ""; // MG
lt_template_scope1         	 = 	 "OPTRE_M73_SmartLink"; // normal scope
lt_template_scope2         	 = 	 "OPTRE_BR55HB_Scope"; // DM Scope
lt_template_scope3         	 = 	 "OPTRE_SRS99C_Scope"; // Sniper Scope
lt_template_bipod1         	 = 	 "bipod_01_F_blk"; // MG
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1     = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments   = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "OPTRE_MA5C";
lt_template_riflemag       	 = 	 "OPTRE_32Rnd_762x51_Mag";
lt_template_riflemag_t     	 = 	 "OPTRE_32Rnd_762x51_Mag_Tracer";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "OPTRE_MA5C";
lt_template_carbinemag     	 = 	 "OPTRE_32Rnd_762x51_Mag";
lt_template_carbinemag_tr    = 	 "OPTRE_32Rnd_762x51_Mag_Tracer";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	         = 	 "OPTRE_MA5K";
lt_template_smgmag         	 = 	 "OPTRE_32Rnd_762x51_Mag";
lt_template_smgmag_tr      	 = 	 "OPTRE_32Rnd_762x51_Mag_Tracer";

// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle        	 = 	 "OPTRE_MA5CGL";
lt_template_glriflemag     	 = 	 "OPTRE_32Rnd_762x51_Mag";
lt_template_glriflemag_tr    = 	 "OPTRE_32Rnd_762x51_Mag_Tracer";
lt_template_glmag          	 = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite     = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen     = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered     	 = 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite     = 	 "UGL_FlareWhite_F";
lt_template_glflarered     	 = 	 "UGL_FlareRed_F";
lt_template_glflareyellow    = 	 "UGL_FlareYellow_F";
lt_template_glflaregreen     = 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol         	 = 	 "OPTRE_M6C";
lt_template_pistolmag      	 = 	 "OPTRE_12Rnd_127x40_Mag";

// Automatic Rifleman
lt_template_AR     	         = 	 "OPTRE_M73";
lt_template_ARmag          	 = 	 "OPTRE_100Rnd_95x40_Box";
lt_template_ARmag_tr       	 = 	 "OPTRE_100Rnd_95x40_Box_Tracer";

// Medium MG Gunner
lt_template_MMG    	         = 	 "OPTRE_M247";
lt_template_MMGmag         	 = 	 "OPTRE_100Rnd_762x51_Box";
lt_template_MMGmag_tr      	 = 	 "OPTRE_100Rnd_762x51_Box_Tracer";

// Designated Marksman
lt_template_DMrifle        	 = 	 "srifle_EBR_F";
lt_template_DMriflemag     	 = 	 "20Rnd_762x51_Mag";

// Rifleman AT
lt_template_RAT              =   "OPTRE_M41_SSR";
lt_template_RATmag1        	 = 	 "OPTRE_M41_Twin_HEAT";
lt_template_RATmag2        	 = 	 "OPTRE_M41_Twin_HEAT";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	         = 	 "OPTRE_M41_SSR_G";
lt_template_MATmag1        	 = 	 "OPTRE_M41_Twin_HEAT_G";
lt_template_MATmag2        	 = 	 "OPTRE_M41_Twin_HEAT_G";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM    	         = 	 "launch_I_Titan_F";
lt_template_SAMmag         	 = 	 "Titan_AA";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT    	         = 	 "OPTRE_M41_SSR_G";
lt_template_HATmag1        	 = 	 "OPTRE_M41_Twin_HEAT_G";
lt_template_HATmag2        	 = 	 "OPTRE_M41_Twin_HEAT_G";

// Sniper
lt_template_SNrifle          =   "OPTRE_SRS99C";
lt_template_SNrifleMag       =   "OPTRE_4Rnd_145x114_APFSDS_Mag";

// Grenades
lt_template_grenade        	 = 	 "OPTRE_M9_Frag";
lt_template_Mgrenade       	 = 	 "MiniGrenade";

// Static weapons
lt_template_baghmgg        	 = 	 "I_HMG_01_high_weapon_F";
lt_template_baghmgag       	 = 	 "I_HMG_01_support_high_F";

lt_template_baghatg        	 = 	 "I_AT_01_weapon_F";
lt_template_baghatag       	 = 	 "I_HMG_01_support_F";

lt_template_bagmtrg        	 = 	 "I_Mortar_01_weapon_F";
lt_template_bagmtrag       	 = 	 "I_Mortar_01_support_F";
