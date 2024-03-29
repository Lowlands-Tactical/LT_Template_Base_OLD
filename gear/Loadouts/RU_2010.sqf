// filename 	"RU2010.sqf"
// loadout name "Russians - Modern"

// Attachments Primary weapon
lt_template_attach1        	 = 	 "acc_pointer_IR"; // ir laser
lt_template_attach2        	 = 	 "CUP_acc_Flashlight"; // flashlight
lt_template_silencer1      	 = 	 "CUP_muzzle_Bizon"; // rifles
lt_template_silencerSMG      	 = 	 "CUP_muzzle_Bizon"; // MG
lt_template_scope1         	 = 	 "optic_ACO_grn"; // normal scope
lt_template_scopeMG          =   "CUP_optic_ekp_8_02";
lt_template_scopeSNP         = 	 "CUP_optic_PSO_3"; // Sniper Scope
lt_template_scopeDM          = 	 "CUP_optic_PSO_3"; // DM Scope
lt_template_bipod1         	 = 	 ""; // MG
lt_template_bipod2         	 = 	 "";
lt_template_attachments    	 = 	 [lt_template_attach1, lt_template_scope1];

// Handgun attachements
lt_template_hg_silencer1         	 = 	 "";
lt_template_hg_scope1      	 = 	 "";
lt_template_hg_attachments         	 = 	 [];

// Assistant Automatic Rifleman, Medium MG assistant, UAV Operator, Rifleman
lt_template_rifle          	 = 	 "arifle_AK12_F";
lt_template_riflemag       	 = 	 "30Rnd_762x39_Mag_F";
lt_template_riflemag_t     	 = 	 "30Rnd_762x39_Mag_F";

//Medic, Rifleman At
lt_template_carbine        	 = 	 "arifle_AK12_F";
lt_template_carbinemag     	 = 	 "30Rnd_762x39_Mag_F";
lt_template_carbinemag_tr          	 = 	 "30Rnd_762x39_Mag_F";

// Pilots, Vehicle crew, Submachinegunner
lt_template_smg    	 = 	 "CUP_smg_bizon";
lt_template_smgmag         	 = 	 "CUP_64Rnd_9x19_Bizon_M";
lt_template_smgmag_tr      	 = 	 "CUP_64Rnd_Green_Tracer_9x19_Bizon_M";


// Commander, Squadleader, Fireteam leader, Spotter, Grenadier
lt_template_glrifle        	 = 	 "arifle_AK12_GL_F";
lt_template_glriflemag     	 = 	 "30Rnd_762x39_Mag_F";
lt_template_glriflemag_tr          	 = 	 "30Rnd_762x39_Mag_F";
lt_template_glmag          	 = 	 "1Rnd_HE_Grenade_shell";
lt_template_glsmokewhite           	 = 	 "1Rnd_Smoke_Grenade_shell";
lt_template_glsmokegreen           	 = 	 "1Rnd_SmokeGreen_Grenade_shell";
lt_template_glsmokered     	 = 	 "1Rnd_SmokeRed_Grenade_shell";
lt_template_glflarewhite           	 = 	 "UGL_FlareWhite_F";
lt_template_glflarered     	 = 	 "UGL_FlareRed_F";
lt_template_glflareyellow          	 = 	 "UGL_FlareYellow_F";
lt_template_glflaregreen           	 = 	 "UGL_FlareGreen_F";

// Commander, Squadleader, Automatic Rifleman, Medium Machinegunner, Designated Marksman, Sniper
lt_template_pistol         	 = 	 "CUP_hgun_Makarov";
lt_template_pistolmag      	 = 	 "CUP_8Rnd_9x18_Makarov_M";

// Automatic Rifleman
lt_template_AR     	 = 	 "CUP_arifle_RPK74";
lt_template_ARmag          	 = 	 "75rnd_762x39_AK12_Mag_F";
lt_template_ARmag_tr       	 = 	 "75rnd_762x39_AK12_Mag_Tracer_F";

// Medium MG Gunner
lt_template_MMG    	 = 	 "CUP_lmg_Pecheneg"; // CUP_optic_PechenegScope
lt_template_MMGmag         	 = 	 "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"; //Heeft niet-tracer versie.
lt_template_MMGmag_tr      	 = 	 "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

// Designated Marksman
lt_template_DMrifle        	 = 	 "CUP_srifle_SVD";
lt_template_DMriflemag     	 = 	 "CUP_10Rnd_762x54_SVD_M";

// Rifleman AT
lt_template_RAT    	 = 	 "CUP_launch_RPG7V";
lt_template_RATmag1    	 = 	 "CUP_PG7V_M";
lt_template_RATmag2    	 = 	 "CUP_OG7_M";

// Medium AT Gunner, Medium AT Gunner Assistant (alleen magazijnen)
lt_template_MAT    	 = 	 "CUP_launch_RPG7V";
lt_template_MATmag1        	 = 	 "CUP_PG7V_M";
lt_template_MATmag2        	 = 	 "CUP_OG7_M";

// Medium SAM Gunner, Medium SAM Gunner Assistant (alleen magazijnen)
lt_template_SAM    	 = 	 "CUP_launch_Igla";
lt_template_SAMmag         	 = 	 "CUP_Igla_M";

// Heavy AT Gunner, Heavy AT Gunner Assistant (alleen magazijnen
lt_template_HAT    	 = 	 "CUP_launch_Metis";
lt_template_HATmag1        	 = 	 "CUP_AT13_M";
lt_template_HATmag2        	 = 	 "CUP_AT13_M";

// Sniper
lt_template_SNrifle        	 = 	 "CUP_srifle_ksvk";
lt_template_SNrifleMag     	 = 	 "CUP_5Rnd_127x108_KSVK_M";

// Grenades
lt_template_grenade        	 = 	 "CUP_HandGrenade_RGO";
lt_template_Mgrenade       	 = 	 "SmokeShell";

// Static weapons
lt_template_baghmgg        	 = 	 "CUP_B_Kord_Gun_Bag";
lt_template_baghmgag       	 = 	 "CUP_B_Kord_Tripod_Bag";

lt_template_baghatg        	 = 	 "CUP_B_Metis_Gun_Bag";
lt_template_baghatag       	 = 	 "CUP_B_Metis_Tripod_Bag";

lt_template_bagmtrg        	 = 	 "CUP_B_Podnos_Gun_Bag";
lt_template_bagmtrag       	 = 	 "CUP_B_Podnos_Bipod_Bag";

lt_template_baghsamg       	 = 	 "";
lt_template_baghsamag      	 = 	 "";
