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
					text = "US Airborn";
					data = [["U_LIB_US_AB_Uniform_M43","U_LIB_US_AB_Uniform_M43_Medic"],["V_LIB_US_AB_Vest_Asst_MG","V_LIB_US_AB_Vest_BAR","V_LIB_US_AB_Vest_Carbine","V_LIB_US_AB_Vest_Garand","V_LIB_US_AB_Vest_Grenadier","V_LIB_US_AB_Vest_Thompson"],["B_LIB_US_M36","B_LIB_US_M36_Bandoleer","B_LIB_US_M36_rocketbag_empty","B_LIB_US_M36_Rope"],["H_LIB_US_AB_Helmet_Clear_1","H_LIB_US_AB_Helmet","H_LIB_US_AB_Helmet_Jump_1",,"H_LIB_US_AB_Helmet_Medic_1","H_LIB_US_AB_Helmet_Plain_1"],"B_LIB_US_Radio_ACRE2"];
					default = 1;
					};
				class US_Airborn_Winter
				{
					text = "US Airborn (Winter)";
					data = ["U_LIB_US_AB_Uniform_M42_W",["V_LIB_US_AB_Vest_Asst_MG","V_LIB_US_AB_Vest_BAR","V_LIB_US_AB_Vest_Carbine","V_LIB_US_AB_Vest_Garand","V_LIB_US_AB_Vest_Grenadier","V_LIB_US_AB_Vest_Thompson"],["B_LIB_US_Backpack_Bandoleer","B_LIB_US_Backpack_Rocketbag_Empty","B_LIB_US_Backpack_Mk2"],["H_LIB_US_Helmet_w","H_LIB_US_Helmet_Net_w","H_LIB_US_Helmet_Med_w"],"B_LIB_US_Radio_ACRE2"];
					};
				class US_Army_Europe
				{
					text = "US Army (Europe)";
					data = ["fow_u_us_m41_01_private",["fow_v_us_garand_bandoleer","fow_v_us_medic""fow_v_us_thompson"],"fow_b_us_m1928",["fow_h_us_m1","fow_h_us_m1_medic","fow_h_us_m1_net"],"B_LIB_US_Radio_ACRE2"];
					};
				class US_Army_Desert
					{
					 text = "US Army (Desert)";
					 data = ["fow_u_us_m37_02_private",["fow_v_us_garand_bandoleer","fow_v_us_medic""fow_v_us_thompson"],["fow_b_us_m1944","fow_b_us_m1944_ropes"],["fow_h_us_m1","fow_h_us_m1_Medic"],"B_LIB_US_Radio_ACRE2"];
					 };
				class US_Army_Pacific
				{
					text = "US Army (Pacific)";
					data = ["fow_u_us_hbt_01_private",["fow_v_us_garand_bandoleer","fow_v_us_medic""fow_v_us_thompson"],"fow_b_us_m1928_02",["fow_h_us_m1","fow_h_us_m1_medic","fow_h_us_m1_net"],"B_LIB_US_Radio_ACRE2"];
					};
				class USMC_Pacific
				{
					text = "USMC (Pacific)";
					data = ["fow_u_usmc_p41_01_private",["fow_v_us_garand_bandoleer","fow_v_us_medic""fow_v_us_thompson"],"fow_b_usmc_m1928_02",["fow_h_us_m1","fow_h_us_m1_medic","fow_h_us_m1_net"],"B_LIB_US_Radio_ACRE2"];
					};
				class UK_Airborn
				{
					text = "UK Airborn";
					data = ["fow_u_uk_parasmock",["fow_v_uk_para_base_green","fow_v_uk_para_bren_green","fow_v_uk_para_sten_green"],["fow_b_uk_p37_blanco","fow_b_uk_p37_blanco_shovel"],["fow_h_uk_mk2_para","fow_h_uk_mk2_para_camo"],"fow_b_uk_p37_radio_blanco"];
					};
				class UK_Army_Europe
				{
					text = "UK Army (Europe)";
					data = ["fow_u_uk_bd40_01_private",["fow_v_uk_base_green","fow_v_uk_bren_green","fow_v_uk_officer_green"],["fow_b_uk_p37_blanco","fow_b_uk_p37_blanco_shovel"],["fow_h_uk_mk2","fow_h_uk_mk2_net","fow_h_uk_mk2_net_camo"],"fow_b_uk_p37_radio_blanco"];
					};
				class UK_Army_Desert
				{
				  text = "UK Army (Desert)";
				  data = ["fow_u_uk_bd40_seac_02_private",["fow_v_uk_base","fow_v_uk_bren","fow_v_uk_sten"],["fow_b_uk_p37","fow_b_uk_p37_radio","fow_b_uk_p37","fow_b_uk_p37_shovel"],["fow_h_uk_mk2","fow_h_uk_mk2_net"],"fow_b_uk_p37_radio"];
				  };
				class Prinses_Irene
					{
					text = "Prinses Irene";
					data = ["fow_u_uk_bd40_pib_01_private",["fow_v_uk_base_green","fow_v_uk_bren_green","fow_v_uk_officer_green"],["fow_b_uk_p37_blanco","fow_b_uk_p37_blanco_shovel"],["fow_h_uk_mk2","fow_h_uk_mk2_net","fow_h_uk_mk2_net_camo"],"fow_b_uk_p37_radio_blanco"];
					};
				class Polish_Commandos
				{
					text = "Polish Commandos";
					data = ["fow_u_uk_bd40_pol_01_commando_private",["fow_v_uk_para_base","fow_v_uk_para_bren","fow_v_uk_para_sten"],"fow_b_uk_bergenpack","fow_h_uk_beret_commando_pol","fow_b_uk_p37_radio"];
					};
				class Red_Army_Winter
				{
					text = "Red Army (Winter)";
					data = [  "U_LIB_SOV_Strelok_2_w",["V_LIB_SOV_RA_MosinBelt","V_LIB_SOV_RAZV_PPShBelt"],["B_LIB_SOV_RA_Rucksack2_Green","B_LIB_SOV_RA_Medicalbag_empty"],["H_LIB_SOV_RA_Helmet","H_LIB_SOV_Ushanka"],"B_LIB_SOV_RA_Radio_ACRE2"];
					};
				class Red_Army_Summer
				{
					text = "Red Army (Summer)";
					data = ["U_LIB_SOV_Strelok_summer",["V_LIB_SOV_RA_MosinBelt","V_LIB_SOV_RAZV_PPShBelt"],["B_LIB_SOV_RA_Rucksack2_Green","B_LIB_SOV_RA_Medicalbag_empty"],["H_LIB_SOV_RA_Helmet","H_LIB_SOV_Ushanka"],"B_LIB_SOV_RA_Radio_ACRE2"];
					};
				class Germany_Heer
				{
					text = "Germany (Heer)";
				  data = ["fow_u_ger_m43_01_private",["fow_v_heer_k98","fow_v_heer_mg","fow_v_heer_mp40"],"B_LIB_GER_Tonister34_cowhide","B_LIB_GER_MedicBackPack_Empty","B_LIB_GER_Backpack"],["fow_h_ger_m40_heer_01","fow_h_ger_m40_heer_01_net"],"B-LIB_GER_Radio_ACRE2"];
					};
				class Germany_Arikakorps
				{
					text = "Germany (Afrikakorps)";
					data = ["U_LIB_DAK_Soldier",["V_LIB_DAK_VestKar98","V_LIB_DAK_VestMP40","V-LIB_DAK_VestMG","V-LIB_DAK_PioneerVest"],["B_LIB_DAK_A_frame","B_LIB_GER_BackPack"],["H_LIB_DAK_Helmet","H_LIB_DAK_Helmet_Glasses","H_LIB_DAK_Helmet_Net"],"B_LIB_GER_Radio_ACRE2"];
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
