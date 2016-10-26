// Automatic Zones
// [area, faction, radio-range, infantry (groups), Group size #, Group Variation, cars (groups), IFVs (groups), Tanks, Helicopters ] execVM "autozone.sqf";
// ["area0", "OPF_F", 300, 10, 8, 4, 4, 2, 1, 1, 10, 10 ] execVM "autozone.sqf";

private ["_az_zone","_az_faction","_az_range","_az_infantry","_az_cars","_az_ifvs","_az_tanks","_az_helicopters","_i","_az_occupy","_az_patrol","_az_GrpSize","_az_GrpVar"];

_az_zone         = _this select 0;
_az_faction      = _this select 1;
_az_range        = _this select 2;
_az_infantry     = _this select 3;
_az_GrpSize      = _this select 4;
_az_GrpVar       = _this select 5;
_az_cars         = _this select 6;
_az_ifvs         = _this select 7;
_az_tanks        = _this select 8;
_az_helicopters  = _this select 9;
_az_occupy       = _this select 10;
_az_patrol       = _this select 11;

// Faction definitions
// OPFOR
_opf_f_units = ["O_Soldier_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_Soldier_SL_F","O_Soldier_TL_F","O_Soldier_M_F","O_Soldier_LAT_F","O_medic_F","O_Soldier_repair_F","O_Soldier_exp_F","O_Soldier_A_F","O_Soldier_AA_F","O_engineer_F"];
_opf_f_car = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","CUP_O_UAZ_Unarmed_CSAT","CUP_O_UAZ_Militia_CSAT","CUP_O_UAZ_Open_CSAT","CUP_O_UAZ_MG_CSAT","CUP_O_UAZ_AGS30_CSAT","CUP_O_UAZ_SPG9_CSAT","CUP_O_UAZ_METIS_CSAT"];
_opf_f_ifv = ["O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_AA_F","O_APC_Wheeled_02_rcws_F","CUP_O_BMP1_CSAT","CUP_O_BMP1P_CSAT","CUP_O_BMP2_CSAT","CUP_O_BMP2_ZU_CSAT","CUP_O_BRDM2_CSAT","CUP_O_BRDM2_ATGM_CSAT","CUP_O_BTR60_CSAT"];
_opf_f_tank = ["O_MBT_02_cannon_F","CUP_O_T72_CSAT", "CUP_O_T55_CSAT" ];
_opf_f_heli = ["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];

// OPFOR Guerilla
_opf_g_f_units = ["O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F"];
_opf_g_f_car = ["O_G_Offroad_01_armed_F"];
_opf_g_f_ifv = ["O_APC_Wheeled_02_rcws_F"];

// AAF
_ind_f_units = ["I_Soldier_A_F","I_soldier_AR_F","I_medic_F","I_engineer_F","I_soldier_exp_F","I_Soldier_GL_F","I_soldier_M_F","I_soldier_AA_F","I_soldier_AT_F","I_officer_F","I_soldier_repair_F","I_Soldier_F","I_soldier_LAT_F","I_Soldier_lite_F","I_Soldier_SL_F","I_Soldier_TL_F"];
_ind_f_car = ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"];
_ind_f_ifv = ["I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
_ind_f_tank = ["I_MBT_03_cannon_F"];
_ind_f_heli = ["I_Heli_Transport_02_F"];

// Altis Guerilla
_ind_g_f_units = ["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F"];
_ind_g_f_car = ["I_G_Offroad_01_armed_F"];
_ind_g_f_ifv = ["I_APC_Wheeled_03_cannon_F"];

// Chinese
_opf_t_f_units = ["O_T_Soldier_A_F","O_T_Medic_F","O_T_Soldier_AR_F","O_T_Engineer_F","O_T_Soldier_Exp_F","O_T_Soldier_GL_F","O_T_Support_GMG_F","O_T_Soldier_UAV_F","O_T_Soldier_universal_F","O_T_Soldier_TL_F","O_T_Soldier_SL_F","O_T_Soldier_LAT_F","O_T_Soldier_F","O_T_Soldier_Repair_F","O_T_Soldier_PG_F","O_T_Officer_F","O_T_Soldier_AT_F","O_T_Soldier_AA_F","O_T_Soldier_M_F"];
_opf_t_f_car = ["O_T_LSV_02_armed_F","O_T_LSV_02_armed_viper_F","O_T_LSV_02_unarmed_F","O_T_LSV_02_unarmed_viper_F","O_T_LSV_02_armed_black_F","O_T_LSV_02_armed_ghex_F","O_T_LSV_02_armed_arid_F","O_T_LSV_02_unarmed_black_F","O_T_LSV_02_unarmed_ghex_F","O_T_LSV_02_unarmed_arid_F","O_T_MRAP_02_hmg_ghex_F","O_T_MRAP_02_gmg_ghex_F","","","","","","","","",""];
_opf_t_f_ifv = ["O_T_APC_Tracked_02_cannon_ghex_F","O_T_APC_Wheeled_02_rcws_ghex_F"];
_opf_t_f_tank = ["O_T_MBT_02_cannon_ghex_F"];
_opf_t_f_heli = ["O_T_VTOL_02_infantry_F","O_T_VTOL_02_vehicle_F","O_T_VTOL_02_infantry_hex_F","O_T_VTOL_02_infantry_ghex_F","O_T_VTOL_02_infantry_grey_F","O_T_VTOL_02_vehicle_hex_F","O_T_VTOL_02_vehicle_ghex_F","O_T_VTOL_02_vehicle_grey_F"];

// Syndikat oid
_ind_c_f_units = ["I_C_Soldier_universal_F","I_C_Soldier_Bandit_8_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_1_F","I_C_Soldier_Para_8_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_2_F","I_C_Soldier_Para_1_F"];
_ind_c_f_car = ["I_C_Offroad_02_unarmed_F","I_C_Offroad_02_unarmed_brown_F","I_C_Offroad_02_unarmed_olive_F"];
_ind_c_f_ifv = [];
_ind_c_f_tank = [];
_ind_c_f_heli = [];

// NLD Units OPFOR: VDV 76th
_nldo_ru_vdv_76_units = ["NLDO_RU_VDV_76_aar","NLDO_RU_VDV_76_amat","NLDO_RU_VDV_76_ammg","NLDO_RU_VDV_76_ammo","NLDO_RU_VDV_76_ar","NLDO_RU_VDV_76_at","NLDO_RU_VDV_76_cls","NLDO_RU_VDV_76_gl","NLDO_RU_VDV_76_marksman","NLDO_RU_VDV_76_mat","NLDO_RU_VDV_76_mmg","NLDO_RU_VDV_76_officer","NLDO_RU_VDV_76_rifleman","NLDO_RU_VDV_76_sl","NLDO_RU_VDV_76_tl","NLDO_RU_VDV_76_sniper","NLDO_RU_VDV_76_spotter"];
_nldo_ru_vdv_76_car = ["NLDO_Punisher_76","NLDO_Punisher_76_HMG","NLDO_Punisher_76_GMG"];
_nldo_ru_vdv_76_ifv = ["NLDO_TUNGUSKA_76","NLDO_BMP_T_76"];
_nldo_ru_vdv_76_tank = ["NLDO_T95_76"];
_nldo_ru_vdv_76_heli = ["NLDO_KA60_Armed_76"];


// NLD Units: OPFOR VDV 31th
_nldo_ru_vdv_31_units = ["NLDO_RU_VDV_31_marksman","NLDO_RU_VDV_31_sniper","NLDO_RU_VDV_31_spotter","NLDO_RU_VDV_31_rifleman","NLDO_RU_VDV_31_aar","NLDO_RU_VDV_31_eng","NLDO_RU_VDV_31_expl","NLDO_RU_VDV_31_ammg","NLDO_RU_VDV_31_mmg","NLDO_RU_VDV_31_tl","NLDO_RU_VDV_31_ar","NLDO_RU_VDV_31_ammo","NLDO_RU_VDV_31_aa","NLDO_RU_VDV_31_officer","NLDO_RU_VDV_31_amat","NLDO_RU_VDV_31_cls","NLDO_RU_VDV_31_mat","NLDO_RU_VDV_31_at","NLDO_RU_VDV_31_gl","NLDO_RU_VDV_31_sl"];
_nldo_ru_vdv_31_car = ["NLDO_Punisher_31","NLDO_Punisher_31_HMG","NLDO_Punisher_31_GMG"];
_nldo_ru_vdv_31_ifv = ["NLDO_TUNGUSKA_31","NLDO_BMP_T_31"];
_nldo_ru_vdv_31_tank = ["NLDO_T00_31"];
_nldo_ru_vdv_31_heli = ["NLDO_KA60_Armed_31"];

// NLD Units: OPFOR Ukraine 95th
_nldo_ua_uaf_95_units = ["nldo_ua_uaf_95_aar","nldo_ua_uaf_95_sl","nldo_ua_uaf_95_mat","nldo_ua_uaf_95_mmg","nldo_ua_uaf_95_explosive","nldo_ua_uaf_95_dm","nldo_ua_uaf_95_aa","nldo_ua_uaf_95_ammo","nldo_ua_uaf_95_ammg","nldo_ua_uaf_95_officer","nldo_ua_uaf_95_rifleman","nldo_ua_uaf_95_cls","nldo_ua_uaf_95_engineer","nldo_ua_uaf_95_amat","nldo_ua_uaf_95_fac","nldo_ua_uaf_95_at","nldo_ua_uaf_95_ar","nldo_ua_uaf_95_gl","nldo_ua_uaf_95_tl"];
_nldo_ua_uaf_95_car = ["nldo_ua_uaf_95_kraz","nldo_ua_uaf_95_kraz_hmg","nldo_ua_uaf_95_kraz_gmg"];
_nldo_ua_uaf_95_ifv = ["nldo_ua_uaf_95_bmp1u","nldo_ua_uaf_95_tunguska"];
_nldo_ua_uaf_95_tank = ["nldo_ua_uaf_95_t84"];
_nldo_ua_uaf_95_heli = [];

// Takistani Militia
_cup_o_tk_militia_units = ["CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_AAT","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier_Enfield","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_AA","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Commander","CUP_O_TK_INS_Mechanic","CUP_O_TK_INS_Bomber"];
_cup_o_tk_militia_car = ["CUP_O_LR_Transport_TKM","CUP_O_LR_MG_TKM","CUP_O_LR_SPG9_TKM","CUP_O_Ural_ZU23_TKM"];
_cup_o_tk_militia_ifv = ["CUP_O_BTR40_MG_TKM","CUP_O_BTR40_TKM"];
_cup_o_tk_militia_tank = [];
_cup_o_tk_militia_heli = [];

// Takistan Army
_cup_o_tk_units = ["CUP_O_TK_Soldier","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AA","CUP_O_TK_Engineer","CUP_O_TK_Soldier_MG","CUP_O_TK_Soldier_AR","CUP_O_TK_Medic","CUP_O_TK_Soldier_SL","CUP_O_TK_Officer","CUP_O_TK_Spotter","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Sniper_SVD_Night","CUP_O_TK_Soldier_AKS_Night","CUP_O_TK_Soldier_FNFAL_Night","CUP_O_TK_Soldier_AKS_74_GOSHAWK"];
_cup_o_tk_car = ["CUP_O_LR_Transport_TKA","CUP_O_LR_Transport_TKA","CUP_O_LR_SPG9_TKA","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA","CUP_O_UAZ_METIS_TKA","CUP_O_Ural_ZU23_TKA","CUP_O_BM21_TKA","CUP_O_SUV_TKA"];
_cup_o_tk_ifv = ["CUP_O_UH1H_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP2_TKA","CUP_O_BMP2_ZU_TKA","CUP_O_BRDM2_TKA","CUP_O_BRDM2_ATGM_TKA","CUP_O_BTR40_MG_TKA","CUP_O_BTR40_TKA","CUP_O_BTR60_TK","CUP_O_M113_TKA"];
_cup_o_tk_tank = ["CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_ZSU23_TK","CUP_O_ZU23_TK"];
_cup_o_tk_heli = ["CUP_O_UH1H_TKA"];

// Stje-Daki
_cup_o_chdkz_units = ["CUP_O_INS_Soldier_AK74","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier","CUP_O_INS_Soldier_Ammo","CUP_O_INS_Soldier_GL","CUP_O_INS_Officer","CUP_O_INS_Medic","CUP_O_INS_Commander","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_AT","CUP_O_INS_Soldier_AA","CUP_O_INS_Sniper","CUP_O_INS_Soldier_Exp","CUP_O_INS_Saboteur","CUP_O_INS_Worker2","CUP_O_INS_Woodlander1","CUP_O_INS_Woodlander2","CUP_O_INS_Woodlander3","CUP_O_INS_Villager3","CUP_O_INS_Villager4"];
_cup_o_chdkz_car = ["CUP_O_UAZ_Unarmed_CHDKZ","CUP_O_UAZ_Open_CHDKZ","CUP_O_UAZ_MG_CHDKZ","CUP_O_UAZ_AGS30_CHDKZ","CUP_O_UAZ_SPG9_CHDKZ","CUP_O_UAZ_METIS_CHDKZ","CUP_O_Ural_ZU23_CHDKZ","CUP_O_Ural_ZU23_CHDKZ","CUP_O_BM21_CHDKZ","CUP_O_Datsun_PK","CUP_O_Datsun_PK_Random"];
_cup_o_chdkz_ifv = ["CUP_O_BMP2_CHDKZ","CUP_O_BRDM2_CHDKZ","CUP_O_BMP_HQ_CHDKZ","CUP_O_BRDM2_ATGM_CHDKZ","CUP_O_BRDM2_HQ_CHDKZ","CUP_O_ZSU23_ChDKZ"];
_cup_o_chdkz_tank = ["CUP_O_T72_CHDKZ"];
_cup_o_chdkz_heli = ["CUP_O_MI6A_CHDKZ","CUP_O_MI6T_CHDKZ","CUP_O_Mi8_CHDKZ","CUP_O_Mi8_VIV_CHDKZ"];

// Geen Schutter Lange Afstand
_cup_o_sla_units = ["CUP_O_sla_Soldier","CUP_O_sla_Soldier_GL","CUP_O_SLA_Soldier_Backpack","CUP_O_sla_Soldier_AAT","CUP_O_sla_Soldier_AMG","CUP_O_sla_Soldier_LAT","CUP_O_sla_Soldier_AT","CUP_O_sla_Soldier_HAT","CUP_O_sla_Soldier_AA","CUP_O_sla_Engineer","CUP_O_sla_Soldier_MG","CUP_O_sla_Soldier_AR","CUP_O_sla_Medic","CUP_O_sla_Soldier_SL","CUP_O_sla_Officer","CUP_O_SLA_Spotter","CUP_O_sla_Sniper","CUP_O_sla_Sniper_KSVK","CUP_O_SLA_Sniper_SVD_Night","CUP_O_sla_Soldier_AKS_Night","CUP_O_sla_Soldier_AKS_74_GOSHAWK"];
_cup_o_sla_car = ["CUP_O_UAZ_Unarmed_SLA","CUP_O_UAZ_Militia_SLA","CUP_O_UAZ_Open_SLA","CUP_O_UAZ_MG_SLA","CUP_O_UAZ_AGS30_SLA","CUP_O_UAZ_SPG9_SLA","CUP_O_UAZ_METIS_SLA","CUP_O_Ural_ZU23_SLA","CUP_O_BM21_SLA"];
_cup_o_sla_ifv = ["CUP_O_BMP2_SLA","CUP_O_BMP_HQ_sla","CUP_O_BRDM2_SLA","CUP_O_BRDM2_ATGM_SLA","CUP_O_BRDM2_HQ_SLA"];
_cup_o_sla_tank = ["CUP_O_T72_SLA"];
_cup_o_sla_heli = ["CUP_O_Mi8_SLA_1","CUP_O_Mi8_SLA_2"];

// Ruskies EMR
_cup_o_ru_emr_units = ["CUP_O_RU_Soldier_EMR","CUP_O_RU_Soldier_Saiga_EMR","CUP_O_RU_Soldier_GL_EMR","CUP_O_RU_Soldier_SL_EMR","CUP_O_RU_Soldier_TL_EMR","CUP_O_RU_Soldier_MG_EMR","CUP_O_RU_Soldier_AR_EMR","CUP_O_RU_Soldier_LAT_EMR","CUP_O_RU_Soldier_AT_EMR","CUP_O_RU_Soldier_HAT_EMR","CUP_O_RU_Soldier_AA_EMR","CUP_O_RU_Sniper_EMR","CUP_O_RU_Sniper_KSVK_EMR","CUP_O_RU_Spotter_EMR","CUP_O_RU_Soldier_Marksman_EMR","CUP_O_RU_Medic_EMR","CUP_O_RU_Engineer_EMR","CUP_O_RU_Explosive_Specialist_EMR","CUP_O_RU_Soldier_Light_EMR","CUP_O_RU_Officer_EMR"];
_cup_o_ru_emr_car = ["CUP_O_UAZ_Unarmed_RU","CUP_O_UAZ_Open_RU","CUP_O_UAZ_MG_RU","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_SPG9_RU","CUP_O_UAZ_METIS_RU","CUP_O_Ural_ZU23_RU","CUP_O_BM21_RU"];
_cup_o_ru_emr_ifv = ["CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP2_AMB_RU","CUP_O_BRDM2_RUS","CUP_O_BRDM2_ATGM_RUS","CUP_O_BRDM2_HQ_RUS","CUP_O_2S6M_RU","CUP_O_BTR90_RU","CUP_O_BTR90_HQ_RU","CUP_O_BMP3_RU"];
_cup_o_ru_emr_tank = ["CUP_O_T72_RU"];
_cup_o_ru_emr_heli = ["CUP_O_Mi24_P_RU","CUP_O_Mi24_V_RU","CUP_O_MI6A_RU","CUP_O_MI6T_RU","CUP_O_Mi8_VIV_RU","CUP_O_Mi8_RU"];

// Ruskies FLORA
_cup_o_ru_flora_units = ["CUP_O_RU_Soldier_VDV","CUP_O_RU_Soldier_Saiga_VDV","CUP_O_RU_Soldier_GL_VDV","CUP_O_RU_Soldier_SL_VDV","CUP_O_RU_Soldier_TL_VDV","CUP_O_RU_Soldier_MG_VDV","CUP_O_RU_Soldier_AR_VDV","CUP_O_RU_Soldier_LAT_VDV","CUP_O_RU_Soldier_AT_VDV","CUP_O_RU_Soldier_HAT_VDV","CUP_O_RU_Soldier_AA_VDV","CUP_O_RU_Sniper_VDV","CUP_O_RU_Sniper_KSVK_VDV","CUP_O_RU_Spotter_VDV","CUP_O_RU_Soldier_Marksman_VDV","CUP_O_RU_Medic_VDV","CUP_O_RU_Engineer_VDV","CUP_O_RU_Explosive_Specialist_VDV","CUP_O_RU_Soldier_Light_VDV","CUP_O_RU_Officer_VDV","CUP_O_RU_Commander_VDV"];
_cup_o_ru_flora_car = ["CUP_O_UAZ_Unarmed_RU","CUP_O_UAZ_Open_RU","CUP_O_UAZ_MG_RU","CUP_O_UAZ_AGS30_RU","CUP_O_UAZ_SPG9_RU","CUP_O_UAZ_METIS_RU","CUP_O_Ural_ZU23_RU","CUP_O_BM21_RU"];
_cup_o_ru_flora_ifv = ["CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP2_AMB_RU","CUP_O_BRDM2_RUS","CUP_O_BRDM2_ATGM_RUS","CUP_O_BRDM2_HQ_RUS","CUP_O_2S6M_RU","CUP_O_BTR90_RU","CUP_O_BTR90_HQ_RU","CUP_O_BMP3_RU"];
_cup_o_ru_flora_tank = ["CUP_O_T72_RU"];
_cup_o_ru_flora_heli = ["CUP_O_Mi24_P_RU","CUP_O_Mi24_V_RU","CUP_O_MI6A_RU","CUP_O_MI6T_RU","CUP_O_Mi8_VIV_RU","CUP_O_Mi8_RU"];

// Select factions
private ["_faction_units","_faction_side","_faction_car","_faction_ifv","_faction_tank","_faction_heli"];

if (_az_faction == "OPF_F") then { _faction_units = _opf_f_units; _faction_side = east; _faction_car = _opf_f_car; _faction_ifv = _opf_f_ifv; _faction_tank = _opf_f_tank; _faction_heli = _opf_f_heli; };
if (_az_faction == "OPF_G_F") then { _faction_units = _opf_g_f_units; _faction_side = east; _faction_car = _opf_g_f_car; _faction_ifv = _opf_g_f_ifv; _faction_tank = []; _faction_heli = []; };
if (_az_faction == "IND_F") then { _faction_units = _ind_f_units; _faction_side = independent; _faction_car = _ind_f_car;  _faction_ifv = _ind_f_ifv; _faction_tank = _ind_f_tank; _faction_heli = _ind_f_heli; };
if (_az_faction == "IND_G_F") then { _faction_units = _ind_g_f_units; _faction_side = independent; _faction_car = _ind_g_f_car; _faction_ifv = _ind_g_f_ifv; _faction_tank = []; _faction_heli = []; };
if (_az_faction == "OPF_T_F") then { _faction_units = _opf_t_f_units; _faction_side = east; _faction_car = _opf_t_f_car; _faction_ifv = _opf_t_f_ifv; _faction_tank = _opf_t_f_tank; _faction_heli = _opf_t_f_heli; };
if (_az_faction == "IND_C_F") then { _faction_units = _ind_c_f_units; _faction_side = independent; _faction_car = _ind_c_f_car; _faction_ifv = _ind_c_f_ifv; _faction_tank = _ind_c_f_tank; _faction_heli = _ind_c_f_heli; };
if (_az_faction == "NLDO_RU_VDV_76") then { _faction_units = _nldo_ru_vdv_76_units; _faction_side = east; _faction_car = _nldo_ru_vdv_76_car; _faction_ifv = _nldo_ru_vdv_76_ifv; _faction_tank = _nldo_ru_vdv_76_tank; _faction_heli = _nldo_ru_vdv_76_heli; };
if (_az_faction == "NLDO_RU_VDV_31") then { _faction_units = _nldo_ru_vdv_31_units; _faction_side = east; _faction_car = _nldo_ru_vdv_31_car; _faction_ifv = _nldo_ru_vdv_31_ifv; _faction_tank = _nldo_ru_vdv_31_tank; _faction_heli = _nldo_ru_vdv_31_heli; };
if (_az_faction == "NLDO_UA_UAF_95") then { _faction_units = _nldo_ua_uaf_95_units; _faction_side = independent; _faction_car = _nldo_ua_uaf_95_car; _faction_ifv = _nldo_ua_uaf_95_ifv; _faction_tank = _nldo_ua_uaf_95_tank; _faction_heli = _nldo_ua_uaf_95_heli; };
if (_az_faction == "CUP_O_TK_INS") then { _faction_units = _cup_o_tk_militia_units; _faction_side = east; _faction_car = _cup_o_tk_militia_car; _faction_ifv = _cup_o_tk_militia_ifv; _faction_tank = _cup_o_tk_militia_tank; _faction_heli = _cup_o_tk_militia_heli; };
if (_az_faction == "CUP_O_TK") then { _faction_units = _cup_o_tk_units; _faction_side = east; _faction_car = _cup_o_tk_car; _faction_ifv = _cup_o_tk_ifv; _faction_tank = _cup_o_tk_tank; _faction_heli = _cup_o_tk_heli; };
if (_az_faction == "CUP_O_CHDKZ") then { _faction_units = _cup_o_chdkz_units; _faction_side = east; _faction_car = _cup_o_chdkz_car; _faction_ifv = _cup_o_chdkz_ifv; _faction_tank = _cup_o_chdkz_tank; _faction_heli = _cup_o_chdkz_heli; };
if (_az_faction == "CUP_O_SLA") then { _faction_units = _cup_o_sla_units; _faction_side = east; _faction_car = _cup_o_sla_car; _faction_ifv = _cup_o_sla_ifv; _faction_tank = _cup_o_sla_tank; _faction_heli = _cup_o_sla_heli; };
if (_az_faction == "CUP_O_RU_EMR") then { _faction_units = _cup_o_ru_emr_units; _faction_side = east; _faction_car = _cup_o_ru_emr_car; _faction_ifv = _cup_o_ru_emr_ifv; _faction_tank = _cup_o_ru_emr_tank; _faction_heli = _cup_o_ru_emr_heli; };
if (_az_faction == "CUP_O_RU_FLORA") then { _faction_units = _cup_o_ru_flora_units; _faction_side = east; _faction_car = _cup_o_ru_flora_car; _faction_ifv = _cup_o_ru_flora_ifv; _faction_tank = _cup_o_ru_flora_tank; _faction_heli = _cup_o_ru_flora_heli; };

private ["_GrpSize"];

// Create Infantry
if (_az_infantry > 0) then {
  for "_i" from 1 to _az_infantry do {
    if ( _az_GrpVar == 0 ) then {
      _GrpSize = _az_GrpSize;
    } else {
      _GrpSize = ((_az_GrpSize - _az_GrpVar ) + (round ((random _az_GrpVar) + (random _az_GrpVar))));
    };
    _grp = [_faction_side, _GrpSize, ([getMarkerPos _az_zone, 50, random 360] call BIS_fnc_relPos), _faction_units] call lt_fnc_createGroup;
    nul = [leader _grp, _az_zone,"STAG COLUMN", "SAFE", "LIMITED","NOFOLLOW","RANDOM","RADIORANGE:",_az_range] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 5;
  };
};

// Create Cars
if (_az_cars > 0) then {
  for "_i" from 1 to _az_cars do {
    _tmp_pos = [getMarkerPos _az_zone,random 50,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_car call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 2)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};

// Create IFVs
if (_az_ifvs > 0) then {
  for "_i" from 1 to _az_ifvs do {
    _tmp_pos = [getMarkerPos _az_zone,random 100,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_ifv call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 2)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};

// Create Tanks
if ( count _faction_tank > 0 AND _az_tanks > 0) then {
  for "_i" from 1 to _az_tanks do {
    _tmp_pos = [getMarkerPos _az_zone,random 150,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_tank call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 3)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};

// Create Helis
if ( count _faction_heli > 0 AND _az_helicopters > 0) then {
  for "_i" from 1 to _az_helicopters do {
    _tmp_pos = [getMarkerPos _az_zone,random 30,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_heli call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 4)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};


diag_log "================= Starting City Filler =================";
private ["_ltypes","_msize","_nearLocations","_unit_count_occupy","_loc_pos","_loc_rad"];
_ltypes = ["NameCityCapital","NameCity","NameVillage"];
_msize = getMarkerSize _az_zone;
_nearLocations = nearestLocations [getMarkerPos _az_zone, _ltypes, (((getMarkerSize _az_zone) select 0) + ((getMarkerSize _az_zone) select 1)) ];
if ( count _nearLocations > 0 ) then {
  {
    if ( (locationPosition _x) inArea _az_zone ) then
    {

      _unit_count_occupy = 0;
      _unit_count_patrol = 0;
      _loc_pos = locationPosition _x;
      if ( (size _x) select 0 > (size _x) select 1 ) then { _loc_rad = (size _x) select 0; } else { _loc_rad = (size _x) select 1; };
      diag_log format["Loc Radius: %1", _loc_rad];

      _houses = nearestObjects [_loc_pos, ["House","House_F"], _loc_rad];
      diag_log format["Buildings: %1",_houses];
      diag_log format["Building #: %1", count _houses];

      if ( count _houses == 0 ) then {
        _unit_count_occupy = (((_loc_rad)/100) ^ 2) * (_az_occupy/100);
        _unit_count_patrol = (((_loc_rad)/100) ^ 2) * (_az_patrol/100);
      } else {
        _unit_count_occupy = ceil (count _houses * (_az_occupy/100));
        _unit_count_patrol = ceil (count _houses * (_az_patrol/100));
      };
      diag_log format["Unit count (occupation): %1", _unit_count_occupy];
      diag_log format["Unit count (patrols): %1", _unit_count_patrol];

      if ( _az_occupy > 0 ) then {
        _grp = [_faction_side, ceil _unit_count_occupy, locationPosition _x, _faction_units] call lt_fnc_createGroup;
        sleep _unit_count_occupy;
        _nul = [(leader _grp),_loc_rad * 1.5,false,[_az_occupy,5],true, true] execVM "\lt_template_base\AI\GARRISON\Garrison_script.sqf";
      };

      if ( _az_patrol > 0 ) then
      {
        _marker = createMarker [format["town%1",random 9999], _loc_pos];
        _marker setMarkerSize [ _loc_rad * 1.5 , _loc_rad * 1.5 ];
        _marker setMarkerShape "RECTANGLE";
        _marker setMarkerAlpha 0;

        while { _unit_count_patrol > 0 } do
        {
          _grp = [_faction_side, ceil 5, locationPosition _x, _faction_units] call lt_fnc_createGroup;
          sleep 5;
          nul = [leader _grp, _marker,"STAG COLUMN", "SAFE", "LIMITED","NOFOLLOW","RANDOM","RADIORANGE:",_az_range,"onroad"] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
          _unit_count_patrol = _unit_count_patrol - 5;
        };
      };
    };
  } forEach _nearLocations;
};
