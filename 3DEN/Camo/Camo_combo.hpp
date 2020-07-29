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
				class Imperial_Guard
				{
					text = "Imperial Guard";
					data = [
/* Uniform */		"ML700_Cadian_Uniform1",
/* Vest */			["ML700_Cadian_Armor1","ML700_Cadian_Armor2","ML700_Cadian_Armor3","ML700_Cadian_Armor4","ML700_Cadian_Armor5"],
/* Backpack */	"TIOW_CadBackpack",
/* Helmet */		"ML700_Cadian_Helmet1",
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Officer */		["ML700_Cadian_Uniform1","ML700_Cadian_Armor1","ML700_Cadian_OfficerCap"],
/* Commisar */	["U_TIOW_Comissar","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
					default = 1;
				};
				class Cadian_667th
				{
					text = "Imperial - Cadian 667th (Winter)";
					data = [
/* Uniform */		"CadUni667th",
/* Vest */			["Cad_Gear667th","Cad_KasrGear667th","TIOW_IG_Sergeant_Armour_667"],
/* Backpack */	["TIOW_CadBackpack_Winter","TIOW_CadKasrkinBackpack_667th"],
/* Helmet */		["Cad_InfBreather_Helm667th","Cad_Inf_Helm667th"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Officer */		["U_TIOW_Captain_667_O","TIOW_IG_Officer_Armour_667","TIOW_IG_Officer_Cap1_667"],
/* Commisar */	["U_TIOW_Comissar_Winter","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
				};
				class Cadian_700th
				{
					text = "Imperial - Cadian 700th (Urban)";
					data = [
/* Uniform */		"CadUni700th",
/* Vest */			["Cad_Gear700th","Cad_KasrGear700th","TIOW_IG_Sergeant_Armour_700"],
/* Backpack */	["TIOW_CadBackpack","TIOW_CadKasrkinBackpack_700th"],
/* Helmet */		["Cad_InfBreather_Helm700th","Cad_Inf_Helm700th"],
/* Radiobag */	"TIOW_Vox_Caster_Red",
/* Officer */		["U_TIOW_Captain_700","TIOW_IG_Officer_Armour_700","TIOW_IG_Officer_Cap1_700"],
/* Commisar */	["U_TIOW_Comissar_Brown","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
				};
				class Cadian_776th
				{
					text = "Imperial - Cadian 776th (Black)";
					data = [
/* Uniform */		"CadUni776th",
/* Vest */			["Cad_Gear776th","Cad_KasrGear776th","TIOW_IG_Sergeant_Armour_776"],
/* Backpack */	["TIOW_CadBackpack","TIOW_CadKasrkinBackpack_776th"],
/* Helmet */		["Cad_InfBreather_Helm776th","Cad_Inf_Helm776th"],
/* Radiobag */	"TIOW_Vox_Caster_Black",
/* Officer */		["U_TIOW_Captain_776_I","TIOW_IG_Officer_Armour_776","TIOW_IG_Officer_Cap1_776"],
/* Commisar */	["U_TIOW_Comissar","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
				};
				class Cadian_836th
				{
					text = "Imperial - Cadian 836th (Dessert)";
					data = [
/* Uniform */		"CadUni836th",
/* Vest */			["Cad_Gear836th","Cad_KasrGear836th","TIOW_IG_Sergeant_Armour_836"],
/* Backpack */	["TIOW_CadBackpack","TIOW_CadKasrkinBackpack_836th"],
/* Helmet */		["Cad_InfBreather_Helm836th","Cad_Inf_Helm836th"],
/* Radiobag */	"TIOW_Vox_Caster_Green",
/* Officer */		["U_TIOW_Captain_836_I","TIOW_IG_Officer_Armour_836","TIOW_IG_Officer_Cap1_836"],
/* Commisar */	["U_TIOW_Comissar_Desert","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
				};
				class Valhallans
				{
					text = "Imperial - Valhallans";
					data = [
/* Uniform */		"U_TIOW_Valhallan_Blu",
/* Vest */			"TIOW_Valhallan_Belt",
/* Backpack */	"TIOW_Valhallan_Bandolier",
/* Helmet */		["TIOW_Valhallan_Cap_3","TIOW_Valhallan_Helmet","TIOW_Valhallan_Cap_2"],
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Officer */		["U_TIOW_Valhallan_Blu","TIOW_Valhallan_Belt","TIOW_Valhallan_Cap"],
/* Commisar */	["U_TIOW_Comissar_Valhallan","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
				};
				class Valhallans
				{
					text = "Imperial - Valhallans Winter";
					data = [
/* Uniform */		"U_TIOW_Valhallan_white_Blu",
/* Vest */			"TIOW_Valhallan_Belt",
/* Backpack */	"TIOW_Valhallan_Bandolier",
/* Helmet */		["TIOW_Valhallan_Cap_white_3","TIOW_Valhallan_Helmet","TIOW_Valhallan_Cap_white_2"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Officer */		["U_TIOW_Valhallan_white_Blu","TIOW_Valhallan_Belt","TIOW_Valhallan_white_Cap"],
/* Commisar */	["U_TIOW_Comissar_Winter","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
				};
				class DeathKoprsKrieg82nd
				{
					text = "Imperial - Death Koprs of Krieg 82nd";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_82nd",
/* Vest */			["DKoK_Eng_Armor_82nd","DKoK_Gren_Armor_82nd"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_82nd",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask82nd"],
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Officer */		["DKoK_QM_Uniform_82nd",nil,"DKoK_GM_Helm_82nd","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","TIOW_Krieg_Comissar_Cap",nil,"DKOKCOMMask"],
							];
				};
				class DeathKoprsKrieg1489th
				{
					text = "Imperial - Death Koprs of Krieg 1489th";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_1489th",
/* Vest */			["DKoK_Eng_Armor_1489th","DKoK_Gren_Armor_1489th"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_1489th",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask1489th"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Officer */		["DKoK_QM_Uniform_1489th",nil,"DKoK_GM_Helm_1489th","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","TIOW_Krieg_Comissar_Cap",nil,"DKOKCOMMask"],
							];
				};
				class DeathKoprsKrieg1490th
				{
					text = "Imperial - Death Koprs of Krieg 1490th";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_1490th",
/* Vest */			["DKoK_Eng_Armor_1490th","DKoK_Gren_Armor_1490th"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_1490th",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask1490th"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Officer */		["DKoK_QM_Uniform_1490th",nil,"DKoK_GM_Helm_1490th","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","TIOW_Krieg_Comissar_Cap",nil,"DKOKCOMMask"],
							];
				};
				class DeathKoprsKrieg1491st
				{
					text = "Imperial - Death Koprs of Krieg 1491st";
					data = [
/* Uniform */		"OP_DKoK_GM_Uniform_1491st",
/* Vest */			["DKoK_Eng_Armor_1491st","DKoK_Gren_Armor_1491st"],
/* Backpack */	["DKoK_BackPack","DKoK_PlasmaBackPack"],
/* Helmet */		"DKoK_GM_Helm_1491st",
/* Masks */			["DKOKTroopMask","DKOKOffMask","DKOKGrenMask1491st"],
/* Radiobag */	"TIOW_IG_Vox_Caster",
/* Officer */		["DKoK_QM_Uniform_1491st",nil,"DKoK_GM_Helm_1491st","DKOKQMMask"],
/* Commisar */	["U_TIOW_Comissar_Krieg","TIOW_Krieg_Comissar_Cap",nil,"DKOKCOMMask"],
							];
				};
				class MordianIronGuard
				{
					text = "Imperial - Mordian Iron Guard";
					data = [
/* Uniform */		"U_TIOW_Mordian_Blu",
/* Vest */			"TIOW_Mordian_Belt",
/* Backpack */	"TIOW_CadBackpack",
/* Helmet */		["TIOW_Mordian_Cap_2","TIOW_Valhallan_Helmet","TIOW_Mordian_Cap"],
/* Radiobag */	"TIOW_Vox_Caster_White2",
/* Officer */		["U_TIOW_Mordian_Officer_Blu","TIOW_Mordian_Belt","TIOW_Mordian_Cap_3"],
/* Commisar */	["U_TIOW_Comissar_Mord","TIOW_Comissar_Cap","TIOW_Bionic_Eye"],
							];
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
