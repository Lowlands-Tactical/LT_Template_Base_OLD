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
/* Officer */		["TIOW_Mk8PowerArmor_1_UM","TIOW_Mk2Limbs_UM","TIOW_Mk4Powerpack_Ultra","TIOW_MK7Helmet_BA"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_WS","TIOW_Mk2Limbs_WS","TIOW_Mk4Powerpack_WS","TIOW_MK7Helmet_WS_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_SW","TIOW_Mk2Limbs_SW","TIOW_Mk4Powerpack_SW","TIOW_MK7Helmet_SW_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_SL","TIOW_Mk2Limbs_SL","TIOW_Mk4Powerpack_SL","TIOW_MK7Helmet_SL_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_IH","TIOW_Mk2Limbs_IH","TIOW_Mk4Powerpack_IH","TIOW_MK7Helmet_IH_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_IF","TIOW_Mk2Limbs_IF","TIOW_Mk4Powerpack_IF","TIOW_MK7Helmet_IF_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_DA","TIOW_Mk2Limbs_DA","TIOW_Mk4Powerpack_DA","TIOW_MK7Helmet_DA_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_DA_HH","TIOW_Mk2Limbs_DA_HH","TIOW_Mk4Powerpack_DA_HH","TIOW_MK7Helmet_DA_HH_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_BR","TIOW_Mk2Limbs_BR","TIOW_Mk4Powerpack_BR","TIOW_MK7Helmet_BR_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_BA","TIOW_Mk2Limbs_BA","TIOW_Mk4Powerpack_BA","TIOW_MK7Helmet_BA_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_BT","TIOW_Mk2Limbs_BT","TIOW_Mk4Powerpack_BT","TIOW_MK7Helmet_BT_Alt"],
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
/* Officer */		["TIOW_Mk8PowerArmor_1_RG","TIOW_Mk2Limbs_RG","TIOW_Mk4Powerpack_RG","TIOW_MK7Helmet_RG_Alt"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_AL","TIOW_ChaosLimbs_AL","TIOW_Chaos3Powerpack_AL","TIOW_SkullHelmet_1_AL"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_BL","TIOW_ChaosLimbs_BL","TIOW_Chaos3Powerpack_BL","TIOW_SkullHelmet_1_BL"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_DG","TIOW_ChaosLimbs_DG","TIOW_Chaos3Powerpack_DG","TIOW_SkullHelmet_1_DG"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_WE","TIOW_ChaosLimbs_WE","TIOW_Chaos3Powerpack_WE","TIOW_SkullHelmet_1_WE"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_WB","TIOW_ChaosLimbs_WB","TIOW_Chaos3Powerpack_WB","TIOW_SkullHelmet_1_WB"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_TS","TIOW_ChaosLimbs_TS","TIOW_Chaos3Powerpack_TS","TIOW_SkullHelmet_1_TS"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_NL","TIOW_ChaosLimbs_NL","TIOW_Chaos3Powerpack_NL","TIOW_SkullHelmet_1_NL"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_IW","TIOW_ChaosLimbs_IW","TIOW_Chaos3Powerpack_IW","TIOW_SkullHelmet_1_IW"],
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
/* Officer */		["TIOW_Mk7PowerArmorChaos_1_EC","TIOW_ChaosLimbs_EC","TIOW_Chaos3Powerpack_EC","TIOW_SkullHelmet_1_EC"],
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
