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
					data = ["None","None","None","None","None","None",["None","None","None","None","None"],["None","None","None","None","None"]];
					default = 1;
				};
				class Imperial_Guard
				{
					text = "Imperial Guard";
					data = [
/* Uniform */		"ML700_Cadian_Uniform1",
/* Vest */			["ML700_Cadian_Armor1","ML700_Cadian_Armor2","ML700_Cadian_Armor3","ML700_Cadian_Armor4","ML700_Cadian_Armor5"],
/* Backpack */	"TIOW_CadBackpack",
/* Helmet */		"ML700_Cadian_Helmet1",
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Masks */			"None",
/* Officer */		["ML700_Cadian_Uniform1","ML700_Cadian_Armor1","None","ML700_Cadian_OfficerCap","None"],
/* Commisar */	["U_TIOW_Comissar","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_Cadian_667th
				{
					text = "Imperial - Cadian 667th (Winter)";
					data = [
/* Uniform */		"CadUni667th",
/* Vest */			["Cad_Gear667th","Cad_KasrGear667th","TIOW_IG_Sergeant_Armour_667"],
/* Backpack */	["TIOW_CadBackpack_Winter","TIOW_CadKasrkinBackpack_667th"],
/* Helmet */		["Cad_InfBreather_Helm667th","Cad_Inf_Helm667th"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Masks */			"None",
/* Officer */		["U_TIOW_Captain_667_O","TIOW_IG_Officer_Armour_667","None","TIOW_IG_Officer_Cap1_667","None"],
/* Commisar */	["U_TIOW_Comissar_Winter","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_Cadian_700th
				{
					text = "Imperial - Cadian 700th (Urban)";
					data = [
/* Uniform */		"CadUni700th",
/* Vest */			["Cad_Gear700th","Cad_KasrGear700th","TIOW_IG_Sergeant_Armour_700"],
/* Backpack */	["TIOW_CadBackpack","TIOW_CadKasrkinBackpack_700th"],
/* Helmet */		["Cad_InfBreather_Helm700th","Cad_Inf_Helm700th"],
/* Radiobag */	"TIOW_Vox_Caster_Red",
/* Masks */			"None",
/* Officer */		["U_TIOW_Captain_700","TIOW_IG_Officer_Armour_700","None","TIOW_IG_Officer_Cap1_700","None"],
/* Commisar */	["U_TIOW_Comissar_Brown","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_Cadian_776th
				{
					text = "Imperial - Cadian 776th (Black)";
					data = [
/* Uniform */		"CadUni776th",
/* Vest */			["Cad_Gear776th","Cad_KasrGear776th","TIOW_IG_Sergeant_Armour_776"],
/* Backpack */	["TIOW_CadBackpack","TIOW_CadKasrkinBackpack_776th"],
/* Helmet */		["Cad_InfBreather_Helm776th","Cad_Inf_Helm776th"],
/* Radiobag */	"TIOW_Vox_Caster_Black",
/* Masks */			"None",
/* Officer */		["U_TIOW_Captain_776_I","TIOW_IG_Officer_Armour_776","None","TIOW_IG_Officer_Cap1_776","None"],
/* Commisar */	["U_TIOW_Comissar","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_Cadian_836th
				{
					text = "Imperial - Cadian 836th (Dessert)";
					data = [
/* Uniform */		"CadUni836th",
/* Vest */			["Cad_Gear836th","Cad_KasrGear836th","TIOW_IG_Sergeant_Armour_836"],
/* Backpack */	["TIOW_CadBackpack","TIOW_CadKasrkinBackpack_836th"],
/* Helmet */		["Cad_InfBreather_Helm836th","Cad_Inf_Helm836th"],
/* Radiobag */	"TIOW_Vox_Caster_Green",
/* Masks */			"None",
/* Officer */		["U_TIOW_Captain_836_I","TIOW_IG_Officer_Armour_836","None","TIOW_IG_Officer_Cap1_836","None"],
/* Commisar */	["U_TIOW_Comissar_Desert","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_Valhallans
				{
					text = "Imperial - Valhallans";
					data = [
/* Uniform */		"U_TIOW_Valhallan_Blu",
/* Vest */			"TIOW_Valhallan_Belt",
/* Backpack */	"TIOW_Valhallan_Bandolier",
/* Helmet */		["TIOW_Valhallan_Cap_3","TIOW_Valhallan_Helmet","TIOW_Valhallan_Cap_2"],
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Masks */			"None",
/* Officer */		["U_TIOW_Valhallan_Blu","TIOW_Valhallan_Belt","None","TIOW_Valhallan_Cap","None"],
/* Commisar */	["U_TIOW_Comissar_Valhallan","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_ValhallansWinter
				{
					text = "Imperial - Valhallans Winter";
					data = [
/* Uniform */		"U_TIOW_Valhallan_white_Blu",
/* Vest */			"TIOW_Valhallan_Belt",
/* Backpack */	"TIOW_Valhallan_Bandolier",
/* Helmet */		["TIOW_Valhallan_Cap_white_3","TIOW_Valhallan_Helmet","TIOW_Valhallan_Cap_white_2"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Masks */			"None",
/* Officer */		["U_TIOW_Valhallan_white_Blu","TIOW_Valhallan_Belt","None","TIOW_Valhallan_white_Cap","None"],
/* Commisar */	["U_TIOW_Comissar_Winter","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Imperial_DeathKoprsKrieg82nd
				{
					text = "Imperial - Death Koprs of Krieg 82nd";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_82nd",
/* Vest */			["DKoK_Eng_Armor_82nd","DKoK_Gren_Armor_82nd"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_82nd",
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask82nd"],
/* Officer */		["DKoK_QM_Uniform_82nd","None","None","DKoK_GM_Helm_82nd","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","None","None","TIOW_Krieg_Comissar_Cap","DKOKCOMMask"],
							];
				};
				class Imperial_DeathKoprsKrieg1489th
				{
					text = "Imperial - Death Koprs of Krieg 1489th";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_1489th",
/* Vest */			["DKoK_Eng_Armor_1489th","DKoK_Gren_Armor_1489th"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_1489th",
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask1489th"],
/* Officer */		["DKoK_QM_Uniform_1489th","None","None","DKoK_GM_Helm_1489th","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","None","None","TIOW_Krieg_Comissar_Cap","DKOKCOMMask"],
							];
				};
				class Imperial_DeathKoprsKrieg1490th
				{
					text = "Imperial - Death Koprs of Krieg 1490th";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_1490th",
/* Vest */			["DKoK_Eng_Armor_1490th","DKoK_Gren_Armor_1490th"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_1490th",
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask1490th"],
/* Officer */		["DKoK_QM_Uniform_1490th","None","None","DKoK_GM_Helm_1490th","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","None","None","TIOW_Krieg_Comissar_Cap","DKOKCOMMask"],
							];
				};
				class Imperial_DeathKoprsKrieg1491st
				{
					text = "Imperial - Death Koprs of Krieg 1491st";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_1491st",
/* Vest */			["DKoK_Eng_Armor_1491st","DKoK_Gren_Armor_1491st"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_1491st",
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask1491st"],
/* Officer */		["DKoK_QM_Uniform_1491st","None","None","DKoK_GM_Helm_1491st","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","None","None","TIOW_Krieg_Comissar_Cap","DKOKCOMMask"],
							];
				};
				class Imperial_MordianIronGuard
				{
					text = "Imperial - Mordian Iron Guard";
					data = [
/* Uniform */		"U_TIOW_Mordian_Blu",
/* Vest */			"TIOW_Mordian_Belt",
/* Backpack */	"TIOW_CadBackpack",
/* Helmet */		["TIOW_Mordian_Cap_2","TIOW_Valhallan_Helmet","TIOW_Mordian_Cap"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Masks */			"None",
/* Officer */		["U_TIOW_Mordian_Officer_Blu","TIOW_Mordian_Belt","None","TIOW_Mordian_Cap_3","None"],
/* Commisar */	["U_TIOW_Comissar_Mord","None","None","TIOW_Comissar_Cap","None"],
							];
				};
				class Ork_NormalOrks
				{
					text = "Orks - Normal Boiis";
					data = [
/* Uniform */		["Boy1Uni_OP","TankBusta1Uni_OP","ArdBoy1Uni_OP"],
/* Vest */			["ShootaBoyGear1","TankBustaGear1","ArdBoyGear1"],
/* Backpack */	"None",
/* Helmet */		["ShootaBoyHelm1","ArdBoyHelm1","TankBustaHelm1"],
/* Radiobag */	"None",
/* Masks */			"None",
/* Officer */		["Boss1Uni_OP","BossGear1","None","BossHelm1","None"],
/* Commisar */	"None",
							];
				};
				class Ork_RedOrks
				{
					text = "Orks - Red Boiis";
					data = [
/* Uniform */		["Boy1Uni_OP","TankBusta1Uni_OP","ArdBoy1Uni_OP"],
/* Vest */			["ShootaBoyGear2","TankBustaGear2","ArdBoyGear2"],
/* Backpack */	"None",
/* Helmet */		["ShootaBoyHelm2","ArdBoyHelm2","TankBustaHelm2"],
/* Radiobag */	"None",
/* Masks */			"None",
/* Officer */		["Boss1Uni_OP","BossGear2","None","BossHelm2","None"],
/* Commisar */	"None",
							];
				};
				class Chaos_BloodPacts
				{
					text = "Chaos - Blood Pacts";
					data = [
/* Uniform */		"TIOW_U_Bloodpact_01_OP",
/* Vest */			["TIOW_Bloodpact_vest_01","TIOW_Bloodpact_vest_02","TIOW_Bloodpact_vest_03"],
/* Backpack */	["Ren_Backpack_02_black","BP_HS_Ammo_Backpack"],
/* Helmet */		["Cad_Inf_Helm700th","TIOW_Bloodpact_helmet_01"],
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			["TIOW_Bloodpact_mask_01","TIOW_Bloodpact_mask_02","DKOKGrenMask1491st"],
/* Officer */		["TIOW_U_Bloodpact_01_OP","TIOW_Bloodpact_vest_03","None","TIOW_Bloodpact_helmet_01","TIOW_Bloodpact_mask_01_bronze","None"],
/* Commisar */	["TIOW_U_Bloodpact_01_OP","None","None","Cad_Inf_Helm700th","TIOW_Bloodpact_mask_01_silver"],
							];
				};
				class Chaos_BloodPactsLight
				{
					text = "Chaos - Blood Pacts (Light)";
					data = [
/* Uniform */		"ML700_Bloodpact_Uniform1",
/* Vest */			"ML700_BP_Armor0",
/* Backpack */	"Ren_Backpack_02_black",
/* Helmet */		"ML700_Bloodpact_Helmet1",
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			"None",
/* Officer */		["ML700_Bloodpact_Uniform1","ML700_BP_Armor0","None","ML700_Bloodpact_Helmet_Officer_Gold","None"],
/* Commisar */	["ML700_Bloodpact_Uniform1","ML700_BP_Armor0","None","ML700_Bloodpact_Helmet_Officer_Silver","None"],
							];
				};
				class Chaos_ChaosCultists
				{
					text = "Chaos - Cultists";
					data = [
/* Uniform */		["U_TIOW_Cultist_O","U_TIOW_Cultist_brown","U_TIOW_Cultist_green"],
/* Vest */			"TIOW_Cultist_Gear2",
/* Backpack */	"Ren_Backpack_02_black_Medic",
/* Helmet */		["TIOW_Cultist_Hood","TIOW_Cultist_Hood_brown","TIOW_Cultist_Hood_green"],
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			["TIOW_Cultist_FaceCover","TIOW_Cultist_FaceCover_brown","TIOW_Cultist_FaceCover_green"],
/* Officer */		["U_TIOW_Cultist_O","TIOW_Cultist_Gear","None","TIOW_Cultist_Hood","TIOW_Cultist_Gasmask"],
/* Commisar */	"None",
							];
				};
				class Chaos_RenegadesBlack
				{
					text = "Chaos - Renegades (Black)";
					data = [
/* Uniform */		"OP_Ren_Uniform_01_black",
/* Vest */			["Ren_ArmorSet_01_green","Ren_ArmorSet_02_black"],
/* Backpack */	["Ren_Backpack_02_black_Ammo","Ren_Backpack_02_black_LMG","Ren_Backpack_02_black_Engineer"],
/* Helmet */		"TIOW_RenEnforcerMask_1",
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			"Ren_Gasmask_02",
/* Officer */		["OP_Ren_Uniform_01_black","Ren_ArmorSet_02_black","None","None","Ren_Gasmask_02"],
/* Commisar */	["OP_Ren_Uniform_01_black","Ren_ArmorSet_01_green","None","Cad_RebreatherMask700th","None"],
							];
				};
				class Chaos_RenegadesBrown
				{
					text = "Chaos - Renegades (Brown)";
					data = [
/* Uniform */		"OP_Ren_Uniform_01_brown",
/* Vest */			["Ren_ArmorSet_02_brown","Ren_ArmorSet_01_brown"],
/* Backpack */	["Ren_Backpack_02_black_Ammo","Ren_Backpack_02_black_LMG","Ren_Backpack_02_black_Engineer"],
/* Helmet */		"TIOW_RenEnforcerMask_1",
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["OP_Ren_Uniform_01_brown","Ren_ArmorSet_02_brown","None","None","Ren_Gasmask_02"],
/* Commisar */	["OP_Ren_Uniform_01_brown","Ren_ArmorSet_01_brown","None","Cad_RebreatherMask700th","None"],
							];
				};
				class Chaos_RenegadesGreen
				{
					text = "Chaos - Renegades (Green)";
					data = [
/* Uniform */		"OP_Ren_Uniform_01_green",
/* Vest */			["Ren_ArmorSet_02_green","Ren_ArmorSet_01_green"],
/* Backpack */	["Ren_Backpack_02_black_Ammo","Ren_Backpack_02_black_LMG","Ren_Backpack_02_black_Engineer"],
/* Helmet */		"TIOW_RenEnforcerMask_1",
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["OP_Ren_Uniform_01_green","Ren_ArmorSet_02_green","None","None","Ren_Gasmask_02"],
/* Commisar */	["OP_Ren_Uniform_01_green","Ren_ArmorSet_01_green","None","Cad_RebreatherMask700th","None"],
							];
				};
				class Chaos_RenegadesGrey
				{
					text = "Chaos - Renegades (Grey)";
					data = [
/* Uniform */		"OP_Ren_Uniform_01_grey",
/* Vest */			["Ren_ArmorSet_02_grey","Ren_ArmorSet_01_grey"],
/* Backpack */	["Ren_Backpack_02_black_Ammo","Ren_Backpack_02_black_LMG","Ren_Backpack_02_black_Engineer"],
/* Helmet */		"TIOW_RenEnforcerMask_1",
/* Radiobag */	"TIOW_Chaos_Vox_Caster",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["OP_Ren_Uniform_01_grey","Ren_ArmorSet_02_grey","None","None","Ren_Gasmask_02"],
/* Commisar */	["OP_Ren_Uniform_01_grey","Ren_ArmorSet_01_grey","None","Cad_RebreatherMask700th","None"],
							];
				};
				class Tua_Tau
				{
					text = "Tau - T'Au ";
					data = [
/* Uniform */		["TIOW_U_Fire_Warrior_TA_I","TIOW_U_Pathfinder_TA_I"],
/* Vest */			["TIOW_Tau_BeltB_TA","Ren_ArmorSet_01_grey","TIOW_Tau_BeltP_Shasui_TA","TIOW_Tau_BeltP_Photon_TA"],
/* Backpack */	["TIOW_Tau_Bck_Breacher_TA","TIOW_Tau_Bck_Strike_TA","TIOW_Tau_Bck_Phndr_Ion_TA"],
/* Helmet */		["TIOW_Tau_HelmetB2_TA","TIOW_Tau_HelmetS_TA","TIOW_Tau_HelmetS_TA_sui"],
/* Radiobag */	"TIOW_Tau_Bck_Strike_Shasui_TA",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["TIOW_U_Fire_Warrior_TA_I","TIOW_Tau_Belt_Shasui_TA","TIOW_Tau_Bck_Breacher_TA","TIOW_Tau_Hset4_TA","None"],
/* Commisar */	["TIOW_U_Fire_Warrior_TA_I","TIOW_Tau_BeltB_Shasui_TA","TIOW_Tau_Bck_Breacher_TA","TIOW_Tau_HelmetB2_TA_sui","None"],
							];
				};
				class Tua_TauGreen
				{
					text = "Tau - Dal'Yth (Green)";
					data = [
/* Uniform */		["TIOW_U_Fire_Warrior_DY_I","TIOW_U_Pathfinder_DY_I"],
/* Vest */			["TIOW_Tau_Belt_DY","Ren_ArmorSet_01_grey","TIOW_Tau_BeltP_Shasui_DY","TIOW_Tau_BeltP_Photon_DY"],
/* Backpack */	["TIOW_Tau_Bck_Breacher_DY","TIOW_Tau_Bck_Strike_DY","TIOW_Tau_Bck_Phndr_Ion_DY"],
/* Helmet */		["TIOW_Tau_HelmetB2_DY","TIOW_Tau_HelmetS_DY","TIOW_Tau_HelmetS_DY_sui"],
/* Radiobag */	"TIOW_Tau_Bck_Strike_Shasui_DY",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["TIOW_U_Fire_Warrior_DY_I","TIOW_Tau_Belt_Shasui_DY","TIOW_Tau_Bck_Breacher_DY","TIOW_Tau_Hset4_DY","None"],
/* Commisar */	["TIOW_U_Fire_Warrior_DY_I","TIOW_Tau_BeltB_Shasui_DY","TIOW_Tau_Bck_Breacher_DY","TIOW_Tau_HelmetB2_DY_sui","None"],
							];
				};
				class Tua_TauRed
				{
					text = "Tau - Farsight Enclave (Red)";
					data = [
/* Uniform */		["TIOW_U_Fire_Warrior_FE_I","TIOW_U_Pathfinder_FE_I"],
/* Vest */			["TIOW_Tau_BeltB_FE","Ren_ArmorSet_01_grey","TIOW_Tau_BeltP_Shasui_FE","TIOW_Tau_BeltP_Photon_FE"],
/* Backpack */	["TIOW_Tau_Bck_Breacher_FE","TIOW_Tau_Bck_Strike_FE","TIOW_Tau_Bck_Phndr_Ion_FE"],
/* Helmet */		["TIOW_Tau_HelmetB2_FE","TIOW_Tau_HelmetS_FE","TIOW_Tau_HelmetS_FE_sui"],
/* Radiobag */	"TIOW_Tau_Bck_Strike_Shasui_FE",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["TIOW_U_Fire_Warrior_FE_I","TIOW_Tau_Belt_Shasui_FE","TIOW_Tau_Bck_Breacher_FE","TIOW_Tau_Hset4_FE","None"],
/* Commisar */	["TIOW_U_Fire_Warrior_FE_I","TIOW_Tau_BeltB_Shasui_FE","TIOW_Tau_Bck_Breacher_FE","TIOW_Tau_HelmetB2_FE_sui","None"],
							];
				};
				class Tua_TauBlue
				{
					text = "Tau - Sa'Cea (Blue)";
					data = [
/* Uniform */		["TIOW_U_Fire_Warrior_SC_I","TIOW_U_Pathfinder_SC_I"],
/* Vest */			["TIOW_Tau_BeltB_SC","Ren_ArmorSet_01_grey","TIOW_Tau_BeltP_Shasui_SC","TIOW_Tau_BeltP_Photon_SC"],
/* Backpack */	["TIOW_Tau_Bck_Breacher_SC","TIOW_Tau_Bck_Strike_SC","TIOW_Tau_Bck_Phndr_Ion_SC"],
/* Helmet */		["TIOW_Tau_HelmetB2_SC","TIOW_Tau_HelmetS_SC","TIOW_Tau_HelmetS_SC_sui"],
/* Radiobag */	"TIOW_Tau_Bck_Strike_Shasui_SC",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["TIOW_U_Fire_Warrior_SC_I","TIOW_Tau_Belt_Shasui_SC","TIOW_Tau_Bck_Breacher_SC","TIOW_Tau_Hset4_SC","None"],
/* Commisar */	["TIOW_U_Fire_Warrior_SC_I","TIOW_Tau_BeltB_Shasui_SC","TIOW_Tau_Bck_Breacher_SC","TIOW_Tau_HelmetB2_SC_sui","None"],
							];
				};
				class Tua_TauWhite
				{
					text = "Tau - Voir'La (White)";
					data = [
/* Uniform */		["TIOW_U_Fire_Warrior_VL_I","TIOW_U_Pathfinder_VL_I"],
/* Vest */			["TIOW_Tau_BeltB_VL","Ren_ArmorSet_01_grey","TIOW_Tau_BeltP_Shasui_VL","TIOW_Tau_BeltP_Photon_VL"],
/* Backpack */	["TIOW_Tau_Bck_Breacher_VL","TIOW_Tau_Bck_Strike_VL","TIOW_Tau_Bck_Phndr_Ion_VL"],
/* Helmet */		["TIOW_Tau_HelmetB2_VL","TIOW_Tau_HelmetS_VL","TIOW_Tau_HelmetS_VL_sui"],
/* Radiobag */	"TIOW_Tau_Bck_Strike_Shasui_VL",
/* Masks */			"Ren_Gasmask_01",
/* Officer */		["TIOW_U_Fire_Warrior_VL_I","TIOW_Tau_Belt_Shasui_VL","TIOW_Tau_Bck_Breacher_VL","TIOW_Tau_Hset4_VL","None"],
/* Commisar */	["TIOW_U_Fire_Warrior_VL_I","TIOW_Tau_BeltB_Shasui_VL","TIOW_Tau_Bck_Breacher_VL","TIOW_Tau_HelmetB2_VL_sui","None"],
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

// Your attribute class
class LT_Camo_combo_smarine: Title
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
				class SpaceMarine_Imperial_Ultra
				{
					text = "Space Marines - Imperial - UltraMarines";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_UM",
/* Vest */			"TIOW_Mk2Limbs_UM",
/* Backpack */	"TIOW_Mk4Powerpack_Ultra",
/* Helmet */		"TIOW_MK7Helmet_UM",
/* Officer */		["TIOW_Mk8PowerArmor_1_UM","TIOW_Mk2Limbs_UM","TIOW_Mk4Powerpack_Ultra","TIOW_MK7Helmet_BA"]
							];
					default = 1;
				};
				class SpaceMarine_Imperial_WS
				{
					text = "Space Marines - Imperial - White Scars";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_WS",
/* Vest */			"TIOW_Mk2Limbs_WS",
/* Backpack */	"TIOW_Mk4Powerpack_WS",
/* Helmet */		"TIOW_MK7Helmet_WS",
/* Officer */		["TIOW_Mk8PowerArmor_1_WS","TIOW_Mk2Limbs_WS","TIOW_Mk4Powerpack_WS","TIOW_MK7Helmet_WS_Alt"]
							];
				};
				class SpaceMarine_Imperial_SW
				{
					text = "Space Marines - Imperial - Space Wolves";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_SW",
/* Vest */			"TIOW_Mk2Limbs_SW",
/* Backpack */	"TIOW_Mk4Powerpack_SW",
/* Helmet */		"TIOW_MK7Helmet_SW",
/* Officer */		["TIOW_Mk8PowerArmor_1_SW","TIOW_Mk2Limbs_SW","TIOW_Mk4Powerpack_SW","TIOW_MK7Helmet_SW_Alt"]
							];
				};
				class SpaceMarine_Imperial_SL
				{
					text = "Space Marines - Imperial - Salamanders";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_SL",
/* Vest */			"TIOW_Mk2Limbs_SL",
/* Backpack */	"TIOW_Mk4Powerpack_SL",
/* Helmet */		"TIOW_MK7Helmet_SL",
/* Officer */		["TIOW_Mk8PowerArmor_1_SL","TIOW_Mk2Limbs_SL","TIOW_Mk4Powerpack_SL","TIOW_MK7Helmet_SL_Alt"]
							];
				};
				class SpaceMarine_Imperial_IH
				{
					text = "Space Marines - Imperial - Iron Hands";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_IH",
/* Vest */			"TIOW_Mk2Limbs_IH",
/* Backpack */	"TIOW_Mk4Powerpack_IH",
/* Helmet */		"TIOW_MK7Helmet_IH",
/* Officer */		["TIOW_Mk8PowerArmor_1_IH","TIOW_Mk2Limbs_IH","TIOW_Mk4Powerpack_IH","TIOW_MK7Helmet_IH_Alt"]
							];
				};
				class SpaceMarine_Imperial_IF
				{
					text = "Space Marines - Imperial - Iron Fists";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_IF",
/* Vest */			"TIOW_Mk2Limbs_IF",
/* Backpack */	"TIOW_Mk4Powerpack_IF",
/* Helmet */		"TIOW_MK7Helmet_IF",
/* Officer */		["TIOW_Mk8PowerArmor_1_IF","TIOW_Mk2Limbs_IF","TIOW_Mk4Powerpack_IF","TIOW_MK7Helmet_IF_Alt"]
							];
				};
				class SpaceMarine_Imperial_DA
				{
					text = "Space Marines - Imperial - Dark Angels";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_DA",
/* Vest */			"TIOW_Mk2Limbs_DA",
/* Backpack */	"TIOW_Mk4Powerpack_DA",
/* Helmet */		"TIOW_MK7Helmet_DA",
/* Officer */		["TIOW_Mk8PowerArmor_1_DA","TIOW_Mk2Limbs_DA","TIOW_Mk4Powerpack_DA","TIOW_MK7Helmet_DA_Alt"]
							];
				};
				class SpaceMarine_Imperial_DAPre
				{
					text = "Space Marines - Imperial - Dark Angels (Pre-Heresy)";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_DA_HH",
/* Vest */			"TIOW_Mk2Limbs_DA_HH",
/* Backpack */	"TIOW_Mk4Powerpack_DA_HH",
/* Helmet */		"TIOW_MK7Helmet_DA_HH",
/* Officer */		["TIOW_Mk8PowerArmor_1_DA_HH","TIOW_Mk2Limbs_DA_HH","TIOW_Mk4Powerpack_DA_HH","TIOW_MK7Helmet_DA_HH_Alt"]
							];
				};
				class SpaceMarine_Imperial_BR
				{
					text = "Space Marines - Imperial - Blood Ravens";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_BR",
/* Vest */			"TIOW_Mk2Limbs_BR",
/* Backpack */	"TIOW_Mk4Powerpack_BR",
/* Helmet */		"TIOW_MK7Helmet_BR",
/* Officer */		["TIOW_Mk8PowerArmor_1_BR","TIOW_Mk2Limbs_BR","TIOW_Mk4Powerpack_BR","TIOW_MK7Helmet_BR_Alt"]
							];
				};
				class SpaceMarine_Imperial_BA
				{
					text = "Space Marines - Imperial - Blood Angels";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_BA",
/* Vest */			"TIOW_Mk2Limbs_BA",
/* Backpack */	"TIOW_Mk4Powerpack_BA",
/* Helmet */		"TIOW_MK7Helmet_BA",
/* Officer */		["TIOW_Mk8PowerArmor_1_BA","TIOW_Mk2Limbs_BA","TIOW_Mk4Powerpack_BA","TIOW_MK7Helmet_BA_Alt"]
							];
				};
				class SpaceMarine_Imperial_BT
				{
					text = "Space Marines - Imperial - Black Templars";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_BT",
/* Vest */			"TIOW_Mk2Limbs_BT",
/* Backpack */	"TIOW_Mk4Powerpack_BT",
/* Helmet */		"TIOW_MK7Helmet_BT",
/* Officer */		["TIOW_Mk8PowerArmor_1_BT","TIOW_Mk2Limbs_BT","TIOW_Mk4Powerpack_BT","TIOW_MK7Helmet_BT_Alt"]
							];
				};
				class SpaceMarine_Imperial_RG
				{
					text = "Space Marines - Imperial - Raven Guard";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_RG",
/* Vest */			"TIOW_Mk2Limbs_RG",
/* Backpack */	"TIOW_Mk4Powerpack_RG",
/* Helmet */		"TIOW_MK7Helmet_RG",
/* Officer */		["TIOW_Mk8PowerArmor_1_RG","TIOW_Mk2Limbs_RG","TIOW_Mk4Powerpack_RG","TIOW_MK7Helmet_RG_Alt"]
							];
				};
				class SpaceMarine_Chaos_AL
				{
					text = "Space Marines - Chaos - Alpha Legion";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_AL",
/* Vest */			"TIOW_Mk2Limbs_AL",
/* Backpack */	"TIOW_Mk2Powerpack_AL",
/* Helmet */		"TIOW_MK7Helmet_AL",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_AL","TIOW_ChaosLimbs_AL","TIOW_Chaos3Powerpack_AL","TIOW_SkullHelmet_1_AL"]
							];
				};
				class SpaceMarine_Chaos_BL
				{
					text = "Space Marines - Chaos - Black Legion";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_BL",
/* Vest */			"TIOW_Mk2Limbs_BL",
/* Backpack */	"TIOW_Mk2Powerpack_BL",
/* Helmet */		"TIOW_MK7Helmet_BL",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_BL","TIOW_ChaosLimbs_BL","TIOW_Chaos3Powerpack_BL","TIOW_SkullHelmet_1_BL"]
							];
				};
				class SpaceMarine_Chaos_DG
				{
					text = "Space Marines - Chaos - Death Guard";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_DG",
/* Vest */			"TIOW_Mk2Limbs_DG",
/* Backpack */	"TIOW_Mk2Powerpack_DG",
/* Helmet */		"TIOW_MK7Helmet_DG",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_DG","TIOW_ChaosLimbs_DG","TIOW_Chaos3Powerpack_DG","TIOW_SkullHelmet_1_DG"]
							];
				};
				class SpaceMarine_Chaos_WE
				{
					text = "Space Marines - Chaos - World Eaters";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_WE",
/* Vest */			"TIOW_Mk2Limbs_WE",
/* Backpack */	"TIOW_Mk2Powerpack_WE",
/* Helmet */		"TIOW_MK7Helmet_WE",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_WE","TIOW_ChaosLimbs_WE","TIOW_Chaos3Powerpack_WE","TIOW_SkullHelmet_1_WE"]
							];
				};
				class SpaceMarine_Chaos_WB
				{
					text = "Space Marines - Chaos - World Bearers";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_WB",
/* Vest */			"TIOW_Mk2Limbs_WB",
/* Backpack */	"TIOW_Mk2Powerpack_WB",
/* Helmet */		"TIOW_MK7Helmet_WB",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_WB","TIOW_ChaosLimbs_WB","TIOW_Chaos3Powerpack_WB","TIOW_SkullHelmet_1_WB"]
							];
				};
				class SpaceMarine_Chaos_TS
				{
					text = "Space Marines - Chaos - Thousand Sons";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_TS",
/* Vest */			"TIOW_Mk2Limbs_TS",
/* Backpack */	"TIOW_Mk2Powerpack_TS",
/* Helmet */		"TIOW_MK7Helmet_TS",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_TS","TIOW_ChaosLimbs_TS","TIOW_Chaos3Powerpack_TS","TIOW_SkullHelmet_1_TS"]
							];
				};
				class SpaceMarine_Chaos_NL
				{
					text = "Space Marines - Chaos - Night Lords";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_NL",
/* Vest */			"TIOW_Mk2Limbs_NL",
/* Backpack */	"TIOW_Mk2Powerpack_NL",
/* Helmet */		"TIOW_MK7Helmet_NL",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_NL","TIOW_ChaosLimbs_NL","TIOW_Chaos3Powerpack_NL","TIOW_SkullHelmet_1_NL"]
							];
				};
				class SpaceMarine_Chaos_IW
				{
					text = "Space Marines - Chaos - Iron Warriors";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_IW",
/* Vest */			"TIOW_Mk2Limbs_IW",
/* Backpack */	"TIOW_Mk2Powerpack_IW",
/* Helmet */		"TIOW_MK7Helmet_IW",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_IW","TIOW_ChaosLimbs_IW","TIOW_Chaos3Powerpack_IW","TIOW_SkullHelmet_1_IW"]
							];
				};
				class SpaceMarine_Chaos_EC
				{
					text = "Space Marines - Chaos - Emperor's Children";
					data = [
/* Uniform */		"TIOW_Mk8PowerArmor_1_EC",
/* Vest */			"TIOW_Mk2Limbs_EC",
/* Backpack */	"TIOW_Mk2Powerpack_EC",
/* Helmet */		"TIOW_MK7Helmet_EC",
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_EC","TIOW_ChaosLimbs_EC","TIOW_Chaos3Powerpack_EC","TIOW_SkullHelmet_1_EC"]
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
