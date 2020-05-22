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
					data = ["None","None","None","None","None"];
					default = 1;
				};
				class LT_Camo_Desert
				{
					text = "Desert";
					data =  ["NLD_DST_Camo","NLD_DST_Vest","NLD_DST_Carryall_Empty","NLD_DST_Helmet","NLD_Radiobag_NFPMT"];
				};
				class LT_Camo_Woodland
				{
					text = "Woodland";
					data = ["NLD_WLD_Camo","NLD_WLD_Vest","NLD_WLD_Carryall_Empty","NLD_WLD_Helmet","NLD_Radiobag_WDL"];
				};
				class LT_Camo_UN_Woodland
				{
					text = "UN (Woodland)";
					data = ["NLD_WLD_Camo","NLD_UN_Vest","NLD_WLD_Carryall_B","NLD_UN_Helmet","NLD_Radiobag_WDL"];
				};
				class LT_Camo_UN_Desert
				{
					text = "UN (Desert)";
					data = ["NLD_DST_Camo","NLD_UN_Vest","NLD_DST_Carryall_Empty","NLD_UN_Helmet","NLD_Radiobag_NFPMT"];
				};
				class LT_Camo_NFPTAN
				{
					text = "NFP-TAN";
					data = ["NLD_NFPT_Camo","NLD_NFPT_Vest","NLD_NFPT_Carryall_Empty","NLD_NFPT_Helmet","NLD_Radiobag_NFPMT"];
				};
				class LT_Camo_NFPGREEN
				{
					text = "NFP-GREEN";
					data = ["NLD_NFPG_Camo","NLD_NFPG_Vest","NLD_NFPG_Carryall_Empty","NLD_NFPG_Helmet","NLD_Radiobag_NFPMT"];
				};
				class LT_Camo_WINTER
				{
					text = "Winter";
					data = ["NLD_WTR_Camo","NLD_WLD_Vest","NLD_WTR_Carryall_Empty","NLD_WTR_Helmet","NLD_Radiobag_Arctic"];
				};
				class LT_Camo_DSI
				{
					text = "DSI";
					data = ["NLD_DSI_Camo","NLD_DSI_PlateCarrier","NLD_SF_Carryall_Empty","NLD_DSI_Helmet","b_radiobag_01_black_F"];
				};
				class LT_Camo_SF
				{
					text = "Special Forces Black";
					data = ["NLD_SF_Camo","NLD_SF_Vest","NLD_SF_Carryall_Empty","NLD_SF_ECH","b_radiobag_01_black_F"];
				};
				class LT_Camo_SFMTP
				{
					text = "Special forces MTP";
					data = ["NLD_MTP_Camo","NLD_MTP_PlateCarrier","NLD_MTP_Carryall_Empty","NLD_MTP_ECH","NLD_Radiobag_MCAM"];
				};
				class LT_Camo_KM
				{
					text = "Koninklijke Mariniers";
					data = ["NLD_KM_Camo","V_I_G_resistanceLeader_F","NLD_KM_Carryall_Empty","NLD_KM_Helmet","NLD_Radiobag_M81"];
				};
        class LT_NATO
        {
          text = "NATO";
          data = [["U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam"],["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"],"B_Carryall_oli","H_HelmetB_grass","B_RadioBag_01_mtp_F"];
        };
        class LT_NATO_RECON
        {
          text = "NATO (Recon)";
          data = [["U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_tshirt"],"V_Chestrig_rgr","B_Carryall_oli","H_HelmetB_plain_mcamo","B_RadioBag_01_mtp_F"];
        };
        class LT_NATO_CTRG
        {
          text = "NATO (CTRG)";
          data = [["U_B_CTRG_1","U_B_CTRG_2"],["V_PlateCarrierH_CTRG","V_PlateCarrierL_CTRG"],"B_Carryall_oli","H_HelmetB_light_snakeskin","tf_rt1523g_big"];
        };
        class LT_NATO_TANOA
        {
          text = "NATO (TANOA)";
          data = [["U_B_T_Soldier_F","U_B_T_Soldier_AR_F"],"V_PlateCarrier1_tna_F","B_Carryall_oli","H_HelmetB_Enh_tna_F","tf_rt1523g_big_rhs"];
        };
        class LT_NATO_TANOA_CTRG
        {
          text = "NATO (TANOA-CTRG)";
          data = [["U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F"],["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"],"B_Carryall_oli","H_HelmetB_Enh_tna_F","tf_rt1523g_big_bwmod"];
        };
        class LT_NATO_TANOA_CTRG_URBAN
        {
          text = "NATO (TANOA-CTRG-URBAN)";
          data = [["U_B_CTRG_Soldier_urb_1_F","U_B_CTRG_Soldier_urb_3_F"],"V_TacVest_oli","B_Carryall_oucamo","H_HelmetB_Enh_tna_F","tf_rt1523g_black"];
        };
        class LT_CSAT
        {
          text = "CSAT";
          data = ["U_O_CombatUniform_ocamo","V_HarnessO_brn","B_AssaultPack_ocamo","H_HelmetO_ocamo","tf_rt1523g_bwmod"];
        };
        class LT_CSAT_URBAN
        {
          text = "CSAT (Urban)";
          data = ["U_O_CombatUniform_oucamo","V_HarnessO_gry","B_Carryall_oucamo","H_HelmetO_oucamo","tf_rt1523g_green"];
        };
        class LT_CSAT_RECON
        {
          text = "CSAT (Recon)";
          data = ["U_O_SpecopsUniform_ocamo","V_HarnessOGL_brn","B_AssaultPack_ocamo","H_HelmetLeaderO_ocamo","tf_rt1523g_big_bwmod"];
        };
        class LT_CSAT_VIPER
        {
          text = "CSAT (VIPER)";
          data = ["U_O_V_Soldier_Viper_F","CUP_V_PMC_IOTV_Coyote_Patrol","B_ViperHarness_ghex_JTAC_F","H_HelmetO_ViperSP_ghex_F","tf_rt1523g_big_bwmod"];
        };
        class LT_CSAT_TANOA
        {
          text = "CSAT (Tanoa)";
          data = ["U_O_T_Soldier_F","V_HarnessO_ghex_F","B_AssaultPack_dgtl","H_HelmetO_ghex_F","tf_rt1523g_bwmod"];
        };
        class LT_CSAT_TANOA_VIPER
        {
          text = "CSAT (Tanoa - Viper)";
          data = ["U_O_V_Soldier_Viper_hex_F","CUP_V_PMC_IOTV_Coyote_Patrol","B_ViperHarness_ghex_M_F","H_HelmetO_ViperSP_hex_F","tf_rt1523g_big_bwmod"];
        };
        class LT_AAF
        {
          text = "AAF";
          data = [["U_I_CombatUniform","U_I_OfficerUniform","U_I_CombatUniform_shortsleeve"],"V_PlateCarrierIA2_dgtl","B_Carryall_oli",["H_HelmetIA_camo","H_HelmetIA"],"tf_rt1523g_big"];
        };
				class LT_CDF_Desert
				{
					text = "[CDF] Desert";
					data = ["CUP_U_B_CDF_DST_1","CUP_V_CDF_6B3_1_DST","CUP_B_USPack_Coyote","CUP_H_CDF_H_PASGT_DST","tf_rt1523g_big"];
				};
				class LT_CDF_Forest
				{
					text = "[CDF] Forest";
					data = ["CUP_U_B_CDF_FST_1","CUP_V_CDF_6B3_1_FST","B_ViperHarness_ghex_F","CUP_H_CDF_H_PASGT_FST","tf_rt1523g_big_bwmod"];
				};
				class LT_CDF_Mountain
				{
					text = "[CDF] Mountain";
					data = ["CUP_U_B_CDF_MNT_1","CUP_V_CDF_6B3_1_MNT","CUP_B_USMC_MOLLE","CUP_H_CDF_H_PASGT_MNT","tf_rt1523g_big_bwmod"];
				};
				class LT_CTRG_Jungle
				{
					text = "[CRTG] Jungle";
					data = ["U_B_CTRG_Soldier_F","V_TacVest_oli","B_Carryall_oli","H_HelmetB_TI_tna_F","tf_rt1523g_big_bwmod"];
				};
				class LT_GUR_Arid
				{
					text = "[GUR] Arid";
					data = [["U_BG_Guerilla2_1","U_BG_Guerilla1_1", "U_BG_leader", "U_IG_Guerilla3_1", "U_BG_Guerilla2_3", "U_IG_Guerrilla_6_1"],["V_TacVest_blk", "V_Chestrig_oli", "V_BandollierB_oli", "V_Chestrig_blk", "V_BandollierB_khk"],["B_AssaultPack_cbr", "B_Kitbag_rgr", "B_AssaultPack_khk"],["H_Bandanna_khk", "H_Shemag_olive", "H_Shemag_olive_hs", "H_Bandanna_mcamo", "H_Bandanna_surfer"],["tf_rt1523g_black", "tf_rt1523g_bwmod"]];
				};
				class LT_GUR_Desert
				{
					text = "[GUR] Desert";
					data = [["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_07"],["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_06"],["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "B_Messenger_Coyote_F", "CUP_B_CivPack_WDL", "B_Respawn_Sleeping_bag_brown_F", "CUP_B_AlicePack_khaki", "CUP_B_AlicePack_Bedroll"],["tf_rt1523g_RHS", "tf_rt1523g"]];
				};
				class LT_GUR_Jungle
				{
					text = "[GUR] Jungle";
					data = [["U_I_C_Soldier_Bandit_3_F", "U_I_C_Soldier_Bandit_1_F", "U_I_C_Soldier_Bandit_5_F"],["V_Chestrig_blk", "V_BandollierB_rgr", "V_TacVest_oli", "V_TacChestrig_grn_F"],["B_FieldPack_cb_Bandit_3_F", "B_FieldPack_blk_Bandit_8_F"],["H_Bandanna_khk_hs", "H_Watchcap_blk", "H_Cap_marshal"],["tf_rt1523g_bwmod", "tf_rt1523g_green"]];
				};
				class LT_GER_Flecktarn
				{
					text = "[BW] Flecktarn";
					data = [["CUP_U_B_GER_Flecktarn_2","CUP_U_B_GER_Flecktarn_1"],["CUP_V_B_GER_Vest_2","CUP_V_B_GER_Vest_1","CUP_V_B_GER_Carrier_Vest_2","CUP_V_B_GER_Carrier_Vest","CUP_V_B_GER_Carrier_Vest_3"],"CUP_B_GER_Pack_Flecktarn",["CUP_H_USMC_Goggles_HelmetWDL","CUP_H_USMC_Headset_GoggleW_HelmetWDL","CUP_H_USMC_Headset_HelmetWDL","CUP_H_USMC_HelmetWDL"],"tf_rt1523g_big_bwmod"];
				};
				class LT_GER_Tropentarn
				{
					text = "[BW] Tropentarn";
					data = [["CUP_U_B_GER_Tropentarn_2","CUP_U_B_GER_Tropentarn_1","CUP_U_B_GER_Tropentarn_1"],["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"],"CUP_B_GER_Pack_Tropentarn",["CUP_H_RACS_Helmet_Headset_DES","CUP_H_RACS_Helmet_Headset_DES","CUP_H_RACS_Helmet_Headset_DES"],"tf_rt1523g_big_bwmod_tropen"];
				};
				class LT_UK_Forest
				{
					text = "[UK] Woodland";
					data = [["CUP_U_B_BAF_DPM_S1_RolledUp","CUP_U_B_BAF_DPM_S2_UnRolled"],["CUP_V_BAF_Osprey_Mk2_DPM_Soldier1","CUP_V_BAF_Osprey_Mk2_DPM_Soldier2","CUP_V_BAF_Osprey_Mk4_MTP_Rifleman"],"CUP_B_Bergen_BAF","CUP_H_BAF_Helmet_1_DPM","tf_rt1523g_bwmod"];
				};
				class LT_UK_Desert
				{
					text = "[UK] Desert";
					data = [["CUP_U_B_BAF_DDPM_S1_RolledUp","CUP_U_B_BAF_DDPM_S2_UnRolled"],["CUP_V_BAF_Osprey_Mk2_DDPM_Soldier1","CUP_V_BAF_Osprey_Mk2_DDPM_Soldier2"],"CUP_B_Bergen_BAF","CUP_H_BAF_Helmet_4_DDPM","tf_rt1523g_sage"];
				};
				class LT_UK_Mountain
				{
					text = "[UK] Mountain";
					data = [["CUP_U_B_BAF_MTP_S1_RolledUp","CUP_U_B_BAF_MTP_S5_UnRolled","CUP_U_B_BAF_MTP_S6_UnRolled"],"CUP_V_BAF_Osprey_Mk4_MTP_Rifleman","CUP_B_Bergen_BAF",["CUP_H_BAF_Helmet_1_MTP","CUP_H_BAF_Helmet_2_MTP"],"tf_rt1523g"];
				};
				class LT_USA_Army
				{
					text = "[USA] Army";
					data = [["CUP_U_B_USArmy_Base","CUP_U_B_USArmy_TwoKnee","CUP_U_B_USArmy_UBACS","CUP_U_B_USArmy_Soft"],["CUP_V_B_IOTV_MG", "CUP_V_B_IOTV_saw","CUP_V_B_IOTV_SL","CUP_V_B_IOTV_tl"],["CUP_B_MedicPack_ACU","CUP_B_AssaultPack_ACU","B_AssaultPack_mcamo","B_Carryall_oucamo"],["CUP_H_USArmy_HelmetMICH_earpro_ess","CUP_H_USArmy_HelmetMICH_earpro","CUP_H_USArmy_HelmetMICH_ESS","CUP_H_USArmy_HelmetMICH_headset_ess","CUP_H_USArmy_HelmetMICH_headset","CUP_H_USArmy_HelmetMICH"],["B_RadioBag_01_mtp_F"]];
				};
				class LT_USMC_Desert
				{
					text = "[USMC] Desert";
					data = [["CUP_U_B_USMC_FROG1_DMARPAT","CUP_U_B_USMC_FROG2_DMARPAT","CUP_U_B_USMC_FROG3_DMARPAT"],["CUP_V_B_Eagle_SPC_Patrol","CUP_V_B_Eagle_SPC_DMR","CUP_V_B_Eagle_SPC_AR","CUP_V_B_Eagle_SPC_Corpsman"],["CUP_B_FR_MOLLE_Sab","CUP_B_USMC_MOLLE_AR"],["CUP_H_USMC_BOONIE_PRR_DES","CUP_H_USMC_MICH2000_DEF_ESS_DES","CUP_H_USMC_LWH_DES","CUP_H_USMC_MICH2000_DES"],"tf_rt1523g_big_rhs"];
				};
				class LT_USMC_Woodland
				{
					text = "[USMC] Woodland";
					data = [["CUP_U_B_USMC_FROG1_WMARPAT","CUP_U_B_USMC_FROG2_WMARPAT","CUP_U_B_USMC_FROG3_WMARPAT"],["CUP_V_B_Eagle_SPC_Patrol","CUP_V_B_Eagle_SPC_AT","CUP_V_B_Eagle_SPC_SL","CUP_V_B_Eagle_SPC_MG"],"CUP_B_USMC_MOLLE_MG",["CUP_H_USMC_LWH_NVGMOUNT_WDL","CUP_H_USMC_LWH_ESS_LR_WDL","CUP_H_USMC_LWH_ESS_HS_WDL","CUP_H_USMC_LWH_NVGMOUNT_ESS_WDL"],"tf_rt1523g_big_bwmod"];
				};
				class LT_NLDO_31_GUARDS
				{
					text = "[NLDO] 31st Guards";
					data = [["NLDO_RU_VDV_31_Camo","NLDO_RU_VDV_31_Camo2"],"NLDO_RU_VDV_31_Vest",["NLDO_FieldPack_Flora_AT","NLDO_FieldPack_Flora_Empty"],["NLDO_RU_VDV_31_Helmet2","NLDO_RU_VDV_31_Helmet"],"tf_rt1523g_black"];
				};
				class LT_NLDO_76_GUARDS
				{
					text = "[NLDO] 76th Guards";
					data = [[ "NLDO_RU_VDV_76_Camo","NLDO_RU_VDV_76_Camo2"],"NLDO_RU_VDV_76_Vest",["NLDO_FieldPack_EMP_MAT","NLDO_FieldPack_EMP_Empty"],["NLDO_RU_VDV_76_Helmet2","NLDO_RU_VDV_76_Helmet"],"tf_rt1523g_big_bwmod"];
				};
				class LT_ChDKZ_Woodland
				{
					text = "[ChDKZ] Woodland";
					data = [["CUP_U_O_CHDKZ_Kam_01","CUP_U_O_CHDKZ_Kam_02","CUP_U_O_CHDKZ_Kam_03","CUP_U_O_CHDKZ_Kam_04","CUP_U_O_CHDKZ_Kam_05","CUP_U_O_CHDKZ_Kam_06","CUP_U_O_CHDKZ_Kam_07","CUP_U_O_CHDKZ_Kam_08"],"CUP_V_O_Ins_Carrier_Rig",["CUP_B_INS_AlicePack_Ammo","B_AssaultPack_khk","B_FieldPack_oli","CUP_B_CivPack_WDL"],["CUP_H_ChDKZ_Beanie","CUP_H_ChDKZ_Beret","CUP_H_ChDKZ_Cap"],"tf_rt1523g_green"];
				};
				class LT_RUS_Mountain_Spetsnaz
				{
					text = "[RUS] Mountain Spetsnaz";
					data = ["CUP_U_O_RUS_Gorka_Partizan_A",["CUP_V_RUS_Smersh_1","CUP_V_RUS_Smersh_2","CUP_V_O_Ins_Carrier_Rig_MG","CUP_V_O_Ins_Carrier_Rig_Com"],"CUP_B_RUS_Pack_Saboteur",["CUP_H_RUS_Bandana_HS","CUP_H_RUS_6B27_olive"],"tf_rt1523g_sage"];
				};
				class LT_RUS_Flora_Spetsnaz
				{
					text = "[RUS] Flora Spetsnaz";
					data = ["CUP_U_O_RUS_Gorka_Partizan",["CUP_V_RUS_Smersh_1","CUP_V_RUS_Smersh_2","CUP_V_O_Ins_Carrier_Rig_MG","CUP_V_O_Ins_Carrier_Rig_Com"],"CUP_B_RUS_Pack_Saboteur",["CUP_H_RUS_Bandana_HS","CUP_H_RUS_6B27_olive"],"tf_rt1523g_sage"];
				};
				class LT_RUS_Modern_Spetsnaz
				{
					text = "[RUS] Modern Spetsnaz";
					data = ["CUP_U_O_RUS_Gorka_Green",["CUP_V_RUS_Smersh_1","CUP_V_RUS_Smersh_2","CUP_V_O_Ins_Carrier_Rig_MG","CUP_V_O_Ins_Carrier_Rig_Com"],["CUP_B_HikingPack_Civ","CUP_B_RUS_Pack_AT"],["CUP_H_RUS_ZSH_1_Goggles","CUP_H_RUS_ZSH_1"],"tf_rt1523g_black"];
				};
				class LT_RUS_Mountain_Normal
				{
					text = "[RUS] Mountain Normal";
					data = [["CUP_U_O_RUS_EMR_1","CUP_U_O_RUS_EMR_2","CUP_U_O_RUS_EMR_2_VDV"],["CUP_V_RUS_6B3_1","CUP_V_RUS_6B3_2"],["CUP_B_AlicePack_Khaki","CUP_B_AlicePack_Bedroll","CUP_B_RUS_Pack_AT"],["CUP_H_RUS_6B27","CUP_H_RUS_6B27_NVG","CUP_H_RUS_TSH_4_Brown"],"tf_rt1523g_fabric"];
				};
				class LT_RUS_Flora_Normal
				{
					text = "[RUS] Flora Normal";
					data = [["CUP_U_O_RUS_Flora_1","CUP_U_O_RUS_EMR_2","CUP_U_O_RUS_Flora_2_VDV"],["CUP_V_RUS_6B3_1","CUP_V_RUS_6B3_2"],["CUP_B_AlicePack_Khaki","CUP_B_AlicePack_Bedroll","CUP_B_RUS_Pack_AT"],["CUP_H_RUS_6B27","CUP_H_RUS_6B27_NVG","CUP_H_RUS_TSH_4_Brown"],"tf_rt1523g_fabric"];
				};
				class LT_SLA_Desert
				{
					text = "[SLA] Desert";
					data = [["CUP_U_O_SLA_Desert"],["CUP_V_O_SLA_Flak_Vest02", "CUP_V_O_SLA_Flak_Vest01", "CUP_V_O_SLA_Carrier_Belt02"],["B_Kitbag_sgg", "B_AssaultPack_sgg"],["CUP_H_SLA_Helmet"],["tf_rt1523g_sage", "tf_rt1523g_big_rhs"]];
				};
				class LT_SLA_Especades
				{
					text = "[SLA] Especades";
					data = [["CUP_U_O_SLA_MixedCamo"],["CUP_V_O_SLA_Flak_Vest03"],["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],["CUP_H_SLA_Beret"],["tf_rt1523g", "tf_rt1523g_big_rhs"]];
				};
				class LT_SLA_Militia
				{
					text = "[SLA] Militia";
					data = [["CUP_U_O_SLA_Green"],["CUP_V_O_SLA_Carrier_Belt02"],["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],["CUP_H_SLA_Helmet"],["tf_rt1523g_green"]];
				};
				class LT_SLA_Partisans
				{
					text = "[SLA] Partisans";
					data = [["CUP_U_O_Partisan_VSR_Mixed2", "CUP_U_O_Partisan_TTsKO"],["CUP_V_O_SLA_Carrier_Belt02", "CUP_V_O_SLA_Carrier_Belt"],["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],["CUP_H_SLA_BeanieGreen", "CUP_H_SLA_BeretRed"],["tf_rt1523g_big_bwmod", "tf_rt1523g_big_rhs"]];
				};
				class LT_SLA_Urban
				{
					text = "[SLA] Urban";
					data = [["CUP_U_O_SLA_Urban"],["CUP_V_O_SLA_Flak_Vest01"],["CUP_B_AlicePack_Khaki", "CUP_B_AlicePack_Bedroll"],["CUP_H_SLA_Helmet"],["tf_rt1523g_fabric", "tf_rt1523g_big_bwmod_tropen"]];
				};
				class LT_TKA_Army
				{
					text = "[TKA] Army";
					data = ["CUP_U_O_TK_Green","CUP_V_O_TK_Vest_1","CUP_U_O_TK_Green","CUP_H_TK_Helmet","tf_rt1523g_big_rhs"];
				};
				class LT_TKI_OPF_Desert
				{
					text = "[TKI] Desert";
					data = [["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_07"],["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_06"],["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "B_Messenger_Coyote_F", "CUP_B_CivPack_WDL", "B_Respawn_Sleeping_bag_brown_F", "CUP_B_AlicePack_khaki", "CUP_B_AlicePack_Bedroll"],["tf_rt1523g_RHS", "tf_rt1523g"]];
				};
				class LT_95TH_Airmobile_Brigade
				{
					text = "[95th] Airmobile Brigade Ukraine";
					data = ["nldo_ua_uaf_95_Camo","nldo_ua_uaf_95_Vest","nldo_ua_uaf_95_bp_empty","nldo_ua_uaf_95_Helmet","tf_rt1523g_big_bwmod"];
				};
				class LT_UBG_Border_Guard
				{
					text = "[UBG] Border Guard";
					data = ["nldo_ua_uaf_bg_Camo","nldo_ua_uaf_bg_Vest","nldo_ua_uaf_bg_bp_empty","nldo_ua_uaf_bg_Helmet","tf_rt1523g_big_bwmod"];
				};
				class LT_AA_Army
				{
					text = "[AA] Arfrican Army";
					data = ["U_I_C_Soldier_Para_2_F","V_TacChestrig_oli_F","B_FieldPack_oli","CUP_H_RACS_Helmet_olive","tf_rt1523g_sage"];
				};
				class LT_AA_SF
				{
					text = "[AA] Special Forces";
					data = ["U_BG_Guerrilla_6_1",["CUP_V_B_RRV_Scout","CUP_V_B_RRV_MG","CUP_V_O_TK_Vest_1"],"B_Carryall_oli","H_Booniehat_oli","tf_rt1523g_green"];
				};
				class LT_NAPA_Units
				{
					text = "[NAPA] NAPA";
					data = [["CUP_U_I_GUE_Flecktarn","CUP_U_I_GUE_Flecktarn3","CUP_U_I_GUE_Woodland1"],"CUP_V_I_Carrier_Belt",["B_TacticalPack_blk","CUP_B_HikingPack_Civ"],"H_HelmetSpecB","tf_rt1523g_sage"];
				};
				class LT_RACS_Desert
				{
					text = "[RACS] Desert";
					data = [["CUP_U_I_RACS_Desert_1","CUP_U_I_RACS_Desert_2"],["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"],"CUP_B_USArmy_MG",["CUP_H_RACS_Helmet_DES","CUP_H_RACS_Helmet_Goggles_DES"],"tf_rt1523g_sage"];
				};
				class LT_RACS_Jungle
				{
					text = "[RACS] Jungle";
					data = [["CUP_U_I_RACS_mech_1","CUP_U_I_RACS_mech_2"],["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"],"CUP_B_USArmy_MG",["CUP_H_RACS_Helmet_mech","CUP_H_RACS_Helmet_Goggles_mech"],"tf_rt1523g_sage"];
				};
				class LT_RACS_Royal
				{
					text = "[RACS] Royal Troops";
					data = [["CUP_U_I_RACS_Desert_1","CUP_U_I_RACS_Desert_2"],["CUP_V_I_RACS_Carrier_Vest_wdl","CUP_V_I_RACS_Carrier_Vest_wdl_2","CUP_V_I_RACS_Carrier_Vest_wdl_3"],["B_Kitbag_rgr","B_TacticalPack_oli"],"CUP_H_RACS_Helmet_olive","tf_rt1523g_fabric"];
				};
				class LT_RACS_Urban
				{
					text = "[RACS] Urban";
					data = [["CUP_U_I_RACS_Urban_1","CUP_U_I_RACS_Urban_2"],["CUP_V_I_RACS_Carrier_Vest_2","CUP_V_I_RACS_Carrier_Vest","CUP_V_I_RACS_Carrier_Vest_3"],"CUP_B_USArmy_MG","CUP_H_RACS_Helmet_DPAT","tf_rt1523g_sage"];
				};
				class LT_RACS_Forest
				{
					text = "[RACS] Forest";
					data = [["CUP_U_I_RACS_WDL_1","CUP_U_I_RACS_WDL_2"],["CUP_V_I_RACS_Carrier_Vest_wdl","CUP_V_I_RACS_Carrier_Vest_wdl_2","CUP_V_I_RACS_Carrier_Vest_wdl_3"],["B_Kitbag_rgr","B_TacticalPack_oli"],["CUP_H_RACS_Helmet_Goggles_wdl","CUP_H_RACS_Helmet_Headset_wdl","CUP_H_RACS_Helmet_wdl"],"tf_rt1523g_fabric"];
				};
				class LT_GUR_GRN_Desert
				{
					text = "[TKI] Desert";
					data = [["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_07"],["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_06"],["B_Kitbag_sgg", "CUP_B_AlicePack_Bedroll"],["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_1_04"],["tf_rt1523g_sage", "tf_rt1523g_big_rhs"]];
				};
				class LT_PMC
				{
					text = "[PMC] ION Security";
					data = [["CUP_I_B_PMC_UNIT_1","CUP_I_B_PMC_UNIT_2","CUP_I_B_PMC_UNIT_3","CUP_I_B_PMC_UNIT_4","CUP_I_B_PMC_UNIT_5","CUP_I_B_PMC_UNIT_6","CUP_I_B_PMC_UNIT_7","CUP_I_B_PMC_UNIT_8","CUP_I_B_PMC_UNIT_9","CUP_I_B_PMC_UNIT_10","CUP_I_B_PMC_UNIT_11","CUP_I_B_PMC_UNIT_12","CUP_I_B_PMC_UNIT_13","CUP_I_B_PMC_UNIT_14","CUP_I_B_PMC_UNIT_15","CUP_I_B_PMC_UNIT_16","CUP_I_B_PMC_UNIT_17","CUP_I_B_PMC_UNIT_19","CUP_I_B_PMC_UNIT_20","CUP_I_B_PMC_UNIT_21","CUP_I_B_PMC_UNIT_22","CUP_I_B_PMC_UNIT_23","CUP_I_B_PMC_UNIT_24"],["CUP_V_PMC_CIRAS_Black_Empty","CUP_V_PMC_CIRAS_Coyote_Empty","CUP_V_PMC_IOTV_Black_Empty","CUP_V_PMC_IOTV_Coyote_Empty","V_TacVest_blk"],["CUP_B_PMC_AlicePack_Exp","CUP_B_PMC_Backpack_GL"],["CUP_H_PMC_Cap_Back_Burberry","CUP_H_PMC_Cap_Back_EP_Burberry","CUP_H_PMC_Cap_Back_EP_Grey","CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Back_PRR_Burberry","CUP_H_PMC_Cap_Back_PRR_Grey","CUP_H_PMC_Cap_Back_PRR_Tan","CUP_H_PMC_Cap_Back_Tan","CUP_H_PMC_Cap_Burberry","CUP_H_PMC_Cap_EP_Burberry","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_EP_Tan","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_PRR_Burberry","CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_PRR_Tan","CUP_H_PMC_Cap_Tan","CUP_H_PMC_EP_Headset","CUP_H_PMC_PRR_Headset"],"tf_rt1523g_black"];
				};
				class LT_PMC_WTR
				{
					text = "[PMC] ION Security (Winter)";
					data = [["CUP_I_B_PMC_UNIT_18","CUP_I_B_PMC_UNIT_25","CUP_I_B_PMC_UNIT_26","CUP_I_B_PMC_UNIT_27","CUP_I_B_PMC_UNIT_28"],["CUP_V_PMC_CIRAS_Black_Empty","CUP_V_PMC_CIRAS_Coyote_Empty","CUP_V_PMC_IOTV_Black_Empty","CUP_V_PMC_IOTV_Coyote_Empty","V_TacVest_blk"],["CUP_B_PMC_AlicePack_Exp","CUP_B_PMC_Backpack_GL"],["CUP_H_PMC_Cap_Back_Burberry","CUP_H_PMC_Cap_Back_EP_Burberry","CUP_H_PMC_Cap_Back_EP_Grey","CUP_H_PMC_Cap_Back_EP_Tan","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Back_PRR_Burberry","CUP_H_PMC_Cap_Back_PRR_Grey","CUP_H_PMC_Cap_Back_PRR_Tan","CUP_H_PMC_Cap_Back_Tan","CUP_H_PMC_Cap_Burberry","CUP_H_PMC_Cap_EP_Burberry","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_EP_Tan","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_PRR_Burberry","CUP_H_PMC_Cap_PRR_Grey","CUP_H_PMC_Cap_PRR_Tan","CUP_H_PMC_Cap_Tan","CUP_H_PMC_EP_Headset","CUP_H_PMC_PRR_Headset"],"tf_rt1523g_big"];
				};
				class LT_CIV_Fireman
				{
					text = "[CIV] Fireman";
					data = ["CUP_U_C_Fireman_01","CUP_V_C_Police_Holster","CUP_B_AssaultPack_Black","CUP_H_C_Fireman_Helmet_01","tf_rt1523g_black"];
				};
				class LT_CIV_PIGS
				{
					text = "[CIV] Police";
					data = ["CUP_U_C_Policeman_01","V_TacVestIR_blk","CUP_B_Bergen_BAF","CUP_H_C_Policecap_01","tf_rt1523g_sage"];
				};
				class LT_FFA_Sacha
				{
					text = "[FFA] Sacha";
					data = ["U_I_C_Soldier_Bandit_2_F","CUP_V_OI_TKI_Jacket1_03","NLD_Spongebob_Tactical","CUP_H_C_MAGA_01","tf_rt1523g_big_bwmod_tropen"];
				};
				class LT_FFA_PingWing
				{
					text = "[FFA] PingWing";
					data = [["CUP_U_C_Suit_01", "CUP_U_C_Suit_02"],["NLD_SF_Vest"],["NLD_SF_Carryall_Empty", "B_AssaultPack_blk"],["NLD_SF_ECH", "H_HelmetB_black"],["tf_rt1523g_black"]];
				};
				class LT_FFA_Whistle
				{
					text = "[FFA] Whistle";
					data = [["CUP_U_C_Rocker_01","CUP_U_C_Rocker_02","CUP_U_C_Rocker_03","CUP_U_C_Rocker_04"],"CUP_V_B_IOTV_Rifleman","B_Carryall_oucamo","H_HelmetSpecB_sand","tf_rt1523g_sage"];
				};
				class LT_FFA_SVENFIRE99
				{
					text = "[FFA] Svenfire99";
					data = ["U_O_V_Soldier_Viper_F","V_PlateCarrierIAGL_dgtl","B_Bergen_dgtl_F","H_CrewHelmetHeli_I","tf_rt1523g_big_bwmod"];
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
