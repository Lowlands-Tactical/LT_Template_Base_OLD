// Your attribute class
class LT_Camo_combo: Title
{
	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeLoad = "diag_log format ['LT Template DEBUG: load %1*-*' ,_config]; _ctrl = _this controlsGroupCtrl 100;_attCtrl = getText( _config >> 'control' );_staticItemsCfg = configFile >> 'Cfg3DEN' >> 'Attributes' >> _attCtrl >> 'Controls' >> 'Value' >> 'items';_fnc_setValues = {private [ '_index' ];params[ '_path', [ '_apply', true ] ];{_cfg = _x; if ( _apply ) then {	_index = _ctrl lbAdd getText( _cfg >> 'text' ); _ctrl lbSetData [ _index, getText( _cfg >> 'data' ) ];} else {_index = _foreachindex;}; if ( !( _value isEqualType '' ) ) then {if ( _index isEqualTo _value ) then {_ctrl lbSetCurSel _index;} ;} else {if ( _value == getText( _cfg >> 'data' ) ) then {_ctrl lbSetCurSel _index;};}; } forEach configProperties [_path,'isclass _x'];}; if ( isClass _staticItemsCfg ) then {[ _staticItemsCfg, false ] call _fnc_setValues;}; _dynamicItemsCfg = configFile >> 'Cfg3DEN' >> 'Attributes' >> _attCtrl >> 'Controls' >> 'Value' >> 'ItemsConfig'; if ( isNumber( _dynamicItemsCfg >> 'localConfig' ) && { getNumber( _dynamicItemsCfg >> 'localConfig' ) > 0 } ) then { _class = getArray( _dynamicItemsCfg >> 'path' ) select 0; _path = missionConfigFile >> _class; if ( isClass _path ) then { _path call _fnc_setValues;};};";

	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeSave =	"diag_log  format ['LT Template DEBUG: save config %1*-*' ,_config]; diag_log   format ['LT Template DEBUG: save this %1*-*' , _this]; diag_log format ['LT Template DEBUG: save value %1*-*', _value]; _ctrl = _this controlsGroupCtrl 100;_ctrl lbData lbCurSel _ctrl;";
	class Controls: Controls
	{
		class Title: Title{}; // Inherit existing title control. Text of any control with class Title will be changed to attribute displayName
		class Value: ctrlCombo
		{
			idc = 100;
			x = ATTRIBUTE_TITLE_W * GRID_W;
			w = ATTRIBUTE_CONTENT_W * GRID_W;
			h = SIZE_M * GRID_H;


			class Items
			{
				class LT_Camo_None
				{
					text = "None";
					data = ["None","None","None","None","None","None"];
					default = 1;
				};
				class LT_Camo_Desert
				{
					text = "Desert";
					data =  ["NLD_DST_Camo", // Uniform
									 "NLD_DST_Vest", // Vest
 									 "NLD_DST_Carryall_Empty", // Smol Back
 									 "NLD_DST_Carryall_Empty", // Big Back
								 	 "NLD_DST_Helmet", // Helm
									 "NLD_Radiobag_NFPMT" // Radiobag
									];
				};
				class LT_Camo_Woodland
				{
					text = "Woodland";
					data = ["NLD_WLD_Camo", // Uniform
								  "NLD_WLD_Vest", // Vest
									"NLD_WLD_Carryall_Empty", // Smol Back
									"NLD_WLD_Carryall_Empty", // Big Back
									"NLD_WLD_Helmet", // Helm
									"NLD_Radiobag_WDL" // Radiobag
									];
				};
				class LT_Camo_UN_Woodland
				{
					text = "UN (Woodland)";
					data = ["NLD_WLD_Camo", // Uniform
									"NLD_UN_Vest", // Vest
									"NLD_WLD_Carryall_B", // Smol Back
									"NLD_WLD_Carryall_B", // Big Back
									"NLD_UN_Helmet", // Helm
									"NLD_Radiobag_WDL" // Radiobag
									];
				};
				class LT_Camo_UN_Desert
				{
					text = "UN (Desert)";
					data = ["NLD_DST_Camo", // Unifrom
									"NLD_UN_Vest", // Vest
									"NLD_DST_Carryall_Empty", // Smol Back
									"NLD_DST_Carryall_Empty", // Big Back
									"NLD_UN_Helmet", // Helm
									"NLD_Radiobag_NFPMT" // Radiobag
									];
				};
				class LT_Camo_NFPTAN
				{
					text = "NFP-TAN";
					data = ["NLD_NFPT_Camo", // Uniform
									"NLD_NFPT_Vest", // Vest
									"NLD_NFPT_Carryall_Empty", // Smol Back
									"NLD_NFPT_Carryall_Empty", // Big Back
									"NLD_NFPT_Helmet", // Helm
									"NLD_Radiobag_NFPMT" // Radiobag
									];
				};
				class LT_Camo_NFPGREEN
				{
					text = "NFP-GREEN";
					data = ["NLD_NFPG_Camo", // Uniform
									"NLD_NFPG_Vest", // Vest
									"NLD_NFPG_Carryall_Empty", // Smol Back
									"NLD_NFPG_Carryall_Empty", // Big Back
									"NLD_NFPG_Helmet", // Helm
									"NLD_Radiobag_NFPMT" // Radiobag
									];
				};
				class LT_Camo_WINTER
				{
					text = "Winter";
					data = ["NLD_WTR_Camo", // Uniform
									"NLD_WLD_Vest",
									"NLD_WTR_Carryall_Empty",
									"NLD_WTR_Helmet",
									"NLD_Radiobag_Arctic" // Radiobag
									];
				};
				class LT_Camo_DSI
				{
					text = "DSI";
					data = ["NLD_DSI_Camo", // Uniform
									"NLD_DSI_PlateCarrier",
									"NLD_SF_Carryall_Empty",
									"NLD_DSI_Helmet",
									"b_radiobag_01_black_F" // Radiobag
									];
				};
				class LT_Camo_SF
				{
					text = "Special Forces Black";
					data = ["NLD_SF_Camo", // Uniform
									"CUP_V_CPC_medicalbelt_coy",
									"B_AssaultPack_cbr",
									"NLD_MTP_Carryall_Empty",
									"NLD_SF_ECH",
									"b_radiobag_01_black_F" // Radiobag
									];
				};
				class LT_Camo_SFMTP
				{
					text = "Special forces MTP";
					data = ["NLD_SF_Camo", // Uniform
									"CUP_V_CPC_medicalbelt_coy",	// Vest
									"B_AssaultPack_cbr",	// Smol Back
									"NLD_MTP_Carryall_Empty", // Big Back
									"NLD_SF_ECH", // Helm
									"tf_rt1523g_rhs" // Radiobag
									];
				};
				class LT_Camo_KM
				{
					text = "Koninklijke Mariniers";
					data = ["NLD_KM_Camo", // Uniform
									"CUP_V_CPC_medicalbelt_rngr",	// Vest
									"B_AssaultPack_rgr",	// Smol Back
									"NLD_KM_Carryall_Empty", // Big Back
									"CUP_H_OpsCore_Spray_SF", // Helm
									"NLD_Radiobag_M81" // Radiobag
									];
				};
				class LT_Camo_NLD_80
				{
					text = "NLD 80";
					data =  ["CUP_U_B_BDUv2_roll_gloves_OD", // Uniform
									 "V_SmershVest_01_F",	// Vest
 									 "CUP_O_RUS_Patrol_bag_Green",	// Smol Back
 									 "B_TacticalPack_oli",	// Big Back
								 	 "CUP_H_USArmy_Helmet_M1_plain_Olive", // Helm
									 "CUP_B_Kombat_Radio_Olive" // Radiobag
									];
				};
        class LT_NATO
        {
          text = "NATO";
          data = [["U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam"], // Uniform
									["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"], // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_HelmetB_grass", // Helm
									"B_RadioBag_01_mtp_F" // Radiobag
									];
        };
        class LT_NATO_RECON
        {
          text = "NATO (Recon)";
          data = [["U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_tshirt"], // Uniform
									"V_Chestrig_rgr", // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_HelmetB_plain_mcamo", // Helm
									"B_RadioBag_01_mtp_F" // Radiobag
									];
        };
        class LT_NATO_CTRG
        {
          text = "NATO (CTRG)";
          data = [["U_B_CTRG_1","U_B_CTRG_2"], // Uniform
									["V_PlateCarrierH_CTRG","V_PlateCarrierL_CTRG"], // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_HelmetB_light_snakeskin", // Helm
									"tf_rt1523g_big" // Radiobag
									];
        };
        class LT_NATO_TANOA
        {
          text = "NATO (TANOA)";
          data = [["U_B_T_Soldier_F","U_B_T_Soldier_AR_F"], // Uniform
									"V_PlateCarrier1_tna_F", // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_HelmetB_Enh_tna_F", // Helm
									"tf_rt1523g_big_rhs" // Radiobag
									];
        };
        class LT_NATO_TANOA_CTRG
        {
          text = "NATO (TANOA-CTRG)";
          data = [["U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F"], // Uniform
									["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"], // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_HelmetB_Enh_tna_F", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
        };
        class LT_NATO_TANOA_CTRG_URBAN
        {
          text = "NATO (TANOA-CTRG-URBAN)";
          data = [["U_B_CTRG_Soldier_urb_1_F","U_B_CTRG_Soldier_urb_3_F"], // Uniform
									"V_TacVest_oli", // Vest
									"B_Carryall_oucamo",	// Smol Back
									"B_Carryall_oucamo",	// Big Back
									"H_HelmetB_Enh_tna_F", // Helm
									"tf_rt1523g_black" // Radiobag
									];
        };
        class LT_CSAT
        {
          text = "CSAT";
          data = ["U_O_CombatUniform_ocamo", // Uniform
									"V_HarnessO_brn", // Vest
									"B_AssaultPack_ocamo",	// Smol Back
									"B_AssaultPack_ocamo",	// Big Back
									"H_HelmetO_ocamo", // Helm
									"tf_rt1523g_bwmod" // Radiobag
									];
        };
        class LT_CSAT_URBAN
        {
          text = "CSAT (Urban)";
          data = ["U_O_CombatUniform_oucamo", // Uniform
									"V_HarnessO_gry", // Vest
									"B_Carryall_oucamo",	// Smol Back
									"B_Carryall_oucamo",	// Big Back
									"H_HelmetO_oucamo", // Helm
									"tf_rt1523g_green" // Radiobag
									];
        };
        class LT_CSAT_RECON
        {
          text = "CSAT (Recon)";
          data = ["U_O_SpecopsUniform_ocamo", // Uniform
									"V_HarnessOGL_brn", // Vest
									"B_AssaultPack_ocamo",	// Smol Back
									"B_AssaultPack_ocamo",	// Big Back
									"H_HelmetLeaderO_ocamo", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
        };
        class LT_CSAT_VIPER
        {
          text = "CSAT (VIPER)";
          data = ["U_O_V_Soldier_Viper_F", // Uniform
									"CUP_V_PMC_IOTV_Coyote_Patrol", // Vest
									"B_ViperHarness_ghex_JTAC_F",	// Smol Back
									"B_ViperHarness_ghex_JTAC_F",	// Big Back
									"H_HelmetO_ViperSP_ghex_F", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
        };
        class LT_CSAT_TANOA
        {
          text = "CSAT (Tanoa)";
          data = ["U_O_T_Soldier_F", // Uniform
									"V_HarnessO_ghex_F", // Vest
									"B_AssaultPack_dgtl",	// Smol Back
									"B_AssaultPack_dgtl",	// Big Back
									"H_HelmetO_ghex_F", // Helm
									"tf_rt1523g_bwmod" // Radiobag
									];
        };
        class LT_CSAT_TANOA_VIPER
        {
          text = "CSAT (Tanoa - Viper)";
          data = ["U_O_V_Soldier_Viper_hex_F", // Uniform
									"CUP_V_PMC_IOTV_Coyote_Patrol", // Vest
									"B_ViperHarness_ghex_M_F",	// Smol Back
									"B_ViperHarness_ghex_M_F",	// Big Back
									"H_HelmetO_ViperSP_hex_F", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
        };
        class LT_Spetz_2035
        {
          text = "Spetsnaz 2035 - Lush";
          data = ["U_O_R_Gorka_01_camo_F", // Uniform
									["V_SmershVest_01_F","V_SmershVest_01_radio_F"], // Vest
									["B_FieldPack_taiga_RPG_AT_F","B_AssaultPack_wdl_F","B_Carryall_wdl_F"],	// Smol Back
									["B_FieldPack_taiga_RPG_AT_F","B_AssaultPack_wdl_F","B_Carryall_wdl_F"],	// Big Back
									["H_HelmetAggressor_cover_taiga_F","H_HelmetAggressor_F"], // Helm
									"B_RadioBag_01_wdl_F" // Radiobag
									];
        };
        class LT_Spetz_2035_Arid
        {
          text = "Spetsnaz 2035 - Arid";
          data = ["U_O_R_Gorka_01_brown_F", // Uniform
									"V_HarnessOGL_gry", // Vest
									"B_Carryall_cbr",	// Smol Back
									"B_Carryall_cbr",	// Big Back
									"H_HelmetAggressor_cover_F", // Helm
									"B_RadioBag_01_eaf_F" // Radiobag
									];
        };
        class LT_AAF
        {
          text = "AAF";
          data = [["U_I_CombatUniform","U_I_OfficerUniform","U_I_CombatUniform_shortsleeve"], // Uniform
									"V_PlateCarrierIA2_dgtl", // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									["H_HelmetIA_camo","H_HelmetIA"], // Helm
									"tf_rt1523g_big" // Radiobag
									];
        };
        class LT_LDF
        {
          text = "LDF";
          data = ["U_I_E_Uniform_01_F", // Uniform
									["V_CarrierRigKBT_01_heavy_EAF_F","V_CarrierRigKBT_01_light_EAF_F","V_CarrierRigKBT_01_EAF_F"], // Vest
									"B_Carryall_eaf_IEAmmo_F",	// Smol Back
									"B_Carryall_eaf_IEAmmo_F",	// Big Back
									["H_HelmetHBK_ear_F","H_HelmetHBK_headset_F","H_HelmetHBK_chops_F","H_HelmetHBK_F"], // Helm
									"B_RadioBag_01_eaf_F" // Radiobag
									];
        };
				class LT_CDF_Desert
				{
					text = "[CDF] Desert";
					data = ["CUP_U_B_CDF_DST_1", // Uniform
									"CUP_V_CDF_6B3_1_DST", // Vest
									"CUP_B_USPack_Coyote",	// Smol Back
									"CUP_B_USPack_Coyote",	// Big Back
									"CUP_H_CDF_H_PASGT_DST", // Helm
									"tf_rt1523g_big" // Radiobag
									];
				};
				class LT_CDF_Forest
				{
					text = "[CDF] Forest";
					data = ["CUP_U_B_CDF_FST_1", // Uniform
									"CUP_V_CDF_6B3_1_FST", // Vest
									"B_ViperHarness_ghex_F",	// Smol Back
									"B_ViperHarness_ghex_F",	// Big Back
									"CUP_H_CDF_H_PASGT_FST", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_CDF_Mountain
				{
					text = "[CDF] Mountain";
					data = ["CUP_U_B_CDF_MNT_1", // Uniform
									"CUP_V_CDF_6B3_1_MNT", // Vest
									"CUP_B_USMC_MOLLE",	// Smol Back
									"CUP_B_USMC_MOLLE",	// Big Back
									"CUP_H_CDF_H_PASGT_MNT", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_CTRG_Jungle
				{
					text = "[CRTG] Jungle";
					data = ["U_B_CTRG_Soldier_F", // Uniform
									"V_TacVest_oli", // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_HelmetB_TI_tna_F", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_GUR_Arid
				{
					text = "[GUR] Arid";
					data = [["U_BG_Guerilla2_1","U_BG_Guerilla1_1", "U_BG_leader", "U_IG_Guerilla3_1", "U_BG_Guerilla2_3", "U_IG_Guerrilla_6_1"], // Uniform
									["V_TacVest_blk", "V_Chestrig_oli", "V_BandollierB_oli", "V_Chestrig_blk", "V_BandollierB_khk"], // Vest
									["B_AssaultPack_cbr", "B_Kitbag_rgr", "B_AssaultPack_khk"],	// Smol Back
									["B_AssaultPack_cbr", "B_Kitbag_rgr", "B_AssaultPack_khk"],	// Big Back
									["H_Bandanna_khk", "H_Shemag_olive", "H_Shemag_olive_hs", "H_Bandanna_mcamo", "H_Bandanna_surfer"], // Helm
									["tf_rt1523g_black", "tf_rt1523g_bwmod"] // Radiobag
									];
				};
				class LT_GUR_Desert
				{
					text = "[GUR] Desert";
					data = [["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_07"], // Uniform
									["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_06"], // Vest
									["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],	// Big Back
									["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "B_Messenger_Coyote_F", "CUP_B_CivPack_WDL", "B_Respawn_Sleeping_bag_brown_F", "CUP_B_AlicePack_khaki", "CUP_B_AlicePack_Bedroll"], // Helm
									["tf_rt1523g_RHS", "tf_rt1523g"] // Radiobag
									];
				};
				class LT_GUR_Jungle
				{
					text = "[GUR] Jungle";
					data = [["U_I_C_Soldier_Bandit_3_F", "U_I_C_Soldier_Bandit_1_F", "U_I_C_Soldier_Bandit_5_F"], // Uniform
									["V_Chestrig_blk", "V_BandollierB_rgr", "V_TacVest_oli", "V_TacChestrig_grn_F"], // Vest
									["B_FieldPack_cb_Bandit_3_F", "B_FieldPack_blk_Bandit_8_F"],	// Smol Back
									["B_FieldPack_cb_Bandit_3_F", "B_FieldPack_blk_Bandit_8_F"],	// Big Back
									["H_Bandanna_khk_hs", "H_Watchcap_blk", "H_Cap_marshal"], // Helm
									["tf_rt1523g_bwmod", "tf_rt1523g_green"] // Radiobag
									];
				};
				class LT_GER_Flecktarn
				{
					text = "[BW] Flecktarn";
					data = [["CUP_U_B_GER_Flecktarn_2","CUP_U_B_GER_Flecktarn_1"], // Uniform
									["CUP_V_B_GER_Vest_2","CUP_V_B_GER_Vest_1","CUP_V_B_GER_Carrier_Vest_2","CUP_V_B_GER_Carrier_Vest","CUP_V_B_GER_Carrier_Vest_3"], // Vest
									"CUP_B_GER_Pack_Flecktarn",	// Smol Back
									"CUP_B_GER_Pack_Flecktarn",	// Big Back
									["CUP_H_USMC_Goggles_HelmetWDL","CUP_H_USMC_Headset_GoggleW_HelmetWDL","CUP_H_USMC_Headset_HelmetWDL","CUP_H_USMC_HelmetWDL"], // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_GER_Tropentarn
				{
					text = "[BW] Tropentarn";
					data = [["CUP_U_B_GER_Tropentarn_2","CUP_U_B_GER_Tropentarn_1","CUP_U_B_GER_Tropentarn_1"], // Uniform
									["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"], // Vests
									"CUP_B_GER_Pack_Tropentarn",	// Smol Back
									"CUP_B_GER_Pack_Tropentarn",	// Big Back
									["CUP_H_RACS_Helmet_Headset_DES","CUP_H_RACS_Helmet_Headset_DES","CUP_H_RACS_Helmet_Headset_DES"], // Helm
									"tf_rt1523g_big_bwmod_tropen" // Radiobag
									];
				};
				class LT_UK_Forest
				{
					text = "[UK] Woodland";
					data = [["CUP_U_B_BAF_DPM_S1_RolledUp","CUP_U_B_BAF_DPM_S2_UnRolled"], // Uniform
									["CUP_V_BAF_Osprey_Mk2_DPM_Soldier1","CUP_V_BAF_Osprey_Mk2_DPM_Soldier2","CUP_V_BAF_Osprey_Mk4_MTP_Rifleman"], // Vest
									"CUP_B_Bergen_BAF",	// Smol Back
									"CUP_B_Bergen_BAF",	// Big Back
									"CUP_H_BAF_Helmet_1_DPM", // Helm
									"tf_rt1523g_bwmod" // Radiobag
									];
				};
				class LT_UK_Desert
				{
					text = "[UK] Desert";
					data = [["CUP_U_B_BAF_DDPM_S1_RolledUp","CUP_U_B_BAF_DDPM_S2_UnRolled"], // Uniform
									["CUP_V_BAF_Osprey_Mk2_DDPM_Soldier1","CUP_V_BAF_Osprey_Mk2_DDPM_Soldier2"], // Vest
									"CUP_B_Bergen_BAF",	// Smol Back
									"CUP_B_Bergen_BAF",	// Big Back
									"CUP_H_BAF_Helmet_4_DDPM", // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
				class LT_UK_Mountain
				{
					text = "[UK] Mountain";
					data = [["CUP_U_B_BAF_MTP_S1_RolledUp","CUP_U_B_BAF_MTP_S5_UnRolled","CUP_U_B_BAF_MTP_S6_UnRolled"], // Uniform
									"CUP_V_BAF_Osprey_Mk4_MTP_Rifleman", // Vest
									"CUP_B_Bergen_BAF",	// Smol Back
									"CUP_B_Bergen_BAF",	// Big Back
									["CUP_H_BAF_Helmet_1_MTP","CUP_H_BAF_Helmet_2_MTP"], // Helm
									"tf_rt1523g" // Radiobag
									];
				};
				class LT_USA_Army
				{
					text = "[USA] Army";
					data = [["CUP_U_B_USArmy_Base","CUP_U_B_USArmy_TwoKnee","CUP_U_B_USArmy_UBACS","CUP_U_B_USArmy_Soft"], // Uniform
									["CUP_V_B_IOTV_MG", "CUP_V_B_IOTV_saw","CUP_V_B_IOTV_SL","CUP_V_B_IOTV_tl"], // Vest
									["CUP_B_MedicPack_ACU","CUP_B_AssaultPack_ACU","B_AssaultPack_mcamo","B_Carryall_oucamo"],	// Smol Back
									["CUP_B_MedicPack_ACU","CUP_B_AssaultPack_ACU","B_AssaultPack_mcamo","B_Carryall_oucamo"],	// Big Back
									["CUP_H_USArmy_HelmetMICH_earpro_ess","CUP_H_USArmy_HelmetMICH_earpro","CUP_H_USArmy_HelmetMICH_ESS","CUP_H_USArmy_HelmetMICH_headset_ess","CUP_H_USArmy_HelmetMICH_headset","CUP_H_USArmy_HelmetMICH"], // Helm
									"B_RadioBag_01_mtp_F" // Radiobag
									];
				};
				class LT_USMC_Desert
				{
					text = "[USMC] Desert";
					data = [["CUP_U_B_USMC_FROG1_DMARPAT","CUP_U_B_USMC_FROG2_DMARPAT","CUP_U_B_USMC_FROG3_DMARPAT"], // Uniform
									["CUP_V_B_Eagle_SPC_Patrol","CUP_V_B_Eagle_SPC_DMR","CUP_V_B_Eagle_SPC_AR","CUP_V_B_Eagle_SPC_Corpsman"], // Vest
									["CUP_B_FR_MOLLE_Sab","CUP_B_USMC_MOLLE_AR"],	// Smol Back
									["CUP_B_FR_MOLLE_Sab","CUP_B_USMC_MOLLE_AR"],	// Big Back
									["CUP_H_USMC_BOONIE_PRR_DES","CUP_H_USMC_MICH2000_DEF_ESS_DES","CUP_H_USMC_LWH_DES","CUP_H_USMC_MICH2000_DES"], // Helm
									"tf_rt1523g_big_rhs" // Radiobag
									];
				};
				class LT_USMC_Woodland
				{
					text = "[USMC] Woodland";
					data = [["CUP_U_B_USMC_FROG1_WMARPAT","CUP_U_B_USMC_FROG2_WMARPAT","CUP_U_B_USMC_FROG3_WMARPAT"], // Uniform
									["CUP_V_B_Eagle_SPC_Patrol","CUP_V_B_Eagle_SPC_AT","CUP_V_B_Eagle_SPC_SL","CUP_V_B_Eagle_SPC_MG"], // Vest
									"CUP_B_USMC_MOLLE_MG",	// Smol Back
									"CUP_B_USMC_MOLLE_MG",	// Big Back
									["CUP_H_USMC_LWH_NVGMOUNT_WDL","CUP_H_USMC_LWH_ESS_LR_WDL","CUP_H_USMC_LWH_ESS_HS_WDL","CUP_H_USMC_LWH_NVGMOUNT_ESS_WDL"], // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_NLDO_31_GUARDS
				{
					text = "[NLDO] 31st Guards";
					data = [["NLDO_RU_VDV_31_Camo","NLDO_RU_VDV_31_Camo2"], // Uniform
									"NLDO_RU_VDV_31_Vest", // Vest
									["NLDO_FieldPack_Flora_AT","NLDO_FieldPack_Flora_Empty"],	// Smol Back
									["NLDO_FieldPack_Flora_AT","NLDO_FieldPack_Flora_Empty"],	// Big Back
									["NLDO_RU_VDV_31_Helmet2","NLDO_RU_VDV_31_Helmet"], // Helm
									"tf_rt1523g_black" // Radiobag
									];
				};
				class LT_NLDO_76_GUARDS
				{
					text = "[NLDO] 76th Guards";
					data = [["NLDO_RU_VDV_76_Camo","NLDO_RU_VDV_76_Camo2"], // Uniform
									"NLDO_RU_VDV_76_Vest", // Vest
									["NLDO_FieldPack_EMP_MAT","NLDO_FieldPack_EMP_Empty"],	// Smol Back
									["NLDO_FieldPack_EMP_MAT","NLDO_FieldPack_EMP_Empty"],	// Big Back
									["NLDO_RU_VDV_76_Helmet2","NLDO_RU_VDV_76_Helmet"], // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_ChDKZ_Woodland
				{
					text = "[ChDKZ] Woodland";
					data = [["CUP_U_O_CHDKZ_Kam_01","CUP_U_O_CHDKZ_Kam_02","CUP_U_O_CHDKZ_Kam_03","CUP_U_O_CHDKZ_Kam_04","CUP_U_O_CHDKZ_Kam_05","CUP_U_O_CHDKZ_Kam_06","CUP_U_O_CHDKZ_Kam_07","CUP_U_O_CHDKZ_Kam_08"], // Uniform
									"CUP_V_O_Ins_Carrier_Rig", // Vest
									["CUP_B_INS_AlicePack_Ammo","B_AssaultPack_khk","B_FieldPack_oli","CUP_B_CivPack_WDL"],	// Smol Back
									["CUP_B_INS_AlicePack_Ammo","B_AssaultPack_khk","B_FieldPack_oli","CUP_B_CivPack_WDL"],	// Big Back
									["CUP_H_ChDKZ_Beanie","CUP_H_ChDKZ_Beret","CUP_H_ChDKZ_Cap"], // Helm
									"tf_rt1523g_green" // Radiobag
									];
				};
				class LT_RUS_Spetsnaz
        {
            text = "[RUS] Spetsnaz";
            data = ["U_O_R_Gorka_01_F", // Uniform
                    ["V_SmershVest_01_F","V_SmershVest_01_radio_F"], // Vest
                    ["CUP_O_RUS_Patrol_bag_Green","CUP_O_RUS_Patrol_bag_Green_Shovel"], // Smol Back
                    ["CUP_O_RUS_Patrol_bag_Green","CUP_O_RUS_Patrol_bag_Green_Shovel"], // Big Back
                    ["CUP_H_RUS_6B27_headset_goggles","CUP_H_RUS_6B27_goggles","CUP_H_RUS_6B27_headset"], // Helm
                    "B_RadioBag_01_wdl_F" // Radiobag
                    ];
        };
				class LT_RUS_Summer
        {
            text = "[RUS] Summer";
            data = ["CUP_U_O_RUS_Ratnik_Summer", // Uniform
                    "CUP_Vest_RUS_6B45_Sh117", // Vest
                    ["CUP_O_RUS_Patrol_bag_Summer","CUP_O_RUS_Patrol_bag_Summer_Shovel"], // Smol Back
                    ["CUP_O_RUS_Patrol_bag_Summer","CUP_O_RUS_Patrol_bag_Summer_Shovel"], // Big Back
                    ["CUP_H_RUS_6B47_v2_Summer","CUP_H_RUS_6B47_v2_GogglesClosed_Summer","CUP_H_RUS_6B47_v2_GogglesUp_Summer"], // Helm
                    "B_RadioBag_01_wdl_F" // Radiobag
                    ];
        };
				class LT_RUS_Desert
    		{
		        text = "[RUS] Desert";
		        data = ["CUP_U_O_RUS_Ratnik_Desert", // Uniform
		                "CUP_Vest_RUS_6B45_Sh117_Desert", // Vest
		                ["CUP_O_RUS_Patrol_bag_Desert","CUP_O_RUS_Patrol_bag_Desert_Shovel"], // Smol Back
		                ["CUP_O_RUS_Patrol_bag_Desert","CUP_O_RUS_Patrol_bag_Desert_Shovel"], // Big Back
		                ["CUP_H_RUS_6B47_v2_Desert","CUP_H_RUS_6B47_v2_GogglesClosed_Desert","CUP_H_RUS_6B47_v2_GogglesUp_Desert"], // Helm
		                "CUP_O_RUS_Patrol_bag_Desert" // Radiobag
		                ];
        };
				class LT_RUS_Winter
				{
		        text = "[RUS] Winter";
		        data = ["CUP_U_O_RUS_Ratnik_Winter", // Uniform
		                "CUP_V_PMC_CIRAS_Winter_Patrol", // Vest
		                "CUP_O_RUS_Patrol_bag_Winter", // Smol Back
		                "CUP_O_RUS_Patrol_bag_Winter", // Big Back
		                ["CUP_H_RUS_6B47_v2_GogglesClosed_Winter","CUP_H_RUS_6B47_v2_GogglesUp_Winter","CUP_H_RUS_6B47_v2_Winter"], // Helm
		                "CUP_O_RUS_Patrol_bag_Winter" // Radiobag
		                ];
				};
				class LT_SLA_Desert
				{
					text = "[SLA] Desert";
					data = ["CUP_U_O_SLA_Desert", // Uniform
									["CUP_V_O_SLA_Flak_Vest02", "CUP_V_O_SLA_Flak_Vest01", "CUP_V_O_SLA_Carrier_Belt02"], // Vest
									["B_Kitbag_sgg", "B_AssaultPack_sgg"],	// Smol Back
									["B_Kitbag_sgg", "B_AssaultPack_sgg"],	// Big Back
								  "CUP_H_SLA_Helmet", // Helm
									["tf_rt1523g_sage", "tf_rt1523g_big_rhs"] // Radiobag
									];
				};
				class LT_SLA_Especades
				{
					text = "[SLA] Especades";
					data = ["CUP_U_O_SLA_MixedCamo", // Uniform
									"CUP_V_O_SLA_Flak_Vest03", // Vest
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Big Back
									"CUP_H_SLA_Beret", // Helm
									["tf_rt1523g", "tf_rt1523g_big_rhs"] // Radiobag
									];
				};
				class LT_SLA_Militia
				{
					text = "[SLA] Militia";
					data = ["CUP_U_O_SLA_Green", // Uniform
									"CUP_V_O_SLA_Carrier_Belt02", // Vest
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Big Back
									"CUP_H_SLA_Helmet", // Helm
									"tf_rt1523g_green" // Radiobag
									];
				};
				class LT_SLA_Partisans
				{
					text = "[SLA] Partisans";
					data = [["CUP_U_O_Partisan_VSR_Mixed2", "CUP_U_O_Partisan_TTsKO"], // Uniform
									["CUP_V_O_SLA_Carrier_Belt02", "CUP_V_O_SLA_Carrier_Belt"], // Vest
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Big Back
									["CUP_H_SLA_BeanieGreen", "CUP_H_SLA_BeretRed"], // Helm
									["tf_rt1523g_big_bwmod", "tf_rt1523g_big_rhs"] // Radiobag
									];
				};
				class LT_SLA_Urban
				{
					text = "[SLA] Urban";
					data = ["CUP_U_O_SLA_Urban", // Uniform
									"CUP_V_O_SLA_Flak_Vest01", // Vest
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],	// Big Back
									"CUP_H_SLA_Helmet", // Helm
									["tf_rt1523g_fabric", "tf_rt1523g_big_bwmod_tropen"] // Radiobag
									];
				};
				class LT_TKA_Army
				{
					text = "[TKA] Army";
					data = ["CUP_U_O_TK_Green", // Uniform
									"CUP_V_O_TK_Vest_1", // Vest
									"CUP_U_O_TK_Green",	// Smol Back
									"CUP_U_O_TK_Green",	// Big Back
									"CUP_H_TK_Helmet", // Helm
									"tf_rt1523g_big_rhs" // Radiobag
									];
				};
				class LT_TKI_OPF_Desert
				{
					text = "[TKI] Desert";
					data = [["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_07"], // Uniform
									["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_06"], // Vest
									["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],	// Big Back
									["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "B_Messenger_Coyote_F", "CUP_B_CivPack_WDL", "B_Respawn_Sleeping_bag_brown_F", "CUP_B_AlicePack_khaki", "CUP_B_AlicePack_Bedroll"], // Helm
									["tf_rt1523g_RHS", "tf_rt1523g"] // Radiobag
									];
				};
				class LT_95TH_Airmobile_Brigade
				{
					text = "[95th] Airmobile Brigade Ukraine";
					data = ["nldo_ua_uaf_95_Camo", // Uniform
									"nldo_ua_uaf_95_Vest", // Vest
									"nldo_ua_uaf_95_bp_empty",	// Smol Back
									"nldo_ua_uaf_95_bp_empty",	// Big Back
									"nldo_ua_uaf_95_Helmet", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_UBG_Border_Guard
				{
					text = "[UBG] Border Guard";
					data = ["nldo_ua_uaf_bg_Camo", // Uniform
									"nldo_ua_uaf_bg_Vest", // Vest
									"nldo_ua_uaf_bg_bp_empty",	// Smol Back
									"nldo_ua_uaf_bg_bp_empty",	// Big Back
									"nldo_ua_uaf_bg_Helmet", // Helm
									"tf_rt1523g_big_bwmod" // Radiobag
									];
				};
				class LT_AA_Army
				{
					text = "[AA] Arfrican Army";
					data = ["U_I_C_Soldier_Para_2_F", // Uniform
									"V_TacChestrig_oli_F", // Vest
									"B_FieldPack_oli",	// Smol Back
									"B_FieldPack_oli",	// Big Back
									"CUP_H_RACS_Helmet_olive", // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
				class LT_AA_SF
				{
					text = "[AA] Special Forces";
					data = ["U_BG_Guerrilla_6_1", // Uniform
									["CUP_V_B_RRV_Scout","CUP_V_B_RRV_MG","CUP_V_O_TK_Vest_1"], // Vest
									"B_Carryall_oli",	// Smol Back
									"B_Carryall_oli",	// Big Back
									"H_Booniehat_oli", // Helm
									"tf_rt1523g_green" // Radiobag
									];
				};
				class LT_NAPA_Units
				{
					text = "[NAPA] NAPA";
					data = [["CUP_U_I_GUE_Flecktarn","CUP_U_I_GUE_Flecktarn3","CUP_U_I_GUE_Woodland1"], // Uniform
									"CUP_V_I_Carrier_Belt", // Vest
									["B_TacticalPack_blk","CUP_B_HikingPack_Civ"],	// Smol Back
									["B_TacticalPack_blk","CUP_B_HikingPack_Civ"],	// Big Back
									"H_HelmetSpecB", // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
				class LT_RACS_Desert
				{
					text = "[RACS] Desert";
					data = [["CUP_U_I_RACS_Desert_1","CUP_U_I_RACS_Desert_2"], // Uniform
									["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"], // Vest
									"CUP_B_USArmy_MG",	// Smol Back
									"CUP_B_USArmy_MG",	// Big Back
									["CUP_H_RACS_Helmet_DES","CUP_H_RACS_Helmet_Goggles_DES"], // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
				class LT_RACS_Jungle
				{
					text = "[RACS] Jungle";
					data = [["CUP_U_I_RACS_mech_1","CUP_U_I_RACS_mech_2"], // Uniform
									["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"], // Vest
									"CUP_B_USArmy_MG",	// Smol Back
									"CUP_B_USArmy_MG",	// Big Back
									["CUP_H_RACS_Helmet_mech","CUP_H_RACS_Helmet_Goggles_mech"], // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
				class LT_RACS_Royal
				{
					text = "[RACS] Royal Troops";
					data = [["CUP_U_I_RACS_Desert_1","CUP_U_I_RACS_Desert_2"], // Uniform
									["CUP_V_I_RACS_Carrier_Vest_wdl","CUP_V_I_RACS_Carrier_Vest_wdl_2","CUP_V_I_RACS_Carrier_Vest_wdl_3"], // Vest
									["B_Kitbag_rgr","B_TacticalPack_oli"],	// Smol Back
									["B_Kitbag_rgr","B_TacticalPack_oli"],	// Big Back
									"CUP_H_RACS_Helmet_olive", // Helm
									"tf_rt1523g_fabric" // Radiobag
									];
				};
				class LT_RACS_Urban
				{
					text = "[RACS] Urban";
					data = [["CUP_U_I_RACS_Urban_1","CUP_U_I_RACS_Urban_2"], // Uniform
									["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"], // Vest
									"CUP_B_USArmy_MG",	// Smol Back
									"CUP_B_USArmy_MG",	// Big Back
									"CUP_H_RACS_Helmet_DPAT", // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
				class LT_RACS_Forest
				{
					text = "[RACS] Forest";
					data = [["CUP_U_I_RACS_WDL_1","CUP_U_I_RACS_WDL_2"], // Uniform
									["CUP_V_I_RACS_Carrier_Vest_wdl","CUP_V_I_RACS_Carrier_Vest_wdl_2","CUP_V_I_RACS_Carrier_Vest_wdl_3"], // Vest
									["B_Kitbag_rgr","B_TacticalPack_oli"],	// Smol Back
									["B_Kitbag_rgr","B_TacticalPack_oli"],	// Big Back
									["CUP_H_RACS_Helmet_Goggles_wdl","CUP_H_RACS_Helmet_Headset_wdl","CUP_H_RACS_Helmet_wdl"], // Helm
									"tf_rt1523g_fabric" // Radiobag
									];
				};
				class LT_GUR_GRN_Desert
				{
					text = "[TKI] Desert";
					data = [["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_07"], // Uniform
									["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_06"], // Vest
									["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],	// Smol Back
									["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],	// Big Back
									["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_04"], // Helm
									["tf_rt1523g_sage", "tf_rt1523g_big_rhs"] // Radiobag
									];
				};
				class LT_PMC
				{
					text = "[PMC] ION Security";
					data = [["CUP_I_B_PMC_UNIT_1","CUP_I_B_PMC_UNIT_2","CUP_I_B_PMC_UNIT_3","CUP_I_B_PMC_UNIT_4","CUP_I_B_PMC_UNIT_5","CUP_I_B_PMC_UNIT_6","CUP_I_B_PMC_UNIT_7","CUP_I_B_PMC_UNIT_8","CUP_I_B_PMC_UNIT_9","CUP_I_B_PMC_UNIT_10","CUP_I_B_PMC_UNIT_11","CUP_I_B_PMC_UNIT_12","CUP_I_B_PMC_UNIT_13","CUP_I_B_PMC_UNIT_14","CUP_I_B_PMC_UNIT_15","CUP_I_B_PMC_UNIT_16","CUP_I_B_PMC_UNIT_17","CUP_I_B_PMC_UNIT_19","CUP_I_B_PMC_UNIT_20","CUP_I_B_PMC_UNIT_21","CUP_I_B_PMC_UNIT_22","CUP_I_B_PMC_UNIT_23","CUP_I_B_PMC_UNIT_24"], // Uniform
					 ["CUP_V_PMC_CIRAS_Black_Empty","CUP_V_PMC_CIRAS_Coyote_Empty","CUP_V_PMC_IOTV_Black_Empty","CUP_V_PMC_IOTV_Coyote_Empty","V_TacVest_blk"], // Vest
					 ["CUP_B_PMC_AlicePack_Exp","CUP_B_PMC_Backpack_GL"],	// Smol Back
					 ["CUP_B_PMC_AlicePack_Exp","CUP_B_PMC_Backpack_GL"],	// Big Back
					 ["CUP_H_PMC_Cap_Back_Burberry","CUP_H_PMC_Cap_Back_EP_Burberry","CUP_H_PMC_Cap_Back_EP_Grey","CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Back_PRR_Burberry","CUP_H_PMC_Cap_Back_PRR_Grey","CUP_H_PMC_Cap_Back_PRR_Tan","CUP_H_PMC_Cap_Back_Tan","CUP_H_PMC_Cap_Burberry","CUP_H_PMC_Cap_EP_Burberry","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_EP_Tan","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_PRR_Burberry","CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_PRR_Tan","CUP_H_PMC_Cap_Tan","CUP_H_PMC_EP_Headset","CUP_H_PMC_PRR_Headset"], // Helm
					 "tf_rt1523g_black" // Radiobag
					 ];
				};
				class LT_PMC_WTR
				{
					text = "[PMC] ION Security (Winter)";
					data = [["CUP_I_B_PMC_UNIT_18","CUP_I_B_PMC_UNIT_25","CUP_I_B_PMC_UNIT_26","CUP_I_B_PMC_UNIT_27","CUP_I_B_PMC_UNIT_28"], // Uniform
									["CUP_V_PMC_CIRAS_Black_Empty","CUP_V_PMC_CIRAS_Coyote_Empty","CUP_V_PMC_IOTV_Black_Empty","CUP_V_PMC_IOTV_Coyote_Empty","V_TacVest_blk"], // Vest
									["CUP_B_PMC_AlicePack_Exp","CUP_B_PMC_Backpack_GL"],	// Smol Back
									["CUP_B_PMC_AlicePack_Exp","CUP_B_PMC_Backpack_GL"],	// Big Back
									["CUP_H_PMC_Cap_Back_Burberry","CUP_H_PMC_Cap_Back_EP_Burberry","CUP_H_PMC_Cap_Back_EP_Grey","CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Back_PRR_Burberry","CUP_H_PMC_Cap_Back_PRR_Grey","CUP_H_PMC_Cap_Back_PRR_Tan","CUP_H_PMC_Cap_Back_Tan","CUP_H_PMC_Cap_Burberry","CUP_H_PMC_Cap_EP_Burberry","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_EP_Tan","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_PRR_Burberry","CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_PRR_Tan","CUP_H_PMC_Cap_Tan","CUP_H_PMC_EP_Headset","CUP_H_PMC_PRR_Headset"], // Helm
									"tf_rt1523g_big" // Radiobag
									];
				};
				class LT_CIV_Fireman
				{
					text = "[CIV] Fireman";
					data = ["CUP_U_C_Fireman_01", // Uniform
									"CUP_V_C_Police_Holster", // Vest
									"CUP_B_AssaultPack_Black",	// Smol Back
									"CUP_B_AssaultPack_Black",	// Big Back
									"CUP_H_C_Fireman_Helmet_01", // Helm
									"tf_rt1523g_black" // Radiobag
									];
				};
				class LT_CIV_PIGS
				{
					text = "[CIV] Police";
					data = ["CUP_U_C_Policeman_01", // Uniform
									"V_TacVestIR_blk", // Vest
									"CUP_B_Bergen_BAF",	// Smol Back
									"CUP_B_Bergen_BAF",	// Big Back
									"CUP_H_C_Policecap_01", // Helm
									"tf_rt1523g_sage" // Radiobag
									];
				};
			};

			class ItemsConfig
			{
				path[] = {"CfgCamouflage"};
				localConfig = 1;
				propertyText = "text";
				propertyData = "data";
			};
		};
	};
};
