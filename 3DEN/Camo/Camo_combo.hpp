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
				// Covenant
				class LT_Camo_Covenant
				{
					text = "Covenant";
					data = [
						["OPTRE_FC_Elite_Uniform_Zealot","OPTRE_FC_Elite_Uniform_Ultra","OPTRE_FC_Elite_Uniform_SpecOps","OPTRE_FC_Elite_Uniform_Major","OPTRE_FC_Elite_Uniform_Minor"], // Uniform
						"OPTRE_FC_Marines_Vest", // Vests
						"B_Kitbag_mcamo", // Backpacks
						"OPTRE_UNSC_CH252_Helmet_Vacuum_MAR", // Helmets
						"OPTRE_ANPRC_521_URF" // Radiobag
					];
				};
				// Insurgents
				class LT_Camo_Ins_ER
				{
				  text = "Insurgents ER";
				  data =  [
						["OPTRE_Ins_ER_jacket_surplus_redshirt","OPTRE_Ins_ER_rolled_surplus_black","OPTRE_Ins_ER_rolled_OD_blknblu","OPTRE_Ins_ER_rolled_surplus_crimson","OPTRE_Ins_ER_rolled_jean_orca","OPTRE_Ins_ER_uniform_GGgrey","OPTRE_Ins_ER_jacket_brown_surplus","OPTRE_Ins_ER_jacket_surplus_OD"], // Uniform
						["V_Chestrig_blk","OPTRE_UNSC_M52A_Armor_Soft","V_BandollierB_blk"], // Vests
						["OPTRE_B_TacticalPack_blk_M73","OPTRE_B_TacticalPack_blk_Demo","OPTRE_B_TacticalPack_blk_M41"], // Backpacks
						["OPTRE_Ins_URF_Helmet3","H_Watchcap_blk","H_Bandanna_khk_hs","","H_Booniehat_oli","H_Cap_red","H_Bandanna_gry"], // Helmets
						"OPTRE_ANPRC_515" // Radiobag
					];
				};
				class LT_Camo_Ins_URF
				{
				  text = "Insurgents URF";
				  data =  [
						"OPTRE_Ins_URF_Combat_Uniform", // Uniform
						"OPTRE_Ins_URF_Armor1", // Vests
						["OPTRE_B_TacticalPack_blk_M73","OPTRE_B_TacticalPack_blk_M41"], // Backpacks
						"OPTRE_Ins_URF_Helmet1", // Helmets
						"OPTRE_ANPRC_521_URF" // Radiobag
					];
				};
				class LT_Camo_Ins_BatJump_Black
				{
				  text = "Insurgents Battle Jump (Black)";
				  data =  [
						"OPTRE_Ins_BJ_Undersuit", // Uniform
						"OPTRE_Ins_BJ_Armor_URB", // Vests
						"B_ViperLightHarness_blk_F", // Backpacks
						"OPTRE_Ins_BJ_Helmet_URB", // Helmets
						"OPTRE_ANPRC_521_Black" // Radiobag
					];
				};
				class LT_Camo_Ins_BatJump_Black
				{
				  text = "Insurgents Battle Jump (Woodland)";
				  data =  [
						"OPTRE_Ins_BJ_Undersuit", // Uniform
						"OPTRE_Ins_BJ_Armor", // Vests
						"B_ViperLightHarness_oli_F", // Backpacks
						"OPTRE_Ins_BJ_Helmet", // Helmets
						"OPTRE_ANPRC_521_Black" // Radiobag
					];
				};
				// UNSC
				class LT_Camo_UNSC_Spartan_II
				{
				  text = "UNSC Spartan-II";
				  data =  [
						"OPTRE_MJOLNIR_Undersuit", // Uniform
						"OPTRE_MJOLNIR_Mk4Armor", // Vests
						["OPTRE_ILCS_Rucksack_Heavy_Demo"], // Backpacks
						["OPTRE_MJOLNIR_Mk4Helmet","OPTRE_MJOLNIR_EVAHelmet"], // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Spartan_II_HCW
				{
				  text = "UNSC Spartan-II HCW";
				  data =  [
						"OPTRE_FC_Spartan_Uniform", // Uniform
						"OPTRE_MJOLNIR_Mk4Armor", // Vests
						"OPTRE_ILCS_Rucksack_Heavy_Demo", // Backpacks
						"OPTRE_MJOLNIR_Mk4Helmet", // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Spartan_III
				{
				  text = "UNSC Spartan-III";
				  data =  [
						"OPTRE_MJOLNIR_Undersuit", // Uniform
						"OPTRE_MJOLNIR_MkVBArmor", // Vests
						"OPTRE_ILCS_Rucksack_Heavy_Demo", // Backpacks
						"OPTRE_MJOLNIR_MkVBHelmet", // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Marine
				{
				  text = "UNSC Marine";
				  data =  [
						["OPTRE_UNSC_Marine_Uniform","OPTRE_UNSC_Marine_Uniform_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_MAR","OPTRE_UNSC_M52A_Armor_Corpsman_MAR","OPTRE_UNSC_M52A_Armor_MG_MAR","OPTRE_UNSC_M52A_Armor_Rifleman_MAR"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_Rucksack_Heavy_M73"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_MAR","OPTRE_UNSC_CH252_Helmet2_MAR","OPTRE_UNSC_CH252_Helmet2_MAR_MED","OPTRE_UNSC_Rucksack_M41"], // Helmets
						"OPTRE_ANPRC_521_Black" // Radiobag
					];
				};
				class LT_Camo_UNSC_Marine_HCW
				{
				  text = "UNSC Marine HCW";
				  data =  [
						["OPTRE_FC_Marines_Uniform","OPTRE_FC_Marines_Uniform_L"], // Uniform
						["OPTRE_FC_Marines_Vest","OPTRE_FC_Marines_Vest_L"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_M41","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_Heavy_Demo"], // Backpacks
						"OPTRE_FC_Marines_Helmet", // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Army_Desert
				{
				  text = "UNSC Army Desert";
				  data =  [
						["OPTRE_UNSC_Army_Uniform_DES","OPTRE_UNSC_Army_Uniform_DES_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_DES","OPTRE_UNSC_M52A_Armor_Medic_DES","OPTRE_UNSC_M52A_Armor_MG_DES","OPTRE_UNSC_M52A_Armor_Rifleman_DES"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_M52A_Armor_MG_DES","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_M41"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_DES","OPTRE_UNSC_CH252_Helmet2_DES","OPTRE_UNSC_CH252_Helmet2_DES_MED"], // Helmets
						"OPTRE_ANPRC_521_Tan" // Radiobag
					];
				};
				class LT_Camo_UNSC_Army_Snow
				{
				  text = "UNSC Army Snow";
				  data =  [
						["OPTRE_UNSC_Army_Uniform_SNO","OPTRE_UNSC_Army_Uniform_SNO_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_SNO","OPTRE_UNSC_M52A_Armor_Medic_SNO","OPTRE_UNSC_M52A_Armor_MG_SNO","OPTRE_UNSC_M52A_Armor_Rifleman_SNO"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_M52A_Armor_MG_SNO","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_M41"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_SNO","OPTRE_UNSC_CH252_Helmet2_SNO","OPTRE_UNSC_CH252_Helmet2_SNO_MED"], // Helmets
						"OPTRE_ANPRC_521_Snow" // Radiobag
					];
				};
				class LT_Camo_UNSC_Army_Tropic
				{
				  text = "UNSC Army Tropic";
				  data =  [
						["OPTRE_UNSC_Army_Uniform_TRO","OPTRE_UNSC_Army_Uniform_TRO_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_WDL","OPTRE_UNSC_M52A_Armor_Medic_WDL","OPTRE_UNSC_M52A_Armor_MG_WDL","OPTRE_UNSC_M52A_Armor_Rifleman_WDL"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_M52A_Armor_MG_WDL","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_M41"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_WDL","OPTRE_UNSC_CH252_Helmet2_WDL","OPTRE_UNSC_CH252_Helmet2_WDL_MED"], // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Army_Olive
				{
				  text = "UNSC Army Olive";
				  data =  [
						["OPTRE_UNSC_Army_Uniform_OLI","OPTRE_UNSC_Army_Uniform_OLI_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_WDL","OPTRE_UNSC_M52A_Armor_Medic_WDL","OPTRE_UNSC_M52A_Armor_MG_WDL","OPTRE_UNSC_M52A_Armor_Rifleman_WDL"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_M52A_Armor_MG_WDL","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_M41"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_WDL","OPTRE_UNSC_CH252_Helmet2_WDL","OPTRE_UNSC_CH252_Helmet2_WDL_MED"], // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Army_Woodland
				{
				  text = "UNSC Army Woodland";
				  data =  [
						["OPTRE_UNSC_Army_Uniform_WDL","OPTRE_UNSC_Army_Uniform_WDL_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_WDL","OPTRE_UNSC_M52A_Armor_Medic_WDL","OPTRE_UNSC_M52A_Armor_MG_WDL","OPTRE_UNSC_M52A_Armor_Rifleman_WDL"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_M52A_Armor_MG_WDL","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_M41"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_WDL","OPTRE_UNSC_CH252_Helmet2_WDL","OPTRE_UNSC_CH252_Helmet2_WDL_MED"], // Helmets
						"OPTRE_ANPRC_521_Green" // Radiobag
					];
				};
				class LT_Camo_UNSC_Army_Urban
				{
				  text = "UNSC Army Urban";
				  data =  [
						["OPTRE_UNSC_Army_Uniform_URB","OPTRE_UNSC_Army_Uniform_URB_SlimLeg"], // Uniform
						["OPTRE_UNSC_M52A_Armor_TL_URB","OPTRE_UNSC_M52A_Armor_Medic_URB","OPTRE_UNSC_M52A_Armor_MG_URB","OPTRE_UNSC_M52A_Armor_Rifleman_URB"], // Vests
						["OPTRE_UNSC_Rucksack_Lead","OPTRE_UNSC_Rucksack_Medic_Filled","OPTRE_UNSC_M52A_Armor_MG_URB","OPTRE_UNSC_Rucksack_Heavy_M73","OPTRE_UNSC_Rucksack_M41"], // Backpacks
						["OPTRE_UNSC_CH252_Helmet_URB","OPTRE_UNSC_CH252_Helmet2_URB","OPTRE_UNSC_CH252_Helmet2_URB_MED"], // Helmets
						"OPTRE_ANPRC_521_Black" // Radiobag
					];
				};
				class LT_Camo_UNSC_SpecOp
				{
				  text = "UNSC Army Spec Ops";
				  data =  [
						"OPTRE_UNSC_ODST_Uniform", // Uniform
						["OPTRE_UNSC_M52D_Armor_Rifleman","OPTRE_UNSC_M52D_Armor_Medic","OPTRE_UNSC_M52D_Armor_Demolitions","OPTRE_UNSC_M52D_Armor_Scout","OPTRE_UNSC_M52D_Armor_Sniper"], // Vests
						["OPTRE_ILCS_Rucksack_Black_Lead","OPTRE_ILCS_Rucksack_Medical_Filled","OPTRE_ILCS_Rucksack_Heavy_Demo","OPTRE_ILCS_Rucksack_Black_M41","OPTRE_ILCS_Rucksack_Heavy_M73"], // Backpacks
						"OPTRE_UNSC_CH252D_Helmet", // Helmets
						"OPTRE_ANPRC_521_Black" // Radiobag
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
