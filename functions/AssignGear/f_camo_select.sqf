// Lowlands Tactical - LT_Template_Base
// Credits:
//
// Gets the in the Eden editor selected camouflagetype and sets the right uniforms/backpacks/helmets/vests.
// 

_camo = LT_camo_var;

LT_fnc_check_class_exist = {
	// syntax
	// select 0 = class om te checken
	// select 1 = als select 0 geen class is dan deze class nemen
	// select 2 = in welke cfg kunnen we de class vinden
	
	PRIVATE ["_text","_default","_check"];
	
	_text 			= _this select 0;
	_default 		= _this select 1;
	_cfg			= _this select 2;
	_check		 	= isClass (ConfigFile >> _cfg >> _text);
	
	IF (_check) exitwith {
		_text;
	};
	_default;
};

/*
// Andere weg: (hopelijk same results...)
_lt_camo_array = ["None","Desert","Woodland","UN_Woodland","UN_Desert","NFPTAN","NFPGREEN","WINTER","JUNGLE","SF","SFMTP","KM"];
_camo = _lt_camo_array find LT_camo_var;

// This part is here now only to see the types:

// Backpacks
_bagsmall_array = ["NLD_WLD_Carryall_Empty",,,,,,,,,,,];			// carries 120, weighs 20
_bagmedium_array = ["NLD_WLD_Carryall_Empty",,,,,,,,,,,];			// carries 240, weighs 30
_baglarge_array =  ["NLD_WLD_Carryall_Empty",,,,,,,,,,,]; 			// carries 320, weighs 40
_baguav_array = ["NLD_WTR_Carryall_UAV",,,,,,,,,,,];				// used by UAV operator

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform_array = ["NLD_WLD_Camo","NLD_DST_Camo","NLD_WLD_Camo","NLD_WLD_Camo","NLD_DST_Camo","NLD_NFPT_Camo","NLD_NFPG_Camo","NLD_WTR_Camo","NLD_JGL_Camo","NLD_SF_Camo","NLD_MTP_Camo",];
_baseHelmet_array = ["H_HelmetB_camo",,"NLD_WLD_Helmet",,,,,,,,,];

// Vests
// _lightRig = ["V_BandollierB_cbr","V_BandollierB_khk"];
// _mediumRig = ["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"]; 	// default for all infantry classes
// _heavyRig = ["V_PlateCarrier3_rgr"];

_lightRig_array = ["V_PlateCarrierIA2_dgtl",,,,,,,,,,,];
_mediumRig_array = ["V_PlateCarrierIA2_dgtl",,,,,,,,,,,];
_heavyRig_array = ["V_PlateCarrierIA2_dgtl",,,,,,,,,,,];
*/
