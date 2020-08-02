// Faction definitions
// OPFOR
LT_opf_f_units = ["O_Soldier_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_Soldier_SL_F","O_Soldier_TL_F","O_Soldier_M_F","O_Soldier_LAT_F","O_medic_F","O_Soldier_repair_F","O_Soldier_exp_F","O_Soldier_A_F","O_engineer_F"];
LT_opf_f_units_weightArray = [];
LT_opf_f_car = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
LT_opf_f_car_weightArray = [];
LT_opf_f_ifv = ["O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_AA_F","O_APC_Wheeled_02_rcws_F"];
LT_opf_f_ifv_weightArray = [];
LT_opf_f_tank = ["O_MBT_02_cannon_F"];
LT_opf_f_tank_weightArray = [];
LT_opf_f_heli = ["O_Heli_Light_02_F"];
LT_opf_f_heli_weightArray = [];
LT_OPF_F = [LT_opf_f_units,LT_opf_f_car,LT_opf_f_ifv,LT_opf_f_tank,LT_opf_f_heli];
LT_OPF_F_Weights = [LT_opf_f_units_weightArray,LT_opf_f_car_weightArray,LT_opf_f_ifv_weightArray,LT_opf_f_tank_weightArray,LT_opf_f_heli_weightArray];


// OPFOR Guerilla
LT_opf_g_f_units = ["O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F"];
LT_opf_g_f_units_weightArray = [];
LT_opf_g_f_car = ["O_G_Offroad_01_armed_F"];
LT_opf_g_f_car_weightArray = [];
LT_opf_g_f_ifv = ["O_APC_Wheeled_02_rcws_F"];
LT_opf_g_f_ifv_weightArray = [];
LT_opf_g_f_tank = [];
LT_opf_g_f_tank_weightArray = [];
LT_opf_g_f_heli = [];
LT_opf_g_f_heli_weightArray = [];
LT_OPF_G_F = [LT_opf_g_f_units,LT_opf_g_f_car,LT_opf_g_f_ifv,LT_opf_g_f_tank,LT_opf_g_f_heli];
LT_OPF_G_F_Weights = [LT_opf_g_f_units_weightArray,LT_opf_g_f_car_weightArray,LT_opf_g_f_ifv_weightArray,LT_opf_g_f_tank_weightArray,LT_opf_g_f_heli_weightArray];

// AAF
LT_ind_f_units = ["I_Soldier_A_F","I_soldier_AR_F","I_medic_F","I_engineer_F","I_soldier_exp_F","I_Soldier_GL_F","I_soldier_M_F","I_soldier_AA_F","I_soldier_AT_F","I_officer_F","I_soldier_repair_F","I_Soldier_F","I_soldier_LAT_F","I_Soldier_lite_F","I_Soldier_SL_F","I_Soldier_TL_F"];
LT_ind_f_units_weightArray = [];
LT_ind_f_car = ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"];
LT_ind_f_car_weightArray = [];
LT_ind_f_ifv = ["I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
LT_ind_f_ifv_weightArray = [];
LT_ind_f_tank = ["I_MBT_03_cannon_F"];
LT_ind_f_tank_weightArray = [];
LT_ind_f_heli = ["I_Heli_Transport_02_F"];
LT_ind_f_heli_weightArray = [];
LT_ind_f = [LT_ind_f_units,LT_ind_f_car,LT_ind_f_ifv,LT_ind_f_tank,LT_ind_f_heli];
LT_ind_f_Weights = [LT_ind_f_units_weightArray,LT_ind_f_car_weightArray,LT_ind_f_ifv_weightArray,LT_ind_f_tank_weightArray,LT_ind_f_heli_weightArray];

// LDF
LT_ind_E_F_units = ["I_E_Soldier_F","I_E_soldier_AR_F","I_E_medic_F","I_E_engineer_F","I_E_soldier_exp_F","I_E_Soldier_GL_F","I_E_soldier_M_F","I_E_soldier_AAA_F","I_E_soldier_AAT_F","I_E_officer_F","I_E_soldier_repair_F","I_E_Soldier_F","I_E_soldier_LAT_F","I_E_Soldier_lite_F","I_E_Soldier_SL_F","I_E_Soldier_TL_F"];
LT_ind_E_F_units_weightArray = [];
LT_ind_E_F_car = ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F","CUP_I_LR_MG_AAF"];
LT_ind_E_F_car_weightArray = [];
LT_ind_E_F_ifv = ["I_E_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F","CUP_I_M113_AAF","CUP_I_M163_AAF","CUP_I_ZSU23_AAF"];
LT_ind_E_F_ifv_weightArray = [];
LT_ind_E_F_tank = ["I_MBT_03_cannon_F"];
LT_ind_E_F_tank_weightArray = [];
LT_ind_E_F_heli = ["I_Heli_Transport_02_F","CUP_B_Wildcat_Hellfire_Armed_Green_AAF","CUP_B_Wildcat_Cannon_Armed_Green_AAF","CUP_B_Wildcat_Hellfire_Armed_Digital_AAF","CUP_B_Wildcat_Cannon_Armed_Digital_AAF","CUP_I_Ka60_GL_Digi_AAF","CUP_I_Ka60_Digi_AAF"];
LT_ind_E_F_heli_weightArray = [];
LT_ind_E_F = [LT_ind_E_F_units,LT_ind_E_F_car,LT_ind_E_F_ifv,LT_ind_E_F_tank,LT_ind_E_F_heli];
LT_ind_E_F_Weights = [LT_ind_E_F_units_weightArray,LT_ind_E_F_car_weightArray,LT_ind_E_F_ifv_weightArray,LT_ind_E_F_tank_weightArray,LT_ind_E_F_heli_weightArray];

// Altis Guerilla
LT_ind_g_f_units = ["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F"];
LT_ind_g_f_units_weightArray = [];
LT_ind_g_f_car = ["I_G_Offroad_01_armed_F"];
LT_ind_g_f_car_weightArray = [];
LT_ind_g_f_ifv = ["I_APC_Wheeled_03_cannon_F"];
LT_ind_g_f_ifv_weightArray = [];
LT_ind_g_f_tank = [];
LT_ind_g_f_tank_weightArray = [];
LT_ind_g_f_heli = [];
LT_ind_g_f_heli_weightArray = [];
LT_ind_g_f = [LT_ind_g_f_units,LT_ind_g_f_car,LT_ind_g_f_ifv,LT_ind_g_f_tank,LT_ind_g_f_heli];
LT_ind_g_f_Weights = [LT_ind_g_f_units_weightArray,LT_ind_g_f_car_weightArray,LT_ind_g_f_ifv_weightArray,LT_ind_g_f_tank_weightArray,LT_ind_g_f_heli_weightArray];

// Syndikat oid
LT_ind_c_f_units = ["I_C_Soldier_universal_F","I_C_Soldier_Bandit_8_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_1_F","I_C_Soldier_Para_8_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_2_F","I_C_Soldier_Para_1_F"];
LT_ind_c_f_units_weightArray = [];
LT_ind_c_f_car = [];
LT_ind_c_f_car_weightArray = [];
LT_ind_c_f_ifv = [];
LT_ind_c_f_ifv_weightArray = [];
LT_ind_c_f_tank = [];
LT_ind_c_f_tank_weightArray = [];
LT_ind_c_f_heli = [];
LT_ind_c_f_heli_weightArray = [];
LT_ind_c_f = [LT_ind_c_f_units,LT_ind_c_f_car,LT_ind_c_f_ifv,LT_ind_c_f_tank,LT_ind_c_f_heli];
LT_ind_c_f_Weights = [LT_ind_c_f_units_weightArray,LT_ind_c_f_car_weightArray,LT_ind_c_f_ifv_weightArray,LT_ind_c_f_tank_weightArray,LT_ind_c_f_heli_weightArray];

// NATO MTP, NATO Pacific
LT_NATO_MTP_units = ["B_Soldier_A_F","B_soldier_AR_F","B_medic_F","B_engineer_F","B_soldier_exp_F","B_Soldier_GL_F","B_HeavyGunner_F","B_soldier_M_F","B_soldier_AT_F","B_officer_F","B_soldier_repair_F","B_Soldier_F","B_soldier_LAT_F","B_Sharpshooter_F","B_Soldier_SL_F","B_Soldier_TL_F"];
LT_NATO_MTP_units_weightArray = [];
LT_NATO_MTP_car = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_LSV_01_armed_F","B_LSV_01_unarmed_F","B_Quadbike_01_F","B_Truck_01_transport_F","B_Truck_01_transport_F","B_Truck_01_Repair_F","B_Truck_01_box_F","B_Truck_01_ammo_F","B_Truck_01_mover_F"];
LT_NATO_MTP_car_weightArray = [];
LT_NATO_MTP_ifv = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_AA_F"];
LT_NATO_MTP_ifv_weightArray = [];
LT_NATO_MTP_tank = ["B_MBT_01_cannon_F","B_MBT_01_TUSK_F"];
LT_NATO_MTP_tank_weightArray = [];
LT_NATO_MTP_heli = ["B_Heli_Light_01_dynamicLoadout_F","B_Heli_Light_01_F","B_Heli_Attack_01_dynamicLoadout_F","B_Heli_Transport_01_F"];
LT_NATO_MTP_heli_weightArray = [];
LT_NATO_MTP = [LT_NATO_MTP_units,LT_NATO_MTP_car,LT_NATO_MTP_ifv,LT_NATO_MTP_tank,LT_NATO_MTP_heli];
LT_NATO_MTP_weights = [];

LT_NATO_PAC_units = ["B_T_Soldier_A_F","B_T_Soldier_AAR_F","B_T_Soldier_AR_F","B_T_Medic_F","B_T_Engineer_F","B_T_Soldier_AAT_F","B_T_Soldier_Exp_F","B_T_Soldier_GL_F","B_T_soldier_M_F","B_T_Soldier_AT_F","B_T_Officer_F","B_T_Soldier_Repair_F","B_T_Soldier_F","B_T_Soldier_LAT_F","B_T_Soldier_SL_F","B_T_Soldier_TL_F","B_T_Soldier_UAV_F"];
LT_NATO_PAC_units_weightArray = [];
LT_NATO_PAC_car = ["B_T_Truck_01_mover_F","B_T_Truck_01_box_F","B_T_Truck_01_Repair_F","B_T_Truck_01_transport_F","B_T_MRAP_01_F","B_T_MRAP_01_hmg_F","B_T_LSV_01_armed_F","B_T_LSV_01_unarmed_F","B_T_Quadbike_01_F"];
LT_NATO_PAC_car_weightArray = [];
LT_NATO_PAC_ifv = ["B_T_APC_Wheeled_01_cannon_F","B_T_APC_Tracked_01_rcws_F","B_T_APC_Tracked_01_CRV_F","B_T_APC_Tracked_01_AA_F"];
LT_NATO_PAC_ifv_weightArray = [];
LT_NATO_PAC_tank = ["B_T_MBT_01_TUSK_F","B_T_MBT_01_cannon_F"];
LT_NATO_PAC_tank_weightArray = [];
LT_NATO_PAC_heli = ["B_Heli_Light_01_dynamicLoadout_F","B_Heli_Light_01_F","B_Heli_Attack_01_dynamicLoadout_F","B_Heli_Transport_01_F"];
LT_NATO_PAC_heli_weightArray = [];
LT_NATO_PAC = [LT_NATO_PAC_units,LT_NATO_PAC_car,LT_NATO_PAC_ifv,LT_NATO_PAC_tank,LT_NATO_PAC_heli];
LT_NATO_PAC_weights = [];


// ## USA ##
// Airborne 101st
LT_USA_airBorne101_units = ["LIB_US_101AB_NCO","LIB_US_101AB_grenadier","LIB_US_101AB_corporal","LIB_US_101AB_mgunner_assistant","LIB_US_101AB_mgunner","LIB_US_101AB_FC_rifleman","LIB_US_101AB_rifleman","LIB_US_101AB_CO","LIB_US_101AB_radioman","LIB_US_101AB_AT_soldier","fow_s_us_ab_m42_101_sniper_m1903a1"];
LT_USA_airBorne101_units_weightArray = [];
LT_USA_airBorne101_car = ["fow_v_gmc_open_usa","fow_v_willy_usa"];
LT_USA_airBorne101_car_weightArray = [];
LT_USA_airBorne101_ifv = ["fow_v_lvta2_usa","fow_v_lvta2_usa","fow_v_m5a1_usa"];
LT_USA_airBorne101_ifv_weightArray = [];
LT_USA_airBorne101_tank = ["fow_v_m4a2_usa"];
LT_USA_airBorne101_tank_weightArray = [];
LT_USA_airBorne101_heli = [];
LT_USA_airBorne101_heli_weightArray = [];
LT_USA_airBorne101 = [LT_USA_airBorne101_units,LT_USA_airBorne101_car,LT_USA_airBorne101_ifv,LT_USA_airBorne101_tank,LT_USA_airBorne101_heli];
LT_USA_airBorne101_weights = [];

// Airborne 82nd
LT_USA_airBorne82_units = ["LIB_US_82AB_NCO","LIB_US_82AB_grenadier","LIB_US_82AB_corporal","LIB_US_82AB_mgunner_assistant","LIB_US_82AB_mgunner","LIB_US_82AB_FC_rifleman","LIB_US_82AB_rifleman","LIB_US_82AB_CO","LIB_US_82AB_radioman","LIB_US_82AB_AT_soldier","fow_s_us_ab_m42_82_sniper_m1903a1"];
LT_USA_airBorne82_units_weightArray = [];
LT_USA_airBorne82_car = ["fow_v_gmc_open_usa","fow_v_willy_usa"];
LT_USA_airBorne82_car_weightArray = [];
LT_USA_airBorne82_ifv = ["fow_v_lvta2_usa","fow_v_lvta2_usa","fow_v_m5a1_usa"];
LT_USA_airBorne82_ifv_weightArray = [];
LT_USA_airBorne82_tank = ["fow_v_m4a2_usa"];
LT_USA_airBorne82_tank_weightArray = [];
LT_USA_airBorne82_heli = [];
LT_USA_airBorne82_heli_weightArray = [];
LT_USA_airBorne82 = [LT_USA_airBorne82_units,LT_USA_airBorne82_car,LT_USA_airBorne82_ifv,LT_USA_airBorne82_tank,LT_USA_airBorne82_heli];
LT_USA_airBorne82_weights = [];

// US Army Europe
LT_US_armyEU_units = ["fow_s_us_ab_m42_teamleader","fow_s_us_ab_m42_teamleader_asst","fow_s_us_ab_m42_bar_gunner","fow_s_us_ab_m42_bar_asst","fow_s_us_ab_m42_rifleman_scout","fow_s_us_ab_m42_rifleman_gl","fow_s_us_ab_m42_rifleman","fow_s_us_ab_m42_m1919a6_gunner","fow_s_us_ab_m42_m1919a6_asst","fow_s_us_at_asst","fow_s_us_at","fow_s_us_teamleader","fow_s_us_m37_sniper_m1903a1"];
LT_US_armyEU_units_weightArray = [];
LT_US_armyEU_car = ["fow_v_gmc_open_usa","fow_v_willy_usa"];
LT_US_armyEU_car_weightArray = [];
LT_US_armyEU_ifv = ["fow_v_lvta2_usa","fow_v_lvta2_usa","fow_v_m5a1_usa"];
LT_US_armyEU_ifv_weightArray = [];
LT_US_armyEU_tank = ["fow_v_m4a2_usa"];
LT_US_armyEU_tank_weightArray = [];
LT_US_armyEU_heli = [];
LT_US_armyEU_heli_weightArray = [];
LT_US_armyEU = [LT_US_armyEU_units,LT_US_armyEU_car,LT_US_armyEU_ifv,LT_US_armyEU_tank,LT_US_armyEU_heli];
LT_US_armyEU_weights = [];

// US Army Europe (Winter)
LT_US_armyEUw_units = ["LIB_US_AT_soldier_w","LIB_US_Captain_w","LIB_US_Engineer_w","LIB_US_First_lieutenant_w","LIB_US_Mgunner_w","LIB_US_Radioman_w","LIB_US_Corpoal_w","LIB_US_FC_rifleman_w","LIB_US_Rifleman_w","LIB_US_Second_lieutenant_w","LIB_US_Sniper_w","LIB_US_Smgunner_w"];
LT_US_armyEUw_units_weightArray = [];
LT_US_armyEUw_car = ["LIB_US_Willys_MB_M1919_w","LIB_US_Willys_MB_Hood_w","LIB_US_Scout_M3_w","LIB_US_GMC_Open_w","LIB_US_GMC_Tent_w"];
LT_US_armyEUw_car_weightArray = [];
LT_US_armyEUw_ifv = ["LIB_US_M3_Halftrack_w"];
LT_US_armyEUw_ifv_weightArray = [];
LT_US_armyEUw_tank = ["LIB_M4A3_75_w"];
LT_US_armyEUw_tank_weightArray = [];
LT_US_armyEUw_heli = [];
LT_US_armyEUw_heli_weightArray = [];
LT_US_armyEUw = [LT_US_armyEUw_units,LT_US_armyEUw_car,LT_US_armyEUw_ifv,LT_US_armyEUw_tank,LT_US_armyEUw_heli];
LT_US_armyEUw_weights = [];

// US Army Pacific
LT_US_armyPAC_units = ["fow_s_us_p_teamleader","fow_s_us_p_teamleader_asst","fow_s_us_p_bar_gunner","fow_s_us_p_bar_asst","fow_s_us_p_rifleman_scout","fow_s_us_p_rifleman_gl","fow_s_us_p_rifleman","fow_s_us_p_m1919a6_gunner","fow_s_us_p_m1919a6_asst","fow_s_us_p_at_asst","fow_s_us_p_at","fow_s_us_p_teamleader","fow_s_us_p_sniper_m1903a1"];
LT_US_armyPAC_units_weightArray = [];
LT_US_armyPAC_car = ["fow_v_gmc_open_usa","fow_v_willy_usa"];
LT_US_armyPAC_car_weightArray = [];
LT_US_armyPAC_ifv = ["fow_v_lvta2_usa","fow_v_lvta2_usa","fow_v_m5a1_usa"];
LT_US_armyPAC_ifv_weightArray = [];
LT_US_armyPAC_tank = ["fow_v_m4a2_usa"];
LT_US_armyPAC_tank_weightArray = [];
LT_US_armyPAC_heli = [];
LT_US_armyPAC_heli_weightArray = [];
LT_US_armyPAC = [LT_US_armyPAC_units,LT_US_armyPAC_car,LT_US_armyPAC_ifv,LT_US_armyPAC_tank,LT_US_armyPAC_heli];
LT_US_armyPAC_weights = [];

// US Merril's Mauraders
LT_US_armyMM_units = ["fow_s_us_mm_teamleader","fow_s_us_mm_teamleader_asst","fow_s_us_mm_bar_gunner","fow_s_us_mm_bar_asst","fow_s_us_mm_rifleman_scout","fow_s_us_mm_rifleman_gl","fow_s_us_mm_rifleman","fow_s_us_mm_m1919a6_gunner","fow_s_us_mm_m1919a6_asst","fow_s_us_mm_at_asst","fow_s_us_mm_at","fow_s_us_mm_teamleader","fow_s_us_mm_sniper_m1903a1"];
LT_US_armyMM_units_weightArray = [];
LT_US_armyMM_car = ["fow_v_gmc_open_usa","fow_v_willy_usa"];
LT_US_armyMM_car_weightArray = [];
LT_US_armyMM_ifv = ["fow_v_lvta2_usa","fow_v_lvta2_usa","fow_v_m5a1_usa"];
LT_US_armyMM_ifv_weightArray = [];
LT_US_armyMM_tank = ["fow_v_m4a2_usa"];
LT_US_armyMM_tank_weightArray = [];
LT_US_armyMM_heli = [];
LT_US_armyMM_heli_weightArray = [];
LT_US_armyMM = [LT_US_armyMM_units,LT_US_armyMM_car,LT_US_armyMM_ifv,LT_US_armyMM_tank,LT_US_armyMM_heli];
LT_US_armyMM_weights = [];


// ## UK ##
// UK Commandos
LT_UK_comm_units = ["fow_s_uk_cdo_teamleader","fow_s_uk_cdo_rifleman","fow_s_uk_cdo_bren_gunner","fow_s_uk_cdo_bren_asst","fow_s_uk_cdo_at","fow_s_uk_cdo_at_asst","fow_s_uk_cdo_medic","fow_s_uk_cdo_officer","fow_s_uk_cdo_section_commander","fow_s_uk_cdo_radioman"];
LT_UK_comm_units_weightArray = [];
LT_UK_comm_car = ["LIB_UK_Willys_MB_Hood","LIB_UK_Willys_MB_M1919","fow_v_universalCarrier"];
LT_UK_comm_car_weightArray = [];
LT_UK_comm_ifv = ["LIB_UK_M3_Halftrack","LIB_UK_M3_Halftrack","fow_v_cromwell_uk"];
LT_UK_comm_ifv_weightArray = [];
LT_UK_comm_tank = ["LIB_M4A4_FIREFLY","LIB_Churchill_Mk7","LIB_Churchill_Mk7_Crocodile"];
LT_UK_comm_tank_weightArray = [];
LT_UK_comm_heli = [];
LT_UK_comm_heli_weightArray = [];
LT_UK_comm = [LT_UK_comm_units,LT_UK_comm_car,LT_UK_comm_ifv,LT_UK_comm_tank,LT_UK_comm_heli];
LT_UK_comm_weights = [];

// UK Paratroopers
LT_UK_para_units = ["fow_s_uk_para_teamleader","fow_s_uk_para_rifleman","fow_s_uk_para_bren_gunner","fow_s_uk_para_bren_asst","fow_s_uk_para_at","fow_s_uk_para_at_asst","fow_s_uk_para_medic","fow_s_uk_para_officer","fow_s_uk_para_section_commander","fow_s_uk_para_radioman"];
LT_UK_para_units_weightArray = [];
LT_UK_para_car = ["LIB_UK_Willys_MB_Hood","LIB_UK_Willys_MB_M1919","fow_v_universalCarrier"];
LT_UK_para_car_weightArray = [];
LT_UK_para_ifv = ["LIB_UK_M3_Halftrack","LIB_UK_M3_Halftrack","fow_v_cromwell_uk"];
LT_UK_para_ifv_weightArray = [];
LT_UK_para_tank = ["LIB_M4A4_FIREFLY","LIB_Churchill_Mk7","LIB_Churchill_Mk7_Crocodile"];
LT_UK_para_tank_weightArray = [];
LT_UK_para_heli = [];
LT_UK_para_heli_weightArray = [];
LT_UK_para = [LT_UK_para_units,LT_UK_para_car,LT_UK_para_ifv,LT_UK_para_tank,LT_UK_para_heli];
LT_UK_para_weights = [];

// UK Paratroopers (Winter)
LT_UK_paraW_units = ["LIB_UK_Para_Sergeant_w","LIB_UK_Para_AT_Soldier_w","LIB_UK_Para_Rifleman_w","LIB_UK_Para_Corporal_w","LIB_UK_Para_Sniper_w","LIB_UK_Para_Radioman_w","LIB_UK_Para_Officer_w","LIB_UK_Para_LanceCorporal_w","LIB_UK_Para_Medic_w","LIB_UK_Para_Engineer_w"];
LT_UK_paraW_units_weightArray = [];
LT_UK_paraW_car = ["LIB_UK_Willys_MB_w","LIB_UK_Willys_MB_Hood_w","LIB_UK_Willys_MB_M1919_w","LIB_UniversalCarrier_w"];
LT_UK_paraW_car_weightArray = [];
LT_UK_paraW_ifv = ["LIB_US_M3_Halftrack_w","LIB_US_M3_Halftrack_w","LIB_Cromwell_Mk4_w"];
LT_UK_paraW_ifv_weightArray = [];
LT_UK_paraW_tank = ["LIB_M4A3_75_w","","LIB_Churchill_Mk7_w","LIB_Churchill_Mk7_Crocodile_w","LIB_Churchill_Mk7_AVRE_w"];
LT_UK_paraW_tank_weightArray = [];
LT_UK_paraW_heli = [];
LT_UK_paraW_heli_weightArray = [];
LT_UK_paraW = [LT_UK_paraW_units,LT_UK_paraW_car,LT_UK_paraW_ifv,LT_UK_paraW_tank,LT_UK_paraW_heli];
LT_UK_paraW_weights = [];

// UK Army
LT_UK_army_units = ["fow_s_uk_teamleader","fow_s_uk_rifleman","fow_s_uk_bren_gunner","fow_s_uk_bren_asst","fow_s_uk_at","fow_s_uk_at_asst","fow_s_uk_medic","fow_s_uk_officer","fow_s_uk_section_commander","fow_s_uk_radioman"];
LT_UK_army_units_weightArray = [];
LT_UK_army_car = ["LIB_UK_Willys_MB_Hood","LIB_UK_Willys_MB_M1919","fow_v_universalCarrier"];
LT_UK_army_car_weightArray = [];
LT_UK_army_ifv = ["LIB_UK_M3_Halftrack","LIB_UK_M3_Halftrack","fow_v_cromwell_uk"];
LT_UK_army_ifv_weightArray = [];
LT_UK_army_tank = ["LIB_M4A4_FIREFLY","LIB_Churchill_Mk7","LIB_Churchill_Mk7_Crocodile","LIB_Churchill_Mk7_AVRE"];
LT_UK_army_tank_weightArray = [];
LT_UK_army_heli = [];
LT_UK_army_heli_weightArray = [];
LT_UK_army = [LT_UK_army_units,LT_UK_army_car,LT_UK_army_ifv,LT_UK_army_tank,LT_UK_army_heli];
LT_UK_army_weights = [];

// UK Army (Winter)
LT_UK_armyW_units = ["LIB_UK_Sergeant_w","LIB_UK_AT_Soldier_w","LIB_UK_Rifleman_w","LIB_UK_Corporal_w","LIB_UK_Sniper_w","LIB_UK_Radioman_w","LIB_UK_Officer_w","LIB_UK_LanceCorporal_w","LIB_UK_Medic_w","LIB_UK_Engineer_w"];
LT_UK_armyW_units_weightArray = [];
LT_UK_armyW_car = ["LIB_UK_Willys_MB_w","LIB_UK_Willys_MB_Hood_w","LIB_UK_Willys_MB_M1919_w","LIB_UniversalCarrier_w"];
LT_UK_armyW_car_weightArray = [];
LT_UK_armyW_ifv = ["LIB_US_M3_Halftrack_w","LIB_US_M3_Halftrack_w","LIB_Cromwell_Mk4_w"];
LT_UK_armyW_ifv_weightArray = [];
LT_UK_armyW_tank = ["LIB_M4A3_75_w","","LIB_Churchill_Mk7_w","LIB_Churchill_Mk7_Crocodile_w","LIB_Churchill_Mk7_AVRE_w"];
LT_UK_armyW_tank_weightArray = [];
LT_UK_armyW_heli = [];
LT_UK_armyW_heli_weightArray = [];
LT_UK_armyW = [LT_UK_armyW_units,LT_UK_armyW_car,LT_UK_armyW_ifv,LT_UK_armyW_tank,LT_UK_armyW_heli];
LT_UK_armyW_weights = [];

// UK Army (Dessert)
LT_UK_armyD_units = ["LIB_UK_DR_AT_Soldier","LIB_UK_DR_LanceCorporal","LIB_UK_DR_Corporal","LIB_UK_DR_Engineer","LIB_UK_DR_Grenadier","LIB_UK_DR_Medic","LIB_UK_DR_Officer","LIB_UK_DR_Radioman","LIB_UK_DR_Rifleman","LIB_UK_DR_Sergeant","LIB_UK_DR_Sniper"];
LT_UK_armyD_units_weightArray = [];
LT_UK_armyD_car = ["LIB_UK_DR_Willys_MB_Hood","LIB_UK_DR_Willys_MB_M1919","LIB_UniversalCarrier_dessert"];
LT_UK_armyD_car_weightArray = [];
LT_UK_armyD_ifv = ["LIB_UK_DR_M3_Halftrack","LIB_UK_DR_M3_Halftrack","fow_v_cromwell_uk"];
LT_UK_armyD_ifv_weightArray = [];
LT_UK_armyD_tank = ["LIB_UK_DR_M4A3_75","LIB_Churchill_Mk7_dessert","LIB_Churchill_Mk7_Howitzer_dessert","LIB_Churchill_Mk7_AVRE_dessert"];
LT_UK_armyD_tank_weightArray = [];
LT_UK_armyD_heli = [];
LT_UK_armyD_heli_weightArray = [];
LT_UK_armyD = [LT_UK_armyD_units,LT_UK_armyD_car,LT_UK_armyD_ifv,LT_UK_armyD_tank,LT_UK_armyD_heli];
LT_UK_armyD_weights = [];

// Polish Army
LT_POL_army_units = ["LIB_WP_Strzelec","LIB_WP_AT_grenadier","LIB_WP_Mgunner","LIB_WP_Medic","LIB_WP_Radioman","LIB_WP_Starszy_strzelec","LIB_WP_Strzelec","LIB_WP_Sapper","LIB_WP_Starszy_sapper","LIB_WP_Porucznic","LIB_WP_Sierzant","LIB_WP_Sniper","LIB_WP_Stggunner"];
LT_POL_army_units_weightArray = [];
LT_POL_army_car = [];
LT_POL_army_car_weightArray = [];
LT_POL_army_ifv = [];
LT_POL_army_ifv_weightArray = [];
LT_POL_army_tank = [];
LT_POL_army_tank_weightArray = [];
LT_POL_army_heli = [];
LT_POL_army_heli_weightArray = [];
LT_POL_army = [LT_POL_army_units,LT_POL_army_car,LT_POL_army_ifv,LT_POL_army_tank,LT_POL_army_heli];
LT_POL_army_weights = [];

// France Resistance
LT_FFI_units = ["LIB_FFI_Soldier_1","LIB_FFI_Soldier_2","LIB_FFI_Soldier_3","LIB_FFI_Soldier_4","LIB_FFI_LAT_Soldier","LIB_FFI_Soldier_6","LIB_FFI_Soldier_5"];
LT_FFI_units_weightArray = [];
LT_FFI_car = ["LIB_GazM1_FFI_camo","LIB_GazM1_FFI","LIB_CIV_FFI_CitC4_5","LIB_CIV_FFI_CitC4_4"];
LT_FFI_car_weightArray = [];
LT_FFI_ifv = [];
LT_FFI_ifv_weightArray = [];
LT_FFI_tank = [];
LT_FFI_tank_weightArray = [];
LT_FFI_heli = [];
LT_FFI_heli_weightArray = [];
LT_FFI = [LT_FFI_units,LT_FFI_car,LT_FFI_ifv,LT_FFI_tank,LT_FFI_heli];
LT_FFI_weights = [];


// ## USSR ##
// Red Army
LT_USSR_army_units = ["LIB_SOV_sergeant","LIB_SOV_smgunner","LIB_SOV_mgunner","LIB_SOV_medic","LIB_SOV_LAT_Soldier","LIB_SOV_AT_grenadier","LIB_SOV_LC_rifleman","LIB_SOV_rifleman","LIB_SOV_AT_soldier","LIB_SOV_AT_M1A1_soldier","LIB_SOV_sapper","LIB_SOV_lieutenant","LIB_SOV_assault_mgunner","LIB_SOV_assault_smgunner","LIB_SOV_assault_sergeant"];
LT_USSR_army_units_weightArray = [];
LT_USSR_army_car = ["LIB_GazM1_SOV","LIB_Scout_M3","LIB_US6_Open","LIB_Zis5v_61K","LIB_Zis5v","LIB_US6_BM13"];
LT_USSR_army_car_weightArray = [];
LT_USSR_army_ifv = ["LIB_SOV_M3_Halftrack","LIB_SdKfz251_captured","LIB_SdKfz251_captured_FFV"];
LT_USSR_army_ifv_weightArray = [];
LT_USSR_army_tank = ["LIB_M4A2_SOV","LIB_T34_85","LIB_T34_76","LIB_SU85","LIB_JS2_43"];
LT_USSR_army_tank_weightArray = [];
LT_USSR_army_heli = [];
LT_USSR_army_heli_weightArray = [];
LT_USSR_army = [LT_USSR_army_units,LT_USSR_army_car,LT_USSR_army_ifv,LT_USSR_army_tank,LT_USSR_army_heli];
LT_USSR_army_weights = [];

// Red Army Winter
LT_USSR_armyW_units = ["LIB_SOV_sergeant_w","LIB_SOV_smgunner_w","LIB_SOV_mgunner_w","LIB_SOV_medic_w","LIB_SOV_LAT_Soldier_w","LIB_SOV_AT_grenadier_w","LIB_SOV_LC_rifleman_w","LIB_SOV_rifleman_w","LIB_SOV_AT_soldier_w","LIB_SOV_AT_M1A1_soldier_w","LIB_SOV_sapper_w","LIB_SOV_lieutenant_w","LIB_SOV_assault_mgunner_w","LIB_SOV_assault_smgunner_w","LIB_SOV_assault_sergeant_w"];
LT_USSR_armyW_units_weightArray = [];
LT_USSR_armyW_car = ["LIB_Scout_M3_w","LIB_US6_Open_w","LIB_Zis5v_61K_w","LIB_Zis5v_w","LIB_US6_BM13_w"];
LT_USSR_armyW_car_weightArray = [];
LT_USSR_armyW_ifv = ["LIB_SOV_M3_Halftrack_w","LIB_SdKfz251_captured_w","LIB_SdKfz251_captured_FFV_w"];
LT_USSR_armyW_ifv_weightArray = [];
LT_USSR_armyW_tank = ["LIB_M4A2_SOV_w","LIB_T34_85_w","LIB_T34_76_w","LIB_SU85_w","LIB_JS2_43_w"];
LT_USSR_armyW_tank_weightArray = [];
LT_USSR_armyW_heli = [];
LT_USSR_armyW_heli_weightArray = [];
LT_USSR_armyW = [LT_USSR_armyW_units,LT_USSR_armyW_car,LT_USSR_armyW_ifv,LT_USSR_armyW_tank,LT_USSR_armyW_heli];
LT_USSR_armyW_weights = [];

// ## Germany ##
// Germany Wehrmacht
LT_GER_army_units = ["fow_s_ger_heer_tl_mp40","fow_s_ger_heer_rifleman","fow_s_ger_heer_tl_asst","fow_s_ger_heer_mg42_gunner","fow_s_ger_heer_mg42_sparebarrel","fow_s_ger_heer_mg42_asst","fow_s_ger_heer_tl_stg","fow_s_ger_heer_nco_mp40","fow_s_ger_heer_radio_operator","fow_s_ger_heer_medic","fow_s_ger_heer_rifleman_mp40","fow_s_ger_heer_rifleman_mp40_pzf","fow_s_ger_heer_mg34_gunner","fow_s_ger_heer_rifleman_g43"];
LT_GER_army_units_weightArray = [];
LT_GER_army_car = ["fow_v_kubelwagen_camo_gr_heer","fow_v_kubelwagen_mg34_gr_heer","fow_v_sdkfz_222_ger_heer","fow_v_sdkfz_222_camo_ger_heer","fow_v_sdkfz_234_1","fow_v_truppenfahrrad_ger_heer"];
LT_GER_army_car_weightArray = [];
LT_GER_army_ifv = ["fow_v_sdkfz_250_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_ger_heer","fow_v_sdkfz_250_9_camo_ger_heer","fow_v_sdkfz_251_camo_ger_heer","LIB_SdKfz_7_AA"];
LT_GER_army_ifv_weightArray = [];
LT_GER_army_tank = ["fow_v_panther_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_T34_76_captured","LIB_pzKpfwIV_H_tarn51c","LIB_pzKpfwIV_B_tarn51c","LIB_pzKpfwIV_E_tarn51d","LIB_pzKpfwIV_E_1","LIB_SdKfz124","LIB_StuG_III_G"];
LT_GER_army_tank_weightArray = [];
LT_GER_army_heli = [];
LT_GER_army_heli_weightArray = [];
LT_GER_army = [LT_GER_army_units,LT_GER_army_car,LT_GER_army_ifv,LT_GER_army_tank,LT_GER_army_heli];
LT_GER_army_weights = [];

// Germany Waffen-SS
LT_GER_wafSS_units = ["fow_s_ger_ss_tl_mp40","fow_s_ger_ss_rifleman","fow_s_ger_ss_tl_asst","fow_s_ger_ss_mg42_gunner","fow_s_ger_ss_mg42_sparebarrel","fow_s_ger_ss_mg42_asst","fow_s_ger_ss_tl_stg","fow_s_ger_ss_nco_mp40","fow_s_ger_ss_radio_operator","fow_s_ger_ss_medic","fow_s_ger_ss_rifleman_mp40","fow_s_ger_ss_rifleman_mp40_pzf","fow_s_ger_ss_mg34_gunner","fow_s_ger_ss_rifleman_g43"];
LT_GER_wafSS_units_weightArray = [];
LT_GER_wafSS_car = ["fow_v_kubelwagen_camo_gr_heer","fow_v_kubelwagen_mg34_gr_heer","fow_v_sdkfz_222_ger_heer","fow_v_sdkfz_222_camo_ger_heer","fow_v_sdkfz_234_1","fow_v_truppenfahrrad_ger_heer"];
LT_GER_wafSS_car_weightArray = [];
LT_GER_wafSS_ifv = ["fow_v_sdkfz_250_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_ger_heer","fow_v_sdkfz_250_9_camo_ger_heer","fow_v_sdkfz_251_camo_ger_heer","LIB_SdKfz_7_AA"];
LT_GER_wafSS_ifv_weightArray = [];
LT_GER_wafSS_tank = ["fow_v_panther_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_T34_76_captured","LIB_pzKpfwIV_H_tarn51c","LIB_pzKpfwIV_B_tarn51c","LIB_pzKpfwIV_E_tarn51d","LIB_pzKpfwIV_E_1","LIB_SdKfz124","LIB_StuG_III_G"];
LT_GER_wafSS_tank_weightArray = [];
LT_GER_wafSS_heli = [];
LT_GER_wafSS_heli_weightArray = [];
LT_GER_wafSS = [LT_GER_wafSS_units,LT_GER_wafSS_car,LT_GER_wafSS_ifv,LT_GER_wafSS_tank,LT_GER_wafSS_heli];
LT_GER_wafSS_weights = [];

// Germany Afrikakorps (Desert)
LT_GER_armyD_units = ["LIB_DAK_NCO","LIB_DAK_NCO2","LIB_DAK_Soldier_3","LIB_DAK_medic","LIB_DAK_Soldier_2","LIB_DAK_grenadier","LIB_DAK_Soldier","LIB_DAK_AT_grenadier","LIB_DAK_AT_soldier","LIB_DAK_Soldier_4","LIB_DAK_radioman","LIB_DAK_sapper_gefr","LIB_DAK_sapper","LIB_DAK_Sentry_2","LIB_DAK_Sentry","LIB_DAK_Sniper"];
LT_GER_armyD_units_weightArray = [];
LT_GER_armyD_car = ["fow_v_truppenfahrrad_ger_heer","LIB_DAK_Kfz1_Hood","LIB_DAK_Kfz1_MG42","LIB_DAK_Scout_M3","LIB_DAK_OpelBlitz_Tent"];
LT_GER_armyD_car_weightArray = [];
LT_GER_armyD_ifv = ["LIB_DAK_M3_Halftrack","LIB_DAK_SdKfz251","LIB_DAK_SdKfz_7_AA","LIB_DAK_SdKfz251_FFV"];
LT_GER_armyD_ifv_weightArray = [];
LT_GER_armyD_tank = ["LIB_DAK_FlakPanzerIV_Wirbelwind","LIB_DAK_PzkpfwIV_H","LIB_DAK_PzkpfwIV_H","LIB_DAK_PzkpfwIV_H","LIB_DAK_PzkpfwIV_E"];
LT_GER_armyD_tank_weightArray = [];
LT_GER_armyD_heli = [];
LT_GER_armyD_heli_weightArray = [];
LT_GER_armyD = [LT_GER_armyD_units,LT_GER_armyD_car,LT_GER_armyD_ifv,LT_GER_armyD_tank,LT_GER_armyD_heli];
LT_GER_armyD_weights = [];

// Germany Fallschirmjäger (Airborne)
LT_GER_para_units = ["fow_s_ger_luft_tl_mp40","fow_s_ger_luft_rifleman","fow_s_ger_luft_tl_asst","fow_s_ger_luft_mg42_gunner","fow_s_ger_luft_mg42_sparebarrel","fow_s_ger_luft_mg42_asst","fow_s_ger_luft_tl_stg","fow_s_ger_luft_nco_mp40","fow_s_ger_luft_radio_operator","fow_s_ger_luft_medic","fow_s_ger_luft_rifleman_mp40","fow_s_ger_luft_rifleman_mp40_pzf","fow_s_ger_luft_mg34_gunner","fow_s_ger_luft_rifleman_g43"];
LT_GER_para_units_weightArray = [];
LT_GER_para_car = ["fow_v_kubelwagen_camo_gr_heer","fow_v_kubelwagen_mg34_gr_heer","fow_v_sdkfz_222_ger_heer","fow_v_sdkfz_222_camo_ger_heer","fow_v_sdkfz_234_1","fow_v_truppenfahrrad_ger_heer"];
LT_GER_para_car_weightArray = [];
LT_GER_para_ifv = ["fow_v_sdkfz_250_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_ger_heer","fow_v_sdkfz_250_9_camo_ger_heer","fow_v_sdkfz_251_camo_ger_heer","LIB_SdKfz_7_AA"];
LT_GER_para_ifv_weightArray = [];
LT_GER_para_tank = ["fow_v_panther_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_T34_76_captured","LIB_pzKpfwIV_H_tarn51c","LIB_pzKpfwIV_B_tarn51c","LIB_pzKpfwIV_E_tarn51d","LIB_pzKpfwIV_E_1","LIB_SdKfz124","LIB_StuG_III_G"];
LT_GER_para_tank_weightArray = [];
LT_GER_para_heli = [];
LT_GER_para_heli_weightArray = [];
LT_GER_para = [LT_GER_para_units,LT_GER_para_car,LT_GER_para_ifv,LT_GER_para_tank,LT_GER_para_heli];
LT_GER_para_weights = [];

// ## Italian ##
// Italian Fallschirmjäger (Airborne)
LT_ITA_para_units = ["fow_s_ger_luft_italy_tl_mp40","fow_s_ger_luft_italy_rifleman","fow_s_ger_luft_italy_tl_asst","fow_s_ger_luft_italy_mg42_gunner","fow_s_ger_luft_italy_mg42_sparebarrel","fow_s_ger_luft_italy_mg42_asst","fow_s_ger_luft_italy_tl_stg","fow_s_ger_luft_italy_nco_mp40","fow_s_ger_luft_italy_radio_operator","fow_s_ger_luft_italy_medic","fow_s_ger_luft_italy_rifleman_mp40","fow_s_ger_luft_italy_rifleman_mp40_pzf","fow_s_ger_luft_italy_mg34_gunner","fow_s_ger_luft_italy_rifleman_g43"];
LT_ITA_para_units_weightArray = [];
LT_ITA_para_car = ["fow_v_kubelwagen_camo_gr_heer","fow_v_kubelwagen_mg34_gr_heer","fow_v_sdkfz_222_ger_heer","fow_v_sdkfz_222_camo_ger_heer","fow_v_sdkfz_234_1","fow_v_truppenfahrrad_ger_heer"];
LT_ITA_para_car_weightArray = [];
LT_ITA_para_ifv = ["fow_v_sdkfz_250_ger_heer","fow_v_sdkfz_250_camo_ger_heer","fow_v_sdkfz_250_9_ger_heer","fow_v_sdkfz_250_9_camo_ger_heer","fow_v_sdkfz_251_camo_ger_heer","LIB_SdKfz_7_AA"];
LT_ITA_para_ifv_weightArray = [];
LT_ITA_para_tank = ["fow_v_panther_ger_heer","LIB_FlakPanzerIV_Wirbelwind","LIB_T34_76_captured","LIB_pzKpfwIV_H_tarn51c","LIB_pzKpfwIV_B_tarn51c","LIB_pzKpfwIV_E_tarn51d","LIB_pzKpfwIV_E_1","LIB_SdKfz124","LIB_StuG_III_G"];
LT_ITA_para_tank_weightArray = [];
LT_ITA_para_heli = [];
LT_ITA_para_heli_weightArray = [];
LT_ITA_para = [LT_ITA_para_units,LT_ITA_para_car,LT_ITA_para_ifv,LT_ITA_para_tank,LT_ITA_para_heli];
LT_ITA_para_weights = [];

// ## Japan ##
// Japan Army Pacific
LT_JAP_ArmyPAC_units = ["fow_s_ija_nco","fow_s_ija_rifleman","fow_s_ija_type99_asst","fow_s_ija_type99_gunner","fow_s_ija_rifleman_at","fow_s_ija_officer","fow_s_ija_medic"];
LT_JAP_ArmyPAC_units_weightArray = [];
LT_JAP_ArmyPAC_car = ["LIB_Kfz1_MG42_sernyt","fow_v_type97_truck_open_ija","fow_v_type97_truck_ija"];
LT_JAP_ArmyPAC_car_weightArray = [];
LT_JAP_ArmyPAC_ifv = ["LIB_SdKfz251","LIB_SdKfz251_FFV"];
LT_JAP_ArmyPAC_ifv_weightArray = [];
LT_JAP_ArmyPAC_tank = ["fow_ija_type95_HaGo_2_ija","fow_ija_type95_HaGo_3_ija"];
LT_JAP_ArmyPAC_tank_weightArray = [];
LT_JAP_ArmyPAC_heli = [];
LT_JAP_ArmyPAC_heli_weightArray = [];
LT_JAP_ArmyPAC = [LT_JAP_ArmyPAC_units,LT_JAP_ArmyPAC_car,LT_JAP_ArmyPAC_ifv,LT_JAP_ArmyPAC_tank,LT_JAP_ArmyPAC_heli];
LT_JAP_ArmyPAC_weights = [];

// Japan Army Jungle
LT_JAP_ArmyJung_units = ["fow_s_ija_snlf_nco","fow_s_ija_snlf_rifleman","fow_s_ija_snlf_type99_asst","fow_s_ija_snlf_type99_gunner","fow_s_ija_snlf_rifleman_at","fow_s_ija_snlf_officer","fow_s_ija_snlf_medic","fow_s_ija_f_nco","fow_s_ija_f_rifleman","fow_s_ija_f_type99_asst","fow_s_ija_f_type99_gunner","fow_s_ija_f_rifleman_at","fow_s_ija_f_officer","fow_s_ija_f_medic"];
LT_JAP_ArmyJung_units_weightArray = [];
LT_JAP_ArmyJung_car = ["LIB_Kfz1_MG42_sernyt","fow_v_type97_truck_open_ija","fow_v_type97_truck_ija"];
LT_JAP_ArmyJung_car_weightArray = [];
LT_JAP_ArmyJung_ifv = ["LIB_SdKfz251","LIB_SdKfz251_FFV"];
LT_JAP_ArmyJung_ifv_weightArray = [];
LT_JAP_ArmyJung_tank = ["fow_ija_type95_HaGo_2_ija","fow_ija_type95_HaGo_3_ija"];
LT_JAP_ArmyJung_tank_weightArray = [];
LT_JAP_ArmyJung_heli = [];
LT_JAP_ArmyJung_heli_weightArray = [];
LT_JAP_ArmyJung = [LT_JAP_ArmyJung_units,LT_JAP_ArmyJung_car,LT_JAP_ArmyJung_ifv,LT_JAP_ArmyJung_tank,LT_JAP_ArmyJung_heli];
LT_JAP_ArmyJung_weights = [];
