// ATTACHEMENTS - MAIN WEAPON

// Side attachments
class lt_template_attach1 {
	displayName = "Attachment 1";
	description = "";
	typeName = "STRING";
	defaultValue = "acc_pointer_IR";
};
class lt_template_attach2 {
	displayName = "Attachment 2";
	description = "";
	typeName = "STRING";
	defaultValue = "acc_flashlight";
};

// Barrel attachments
class lt_template_silencer1 {
	displayName = "Silencer 1";
	description = "";
	typeName = "STRING";
	defaultValue = "muzzle_snds_M";
};
class lt_template_silencer2 {
	displayName = "Silencer 2";
	description = "";
	typeName = "STRING";
	defaultValue = "muzzle_snds_H";
};

// Scopes
class lt_template_scope1 {
	displayName = "Scope 1";
	description = "";
	typeName = "STRING";
	defaultValue = "optic_Holosight";
};
class lt_template_scope2 {
	displayName = "Scope 2";
	description = "For marksmen";
	typeName = "STRING";
	defaultValue = "optic_DMS";
};
class lt_template_scope3 {
	displayName = "Scope 3";
	description = "For snipers";
	typeName = "STRING";
	defaultValue = "optic_SOS";
};

// Bipods
class lt_template_bipod1 {
	displayName = "Bipod 1";
	description = "";
	typeName = "STRING";
	defaultValue = "bipod_01_F_snd";
};
class lt_template_bipod2 {
	displayName = "Bipod 2";
	description = "";
	typeName = "STRING";
	defaultValue = "bipod_02_F_blk";
};

class lt_template_attachments {
	displayName = "Rifle attachments";
	description = "";
	typeName = "STRING";
	defaultValue = "acc_pointer_IR , optic_Holosight";
};

class lt_template_hg_silencer1 {
	displayName = "Handgun silencer";
	description = "";
	typeName = "STRING";
	defaultValue = "muzzle_snds_L";
};
class lt_template_hg_scope1 {
	displayName = "Handgun scope";
	description = "";
	typeName = "STRING";
	defaultValue = "optic_MRD";
};

// Default setup
class lt_template_hg_attachments {
	displayName = "Machinegun attachments array";
	description = "";
	typeName = "STRING";
	defaultValue = '[]';
};


// WEAPON SELECTION
class lt_template_empty0 {
	displayName = "Weapon selection";
	description = "";
	typeName = "STRING";
	class values {
		class empty0 {name = "----------";  value=""; default=1;};
	};
};

// Rifle
class lt_template_rifle	{
	displayName = "Rifle";
	description = "MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman";
	typeName = "STRING";
	defaultValue = "arifle_MX_F";
};
class lt_template_riflemag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag";
};
class lt_template_riflemag_t	{
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag_Tracer";
};

// Carbine
class lt_template_carbine {
	displayName = "Carbine";
	description = "Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer";
	typeName = "STRING";
	defaultValue = "arifle_MXC_F";
};
class lt_template_carbinemag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag";
};
class lt_template_carbinemag_tr	{
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag_Tracer";
};

// SMG
class lt_template_smg	{
	displayName = "Sub machine gun";
	description = "Aircraft Pilot, Submachinegunner";
	typeName = "STRING";
	defaultValue = "SMG_01_F";
};
class lt_template_smgmag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_45ACP_Mag_SMG_01";
};
class lt_template_smgmag_tr	{
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_45ACP_Mag_SMG_01_tracer_green";
};

// Diver
class lt_template_diverWep {
	displayName = "Diver weapon";
	description = "";
	typeName = "STRING";
	defaultValue = "arifle_SDAR_F";
};
class lt_template_diverMag1 {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag";
};
class lt_template_diverMag2	{
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "20Rnd_556x45_UW_mag";
};

// GL Rifle
class lt_template_glrifle {
	displayName = "GL Rifle";
	description = "CO, DC, FTLs";
	typeName = "STRING";
	defaultValue = "arifle_MX_GL_F";
};
class lt_template_glriflemag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag";
};
class lt_template_glriflemag_tr	{
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag_Tracer";
};
class lt_template_glmag {
	displayName = "GL magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "1Rnd_HE_Grenade_shell";
};

// Smokes
class lt_template_glsmokewhite {
	displayName = "Smoke white (GL)";
	description = "FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "1Rnd_Smoke_Grenade_shell";
};
class lt_template_glsmokegreen	{
	displayName = "Smoke green (GL)";
	description = "FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "1Rnd_SmokeGreen_Grenade_shell";
};
class lt_template_glsmokered {
	displayName = "Smoke red (GL)";
	description = "FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "1Rnd_SmokeRed_Grenade_shell";
};

// Flares
class lt_template_glflarewhite	{
	displayName = "Flare white (GL)";
	description = "Flares for FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "UGL_FlareWhite_F";
};
class lt_template_glflarered	{
	displayName = "Flare red (GL)";
	description = "Flares for FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "UGL_FlareRed_F";
};
class lt_template_glflareyellow {
	displayName = "Flare yellow (GL)";
	description = "Flares for FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "UGL_FlareYellow_F";
};
class lt_template_glflaregreen {
	displayName = "Flare green (GL)";
	description = "Flares for FTLs, Squad Leaders, etc	";
	typeName = "STRING";
	defaultValue = "UGL_FlareGreen_F";
};

// Pistol
class lt_template_pistol {
	displayName = "Pistol";
	description = "CO, DC, Automatic Rifleman, Medium MG Gunne";
	typeName = "STRING";
	defaultValue = "hgun_P07_F";
};
class lt_template_pistolmag	{
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "16Rnd_9x21_Mag";
};

// Automatic Rifle
class lt_template_AR {
	displayName = "Automatic rifle";
	description = "Automatic Rifleman";
	typeName = "STRING";
	defaultValue = "arifle_MX_SW_F";
};
class lt_template_ARmag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "100Rnd_65x39_caseless_mag";
};
class lt_template_ARmag_tr {
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "100Rnd_65x39_caseless_mag_Tracer";
};

// Medium machine gun
class lt_template_MMG {
	displayName = "Medium machine gun";
	description = "Medium MMG";
	typeName = "STRING";
	defaultValue = "LMG_Mk200_LP_BI_F";
};
class lt_template_MMGmag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "200Rnd_65x39_cased_Box";
};
class lt_template_MMGmag_tr	{
	displayName = "Tracer magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "200Rnd_65x39_cased_Box_Tracer";
};

// Marksman rifle
class lt_template_DMrifle {
	displayName = "Marksman rifle";
	description = "";
	typeName = "STRING";
	defaultValue = "arifle_MXM_F";
};
class lt_template_DMriflemag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "30Rnd_65x39_caseless_mag";
};

// Rifleman AT
class lt_template_RAT {
	displayName = "Light AT gun";
	description = "Rifleman AT	";
	typeName = "STRING";
	defaultValue = "launch_NLAW_F";
};

// Medium AT
class lt_template_MAT {
	displayName = "Medium AT gun";
	description = "Medium AT";
	typeName = "STRING";
	defaultValue = "launch_MRAWS_olive_F";
};
class lt_template_MATmag1 {
	displayName = "Magazine 1";
	description = "";
	typeName = "STRING";
	defaultValue = "MRAWS_HEAT_F";
};
class lt_template_MATmag2 {
	displayName = "Magazine 2";
	description = "";
	typeName = "STRING";
	defaultValue = "MRAWS_HE_F";
};

// Surface to Air
class lt_template_SAM {
	displayName = "Surface to air";
	description = "";
	typeName = "STRING";
	defaultValue = "launch_B_Titan_F";
};
class lt_template_SAMmag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "Titan_AA";
};

// Heavy AT
class lt_template_HAT {
	displayName = "Heavy At gun";
	description = "Heavy AT";
	typeName = "STRING";
	defaultValue = "launch_B_Titan_short_F";
};
class lt_template_HATmag1 {
	displayName = "Magazine 1";
	description = "";
	typeName = "STRING";
	defaultValue = "Titan_AT";
};
class lt_template_HATmag2 {
	displayName = "Magazine 2";
	description = "";
	typeName = "STRING";
	defaultValue = "Titan_AP";
};

// Sniper
class lt_template_SNrifle {
	displayName = "Sniperrifle";
	description = "Sniper";
	typeName = "STRING";
	defaultValue = "srifle_LRR_F";
};
class lt_template_SNrifleMag {
	displayName = "Magazine";
	description = "";
	typeName = "STRING";
	defaultValue = "7Rnd_408_Mag";
};


// ITEMS SETUP
class lt_template_empty2 {
	displayName = "Items";
	description = "";
	typeName = "STRING";
	class values {
		class empty2 {name = "----------";  value=""; default=1;};
	};
};

// Grenades
class lt_template_grenade {
	displayName = "Grenade";
	description = "";
	typeName = "STRING";
	defaultValue = "HandGrenade";
};
class lt_template_Mgrenade {
	displayName = "Mini grenade";
	description = "";
	typeName = "STRING";
	defaultValue = "MiniGrenade";
};
class lt_template_smokegrenade {
	displayName = "Smoke white";
	description = "";
	typeName = "STRING";
 	defaultValue = "SmokeShell";
};
class lt_template_smokegrenadegreen	{
	displayName = "Smoke green";
	description = "";
	typeName = "STRING";
	defaultValue = "SmokeShellGreen";
};

// Misc medical items.
class lt_template_firstaid {
	displayName = "First aid kit";
	description = "";
	typeName = "STRING";
	defaultValue = "FirstAidKit";
};
class lt_template_medkit {
	displayName = "Medikit";
	description = "";
	typeName = "STRING";
	defaultValue = "Medikit";
};
class lt_template_bandages {
	displayName = "Bandages";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_fieldDressing";
};
class lt_template_morphine {
	displayName = "Morphine";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_morphine";
};
class lt_template_epinephrine {
	displayName = "Epinephrine";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_epinephrine";
};
class lt_template_bloodbags	{
	displayName = "Bloodbags";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_bloodIV";
};

// Night Vision Goggles (NVGoggles)
class lt_template_nvg {
	displayName = "Night Vision Goggles";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_NVG_Wide";
};

// UAV Terminal
class lt_template_uavterminal {
	displayName = "UAV terminal";
	description = "";
	typeName = "STRING";
	defaultValue = "B_UavTerminal";
};

// Chemlights
class lt_template_chemgreen {
	displayName = "Chemlight green";
	description = "";
	typeName = "STRING";
	defaultValue = "Chemlight_green";
};
class lt_template_chemred {
	displayName = "Chemlight red";
	description = "";
	typeName = "STRING";
	defaultValue = "Chemlight_red";
};
class lt_template_chemyellow {
	displayName = "Chemlight yellow";
	description = "";
	typeName = "STRING";
	defaultValue = "Chemlight_yellow";
};
class lt_template_chemblue {
	displayName = "Chemlight blue";
	description = "";
	typeName = "STRING";
	defaultValue = "Chemlight_blue";
};

// Other items
class lt_templatecigarette {
	displayName = "Cigarette";
	description = "";
	typeName = "STRING";
	defaultValue = "murshun_cigs_lighter";
};

// Binoculars
class lt_template_advancedbinoculars {
	displayName = "Advance binoculars";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_Vector";
};
class lt_template_simplebinoculars {
	displayName = "Binoculars";
	description = "";
	typeName = "STRING";
	defaultValue = "Binocular";
};

// Sniper and Spotter gear:
class lt_template_atragmx {
	displayName = "AtragMX";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_ATragMX";
};
class lt_templatedagr {
	displayName = "DAGR";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_DAGR";
};
class lt_template_spotting_scope {
	displayName = "Spotting scope";
	description = "";
	typeName = "STRING";
 	defaultValue = "ACE_SpottingScope";
};
class lt_template_rangecard {
	displayName = "Range card";
	description = "";
	typeName = "STRING";
 	defaultValue = "ACE_RangeCard";
};
class lt_template_kestrel {
	displayName = "Kestrel";
	description = "";
	typeName = "STRING";
 	defaultValue = "ACE_Kestrel4500";
};

// GPS
class lt_template_gps {
	displayName = "GPS";
	description = "";
	typeName = "STRING";
	defaultValue = "ItemGPS";
};
class lt_template_telephone {
	displayName = "Telephone";
	description = "";
	typeName = "STRING";
	defaultValue = "ItemAndroid";
};

// Standard items
class lt_template_maptools {
	displayName = "Map tools";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_MapTools";
};
class lt_template_mapflashlight {
	displayName = "Flashlight (map)";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_Flashlight_XL50";
};
class lt_template_map {
	displayName = "Map";
	description = "";
	typeName = "STRING";
	defaultValue = "ItemMap";
};
class lt_template_compass {
	displayName = "Compass";
	description = "";
	typeName = "STRING";
	defaultValue = "ItemCompass";
};
class lt_template_radio {
	displayName = "Radio";
	description = "";
	typeName = "STRING";
	defaultValue = "ItemRadio";
};
class lt_template_watch {
	displayName = "Watch";
	description = "";
	typeName = "STRING";
	defaultValue = "ItemWatch";
};

// Engineer items
class lt_template_ATmine {
	displayName = "AT mine";
	description = "";
	typeName = "STRING";
	defaultValue = "ATMine_Range_Mag";
};
class lt_template_satchel {
	displayName = "Satchel charge";
	description = "";
	typeName = "STRING";
	defaultValue = "DemoCharge_Remote_Mag";
};
class lt_template_APmine1 {
	displayName = "Anti personell mine 1";
	description = "";
	typeName = "STRING";
	defaultValue = "APERSBoundingMine_Range_Mag";
};
class lt_template_APmine2 {
	displayName = "Anti personell mine 2";
	description = "";
	typeName = "STRING";
	defaultValue = "APERSMine_Range_Mag";
};
class lt_template_toolkit {
	displayName = "Toolkit";
	description = "";
	typeName = "STRING";
	defaultValue = "ToolKit";
};
class lt_template_clacker {
	displayName = "Clacker";
	description = "";
	typeName = "STRING";
	defaultValue = "ACE_Clacker";
};
class lt_template_minedetector {
	displayName = "Mine detector";
	description = "";
	typeName = "STRING";
	defaultValue = "MineDetector";
};

// Backpacks
class lt_template_empty3 {
	displayName = "Backpacks";
	description = "";
	typeName = "STRING";
	class values {
		class empty3 {name = "----------";  value=""; default=1;};
	};
};

class lt_template_bagmediumdiver {
	displayName = "Backpack diver";
	description = "";
	typeName = "STRING";
	defaultValue = "B_AssaultPack_blk";
};
class lt_template_baghmgg {
	displayName = "Backpack Machinegun";
	description = "";
	typeName = "STRING";
	defaultValue = "B_HMG_01_weapon_F";
};
class lt_template_baghmgag {
	displayName = "Backpack Machinegun (support/bipod)";
	description = "";
	typeName = "STRING";
	defaultValue = "B_HMG_01_support_F";
};
class lt_template_baghatg	{
	displayName = "Backpack AT";
	description = "";
	typeName = "STRING";
	defaultValue = "B_AT_01_weapon_F";
};
class lt_template_baghatag	{
	displayName = "Backpack AT (support/bipod)";
	description = "";
	typeName = "STRING";
	defaultValue = "B_HMG_01_support_F";
};
class lt_template_bagmtrg {
	displayName = "Backpack Mortar";
	description = "";
	typeName = "STRING";
	defaultValue = "B_Mortar_01_weapon_F";
};
class lt_template_bagmtrag {
	displayName = "Backpack Mortar (support/bipod)";
	description = "";
	typeName = "STRING";
	defaultValue = "B_Mortar_01_support_F";
};
class lt_template_baghsamg	{
	displayName = "Backpack Anti Air";
	description = "";
	typeName = "STRING";
	defaultValue = "B_AA_01_weapon_F";
};
class lt_template_baghsamag	{
	displayName = "Backpack Anti Air (support/bipod)";
	description = "";
	typeName = "STRING";
	defaultValue = "B_HMG_01_support_F";
};
