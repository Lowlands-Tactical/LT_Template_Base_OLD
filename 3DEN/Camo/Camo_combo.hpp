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
				class US_Airborn
				{
					text = "USA - Airborn";
					data = [
					"U_LIB_US_AB_Uniform_M43",
					["V_LIB_US_AB_Vest_Asst_MG","V_LIB_US_AB_Vest_BAR","V_LIB_US_AB_Vest_Carbine","V_LIB_US_AB_Vest_Garand","V_LIB_US_AB_Vest_Grenadier","V_LIB_US_AB_Vest_Thompson"],
					["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_rocketbag_empty","B_LIB_US_M36_Rope"],
					["H_LIB_US_AB_Helmet_Clear_1","H_LIB_US_AB_Helmet","H_LIB_US_AB_Helmet_Jump_1","H_LIB_US_AB_Helmet_Plain_1"],
					"B_LIB_US_Radio_ACRE2",
					["U_LIB_US_AB_Uniform_M42_Medic","V_LIB_US_Vest_Medic","B_LIB_US_M36","H_LIB_US_AB_Helmet_Medic_1"]
								];
					default = 1;
				};
				class US_Airborn_Winter
				{
					text = "USA - Airborn (Winter)";
					data = [
					"U_LIB_US_AB_Uniform_M42_W",
					["V_LIB_US_AB_Vest_Asst_MG","V_LIB_US_AB_Vest_BAR","V_LIB_US_AB_Vest_Carbine","V_LIB_US_AB_Vest_Garand","V_LIB_US_AB_Vest_Grenadier","V_LIB_US_AB_Vest_Thompson"],
					["B_LIB_US_Backpack_Bandoleer","B_LIB_US_Backpack_Rocketbag_Empty","B_LIB_US_Backpack_Mk2"],
					["H_LIB_US_Helmet_w","H_LIB_US_Helmet_Net_w"],
					"B_LIB_US_Radio_ACRE2",
					["U_LIB_US_AB_Uniform_M42_W","V_LIB_US_Vest_Medic","B_LIB_US_M36","H_LIB_US_Helmet_Med_w"]
								];
				};
				class US_Army_Europe
				{
					text = "USA - Army (Europe)";
					data = [
					"fow_u_us_m41_01_private",
					["fow_v_us_garand_bandoleer","fow_v_us_medic","fow_v_us_thompson"],
					"fow_b_us_m1928",
					["fow_h_us_m1","fow_h_us_m1_net"],
					"B_LIB_US_Radio_ACRE2",
					["fow_u_us_m37_01_private","fow_v_us_medic","fow_b_us_m1928_medic","fow_h_us_m1_medic"]
								];
					};
  				class US_Army_Europe_W
  				{
  					text = "USA - Army Winter (Europe)";
  					data = [
  					"fow_u_us_m41_01_private",
  					["fow_v_us_garand_bandoleer","fow_v_us_medic","fow_v_us_thompson"],
  					"fow_b_us_m1928",
  					["fow_h_us_m1","fow_h_us_m1_net"],
  					"B_LIB_US_Radio_ACRE2",
  					["U_LIB_US_Private_w","fow_v_us_medic","fow_b_us_m1928_medic","fow_h_us_m1_medic"]
  								];
  					};
				class US_Army_Desert
				{
					 text = "USA - Army Desert";
					 data = [
					 "U_LIB_US_NAC_Uniform",
					 ["V_LIB_US_Vest_Carbine_nco","V_LIB_US_Vest_Garand","V_LIB_US_Vest_Bar"],
					 ["B_LIB_US_Backpack","B_LIB_US_Backpack_RocketBag","B_LIB_US_Backpack_Bandoleer"],
					 ["H_LIB_US_Helmet_Cap","H_LIB_US_Helmet",],
					 "B_LIB_US_Radio_ACRE2",
 					 ["U_LIB_US_NAC_Med","V_LIB_US_Vest_Medic","B_LIB_US_MedicBackpack","H_LIB_US_Helmet_Med"]
					 				];
				 };
 				class US_Army_Desert_W
 				{
 					 text = "USA - Army Winter (Desert)";
 					 data = [
 					 "fow_u_us_m37_02_private",
 					 ["fow_v_us_garand_bandoleer","fow_v_us_medic","fow_v_us_thompson"],
 					 ["fow_b_us_m1944","fow_b_us_m1944_ropes"],
 					 "fow_h_us_m1",
 					 "B_LIB_US_Radio_ACRE2",
  				 ["U_LIB_US_Private_w","fow_v_us_medic","fow_b_us_m1928_medic","fow_h_us_m1_medic"]
 					 				];
 				 };
				class US_Army_Pacific
				{
					text = "USA - Army (Pacific)";
					data = [
					"fow_u_us_hbt_01_private",
					["fow_v_us_garand_bandoleer","fow_v_us_medic","fow_v_us_thompson"],
					"fow_b_us_m1928_02",
					["fow_h_us_m1","fow_h_us_m1_medic","fow_h_us_m1_net"],
					"B_LIB_US_Radio_ACRE2",
					["fow_u_us_m37_02_private","fow_v_us_medic","fow_b_us_m1928_medic","fow_h_us_m1_medic"]
								];
				};
				class USMC_Pacific
				{
					text = "USA - USMC (Pacific)";
					data = [
					"fow_u_usmc_p41_01_private",
					["fow_v_us_garand_bandoleer","fow_v_us_medic","fow_v_us_thompson"],
					"fow_b_usmc_m1928_02",
					["fow_h_us_m1","fow_h_us_m1_medic","fow_h_us_m1_net"],
					"B_LIB_US_Radio_ACRE2",
					["fow_u_usmc_p41_02_private","fow_v_usmc_garand","fow_b_usmc_m1928_medic","fow_h_us_m1_medic"]
								];
				};
				class UK_Airborn
				{
					text = "UK - Airborn";
					data = [
					"fow_u_uk_parasmock",
					["fow_v_uk_para_base_green","fow_v_uk_para_bren_green","fow_v_uk_para_sten_green"],
					["fow_b_uk_p37_blanco","fow_b_uk_p37_blanco_shovel"],
					["fow_h_uk_mk2_para","fow_h_uk_mk2_para_camo"],
					"fow_b_uk_p37_radio_blanco",
					["fow_u_uk_parasmock","fow_v_uk_para_base_green","fow_b_uk_bergenpack_medic","fow_h_uk_mk2_para_camo"]
								];
				};
				class UK_Airborn_w
				{
					text = "UK - Airborn (Winter)";
					data = [
					"U_LIB_UK_DenisonSmock_w",
					["V_LIB_UK_P37_Rifleman_Blanco","V_LIB_UK_P37_Heavy_Blanco","V_LIB_UK_P37_Gasmask_Blanco","V_LIB_UK_P37_Sten_Blanco","V_LIB_UK_P37_Rifleman"],
					["B_LIB_UK_HSack_Blanco_AT","B_LIB_UK_HSack_Blanco","B_LIB_UK_HSack_Blanco_Tea"],
					"H_LIB_UK_Para_Helmet_Mk2_Net_w",
					"fow_b_uk_p37_radio_blanco",
					["U_LIB_UK_DenisonSmock_w","V_LIB_UK_P37_Rifleman_Blanco","B_LIB_UK_HSack_Blanco_Medic","H_LIB_UK_Para_Helmet_Mk2_Net_w","V_LIB_UK_P37_Officer_Blanco"]
								];
				};
				class UK_Army_Europe
				{
					text = "UK - Army (Europe)";
					data = [
					"fow_u_uk_bd40_01_private",
					["fow_v_uk_base_green","fow_v_uk_bren_green","fow_v_uk_officer_green"],
					["fow_b_uk_p37_blanco","fow_b_uk_p37_blanco_shovel"],
					["fow_h_uk_mk2","fow_h_uk_mk2_net","fow_h_uk_mk2_net_camo"],
					"fow_b_uk_p37_radio_blanco",
					["fow_u_uk_bd40_01_private","fow_v_uk_base_green","fow_b_uk_p37_medic","fow_h_us_m1_medic"]
								];
				};
				class UK_Army_Europe_w
				{
					text = "UK - Army Winter (Europe)";
					data = [
					"U_LIB_UK_P37_w",
					["V_LIB_UK_P37_Rifleman_Blanco","V_LIB_UK_P37_Heavy_Blanco","V_LIB_UK_P37_Gasmask_Blanco","V_LIB_UK_P37_Sten_Blanco","V_LIB_UK_P37_Rifleman"],
					["B_LIB_UK_HSack_Blanco_AT","B_LIB_UK_HSack_Blanco","B_LIB_UK_HSack_Blanco_Tea"],
					["H_LIB_UK_Helmet_Mk2_w","H_LIB_UK_Helmet_Mk2_Cover_w"],
					"fow_b_uk_p37_radio_blanco",
					["U_LIB_UK_P37_w","V_LIB_UK_P37_Rifleman_Blanco","B_LIB_UK_HSack_Blanco","H_LIB_UK_Helmet_Mk2_w"]
								];
				};
				class UK_Army_Dessert
				{
					text = "UK - Army (Dessert)";
					data = [
					"U_LIB_UK_KhakiDrills",
					["V_LIB_UK_P37_Gasmask","V_LIB_UK_P37_Holster","V_LIB_UK_P37_Sten"],
					["B_LIB_UK_HSack","B_LIB_UK_HSack_Cape","B_LIB_UK_HSack_Tea"],
					["H_LIB_UK_Helmet_Mk2_Desert","H_LIB_UK_Helmet_Mk2_Cover"],
					"fow_b_uk_p37_radio",
					["U_LIB_UK_KhakiDrills","fow_v_uk_base_green","B_LIB_UK_HSack_Medic","H_LIB_UK_Helmet_Mk2_Desert"]
								];
				};
				class UK_South_EA
				{
				  text = "UK - South East Asia";
				  data = [
					"fow_u_uk_bd40_seac_02_private",
					["fow_v_uk_base","fow_v_uk_bren","fow_v_uk_sten"],
					["fow_b_uk_p37","fow_b_uk_p37","fow_b_uk_p37_shovel"],
					["fow_h_uk_mk2","fow_h_uk_mk2_net"],
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_seac_01_private","fow_v_uk_base_green","fow_b_uk_p37_medic","fow_h_us_m1_medic"]
								];
			  };
				class UK_Commandos
				{
					text = "UK - Commandos";
					data = [
					"fow_u_uk_bd40_pol_01_commando_private",
					["fow_v_uk_para_base","fow_v_uk_para_bren","fow_v_uk_para_sten"],
					"fow_b_uk_bergenpack",
					"fow_h_uk_beret_commando_pol",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_pol_01_commando_private","fow_v_uk_para_base","fow_b_uk_bergenpack_medic","fow_h_uk_beret_commando_pol"]
								];
				};
				class Prinses_Irene
				{
					text = "Prinses Irene";
					data = [
					"fow_u_uk_bd40_pib_01_private",
					["fow_v_uk_base_green","fow_v_uk_bren_green","fow_v_uk_officer_green"],
					["fow_b_uk_p37_blanco","fow_b_uk_p37_blanco_shovel"],
					["fow_h_uk_mk2","fow_h_uk_mk2_net",
					"fow_h_uk_mk2_net_camo"],
					"fow_b_uk_p37_radio_blanco",
					["MEDIC_UNI","MEDIC_VEST","MEDIC_BACKPACK","MEDIC_HEMLET"]
								];
				};
				class CAN_Armay
				{
				  text = "Canadian Army";
				  data = [
					"fow_u_uk_bd40_can_01_private",
					"fow_v_uk_base_green",
					"fow_b_uk_p37",
					"fow_h_uk_mk2_net",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_can_01_private","fow_v_uk_base_green","fow_b_uk_p37_medic","fow_h_us_m1_medic"]
								];
			  };
				class Belgian_Army
				{
					text = "Belgian Army";
					data = [
					"fow_u_uk_bd40_bp_01_private",
					"fow_v_uk_base_green",
					"fow_b_uk_p37",
					"fow_h_uk_mk2_net",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_bp_01_private","fow_v_uk_base_green","fow_b_uk_p37_medic","fow_h_us_m1_medic"]
								];
				};
				class AUS_Desert
				{
				  text = "Aussies Army";
				  data = [
					"fow_u_aus_m37_03_private",
					"fow_v_uk_base_green",
					"fow_b_uk_p37",
					"fow_h_uk_mk2_net",
					"fow_b_uk_p37_radio",
					["fow_u_aus_m37_03_private","fow_v_uk_base_green","fow_b_uk_p37","fow_h_us_m1_medic"]
								];
			  };
				class Commandos_Kieffer
				{
					text = "Commandos - Kieffer";
					data = [
					"fow_u_uk_bd40_kieffer_01",
					["fow_v_uk_para_base","fow_v_uk_para_bren","fow_v_uk_para_sten"],
					"fow_b_uk_bergenpack",
					"fow_h_uk_beret_commando_kieffer",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_kieffer_01","fow_v_uk_para_base","fow_b_uk_bergenpack_medic","fow_h_uk_beret_commando_kieffer"]
								];
				};
				class Commandos_NL
				{
					text = "Commandos - Netherlands";
					data = [
					"fow_u_uk_bd40_nl_01_commando_private",
					["fow_v_uk_para_base","fow_v_uk_para_bren","fow_v_uk_para_sten"],
					"fow_b_uk_bergenpack",
					"fow_h_uk_beret_commando_nl",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_nl_01_commando_private","fow_v_uk_para_base","fow_b_uk_bergenpack_medic","fow_h_uk_beret_commando_nl"]
								];
				};
				class Commandos_Norway
				{
					text = "Commandos - Norway";
					data = [
					"fow_u_uk_bd40_nor_01_commando_private",
					["fow_v_uk_para_base","fow_v_uk_para_bren","fow_v_uk_para_sten"],
					"fow_b_uk_bergenpack",
					"fow_h_uk_beret_commando_nor",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_nor_01_commando_private","fow_v_uk_para_base","fow_b_uk_bergenpack_medic","fow_h_uk_beret_commando_nor"]
								];
				};
				class Commandos_Polish
				{
					text = "Commandos - Polish";
					data = [
					"fow_u_uk_bd40_pol_01_commando_private",
					["fow_v_uk_para_base","fow_v_uk_para_bren","fow_v_uk_para_sten"],
					"fow_b_uk_bergenpack",
					"fow_h_uk_beret_commando_pol",
					"fow_b_uk_p37_radio",
					["fow_u_uk_bd40_pol_01_commando_private","fow_v_uk_para_base","fow_b_uk_bergenpack_medic","fow_h_uk_beret_commando_pol"]
								];
				};
				class Red_Army_Winter
				{
					text = "Red Army (Winter)";
					data = [
					["U_LIB_SOV_Strelok_2_w","U_LIB_SOV_Razvedchik_mix_w","U_LIB_SOV_Razvedchik_am_w"],
					["V_LIB_SOV_RA_MosinBelt","V_LIB_SOV_RAZV_PPShBelt","V_LIB_SOV_IShBrVestPPShMag","V_LIB_SOV_RAZV_PPShBelt_Mag"],
					["B_LIB_SOV_RA_Rucksack2","B_LIB_SOV_RA_RucksackMines2","B_LIB_SOV_RA_GasBag","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel"],
					["H_LIB_SOV_RA_Helmet_w","H_LIB_SOV_Ushanka"],
					"B_LIB_SOV_RA_Radio_ACRE2",
					["MEDIC_UNI","MEDIC_VEST","B_LIB_SOV_RA_MedicalBag","MEDIC_HEMLET"]
								];
				};
				class Red_Army_Summer
				{
					text = "Red Army (Summer)";
					data = [
					["U_LIB_SOV_Strelok_summer","U_LIB_SOV_Strelokart"],
					["V_LIB_SOV_RA_MosinBelt","V_LIB_SOV_RAZV_PPShBelt","V_LIB_SOV_IShBrVestPPShMag"],
					["B_LIB_SOV_RA_Rucksack2_Green","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green","B_LIB_SOV_RA_GasBag"],
					["H_LIB_SOV_RA_Helmet","H_LIB_SOV_RA_PrivateCap"],
					"B_LIB_SOV_RA_Radio_ACRE2",
					["U_LIB_SOV_Strelok","V_LIB_SOV_RA_MosinBelt","B_LIB_SOV_RA_MedicalBag","H_LIB_SOV_RA_PrivateCap"]
								];
				};
				class Red_NKVD
				{
					text = "Red NVKD";
					data = [
					"U_LIB_NKVD_Strelok",
					["V_LIB_SOV_RA_PPShBelt","V_LIB_SOV_RA_MosinBelt"],
					["B_LIB_SOV_RA_GasBag","B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel"],
					["H_LIB_NKVD_OfficerCap","H_LIB_NKVD_PrivateCap"],
					"B_LIB_SOV_RA_Radio_ACRE2",
					["U_LIB_NKVD_Leutenant","V_LIB_SOV_RA_OfficerVest","B_LIB_SOV_RA_MedicalBag_Empty","H_LIB_NKVD_OfficerCap"]
								];
				};
				class Germany_Europe
				{
					text = "Germany - Europe";
				  data = [
					"fow_u_ger_m43_01_private",
					["fow_v_heer_k98","fow_v_heer_mg","fow_v_heer_mp40"],
					["fow_b_heer_aframe","fow_b_grenadebag","fow_b_ammoboxes_mg34_42","fow_b_ammoboxes"],
					["fow_h_ger_m40_heer_01","fow_h_ger_m40_heer_01_net"],
					"B_LIB_GER_Radio_ACRE2",
					["fow_u_ger_m43_01_private","fow_v_heer_k98","fow_b_tornister_medic","fow_h_ger_m40_heer_02"]
								];
				};
				class Germany_Europe_W
				{
					text = "Germany - Europe Winter";
				  data = [
					["U_LIB_GER_Soldier_camo_w","U_LIB_GER_MG_schutze_w","U_LIB_GER_Funker_w","U_LIB_GER_Recruit_w"],
					["V_LIB_GER_VestMG","V_LIB_GER_VestKar98","fow_v_heer_mp40"],
					["B_LIB_GER_A_frame","B_LIB_GER_A_frame_zeltbahn","B_LIB_GER_SapperBackpack_empty"],
					["H_LIB_GER_HelmetCamo_w","H_LIB_GER_Helmet_w"],
					"B_LIB_GER_Radio_ACRE2",
					["U_LIB_GER_Medic_w","V_LIB_GER_VestKar98","B_LIB_GER_MedicBackpack","H_LIB_GER_Helmet_w"]
								];
				};
				class Germany_Arikakorps
				{
					text = "Germany - Afrikakorps";
					data = [
					"U_LIB_DAK_Soldier",
					["V_LIB_DAK_VestKar98","V_LIB_DAK_VestMP40","V_LIB_GER_PioneerVest","V_LIB_DAK_PioneerVest"],
					["B_LIB_DAK_A_frame","B_LIB_GER_BackPack"],
					["H_LIB_DAK_Helmet","H_LIB_DAK_Helmet_Glasses","H_LIB_DAK_Helmet_Net"],
					"B_LIB_GER_Radio_ACRE2",
					["MEDIC_UNI","MEDIC_VEST","MEDIC_BACKPACK","MEDIC_HEMLET"]
								];
				};
				class Germany_Sturmtroopers
				{
					text = "Germany - Sturmtroopers";
				  data = [
					["U_LIB_ST_Soldier_E44","U_LIB_ST_Unterofficier_E44","U_LIB_ST_MGunner_E44","U_LIB_ST_Soldier_E44_Camo"],
					["V_LIB_GER_VestKar98","V_LIB_GER_VestMP40","V_LIB_GER_PioneerVest","V_LIB_GER_VestMG","V_LIB_GER_VestSTG"],
					["B_LIB_GER_A_frame","B_LIB_GER_SapperBackpack","fow_b_ammoboxes_mg34_42","fow_b_ammoboxes"],
					["H_LIB_GER_Helmet","H_LIB_ST_Helmet2","H_LIB_GER_Helmet_painted"],
					"B_LIB_GER_Radio_ACRE2",
					["U_LIB_ST_Medic_E44","V_LIB_GER_VestKar98","B_LIB_GER_MedicBackpack","H_LIB_GER_Helmet_Medic"]
								];
				};
				class Germany_Fallschirmjager
				{
					text = "Germany - (Airborn) Fallschirmjager";
					data = [
					"fow_u_ger_fall_01_private",
					["fow_v_fall_bandoleer","fow_v_heer_k98_light","V_fow_v_heer_mp40","V_fow_v_heer_mg","fow_v_heer_mp40_nco"],
					["fow_b_ammoboxes","fow_b_grenadebag"],
					"fow_h_ger_m40_fall_01_camo",
					"fow_b_torn_radio",
					["fow_u_ger_fall_01_private","fow_v_fall_bandoleer","fow_b_tornister_medic","fow_h_ger_m40_fall_01_camo"]
								];
				};
				class Germany_Fallschirmjager_Splintertarn
				{
					text = "Germany - (Airborn) Fallschirmjager Splintertarn";
					data = [
					"fow_u_ger_fall_03_private",
					["fow_v_fall_bandoleer","fow_v_heer_k98_light","V_fow_v_heer_mp40","V_fow_v_heer_mg","fow_v_heer_mp40_nco"],
					["fow_b_ammoboxes","fow_b_grenadebag"],
					"fow_h_ger_m40_fall_01_camo",
					"fow_b_torn_radio",
					["fow_u_ger_fall_03_private","fow_v_fall_bandoleer","fow_b_tornister_medic","fow_h_ger_m40_fall_01_camo"]
								];
				};
				class Germany_Fallschirmjager_Sumpftarn
				{
					text = "Germany - (Airborn) Fallschirmjager Sumpftarn";
					data = [
					"fow_u_ger_fall_04_private",
					["fow_v_fall_bandoleer","fow_v_heer_k98_light","V_fow_v_heer_mp40","V_fow_v_heer_mg","fow_v_heer_mp40_nco"],
					["fow_b_ammoboxes","fow_b_grenadebag"],
					"fow_h_ger_m40_fall_01_camo",
					"fow_b_torn_radio",
					["fow_u_ger_fall_04_private","fow_v_fall_bandoleer","fow_b_tornister_medic","fow_h_ger_m40_fall_01_camo"]
								];
				};
				class ITA_Fallschirmjager
				{
					text = "Italian - (Airborn) Fallschirmjager";
					data = [
					"fow_u_ger_fall_02_private",
					["fow_v_fall_bandoleer","fow_v_heer_k98_light","V_fow_v_heer_mp40","V_fow_v_heer_mg","fow_v_heer_k98_ass"],
					["fow_b_ammoboxes","fow_b_grenadebag","fow_b_ammoboxes_mg34_42"],
					"fow_h_ger_m40_fall_01_camo",
					"fow_b_torn_radio",
					["fow_u_ger_fall_02_private","fow_v_fall_bandoleer","fow_b_tornister_medic","fow_h_ger_m40_fall_01_camo"]
								];
				};
				class Japan_Jungle
				{
					text = "Japan - Jungle Army";
					data = [
					"fow_u_ija_type98_snlf",
					["fow_v_ija_rifle","fow_v_ija_mg","fow_v_ija_grenadier","fow_v_ija_officer","fow_v_ija_nco"],
					["fow_b_ija_ammobox_wood","fow_b_ija_backpack"],
					"fow_h_ija_type90_snlf",
					"fow_b_torn_radio",
					["fow_u_ija_type98_snlf","fow_v_ija_medic","fow_b_ija_backpack_medic","fow_h_ija_type90_snlf"]
								];
				};
				class Japan_Pacific
				{
					text = "Japan - Pacific Army";
					data = [
					"fow_u_ija_type98",
					["fow_v_ija_rifle","fow_v_ija_mg","fow_v_ija_grenadier","fow_v_ija_officer","fow_v_ija_nco"],
					["fow_b_ija_ammobox_metal","fow_b_ija_backpack_foliage"],
					"fow_h_ija_type90",
					"fow_b_torn_radio",
					["fow_u_ija_type98","fow_v_ija_medic","fow_b_ija_backpack_medic","fow_h_ija_type90"]
								];
				};
				class Japan_Pacific_Foilage
				{
					text = "Japan - Pacific Army /w Foilage";
					data = [
					"fow_u_ija_type98_foliage",
					["fow_v_ija_rifle","fow_v_ija_mg","fow_v_ija_grenadier","fow_v_ija_officer","fow_v_ija_nco"],
					["fow_b_ija_ammobox_metal","fow_b_ija_backpack"],
					"fow_h_ija_type90_foliage",
					"fow_b_torn_radio",
					["fow_u_ija_type98_foliage","fow_v_ija_medic","fow_b_ija_backpack_medic","fow_h_ija_type90_foliage"]
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
