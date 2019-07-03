// Your attribute class
class LT_Gear_combo: Title
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
				class LT_Gear_NONE
				{
					text = "Geen Gear (None)";
					data = "None";
					default = 1;
				};
				class LT_Gear_USA_Infrantry
				{
					text = "USA Infrantry (M16 / M1 Garand)";
					data = "\lt_template_base\gear\Loadouts\USA_Infrantry.sqf";
				};
				class LT_Gear_US_Marines
				{
					text = "US Marines (M16 / M1 Carbine)";
					data = "\lt_template_base\gear\Loadouts\US_Marines.sqf";
				};
				class LT_Gear_USA_Airborne
				{
					text = "USA Airborne (M16 / XM177E2)";
					data = "\lt_template_base\gear\Loadouts\USA_Airborne.sqf";
				};
				class LT_Gear_USA_Seals
				{
					text = "USA Seals (XM177E2 / UZI)";
					data = "\lt_template_base\gear\Loadouts\USA_Seals.sqf";
				};
				class LT_Gear_USA_Speshual
				{
					text = "USA Special Forces (XM177E1)";
					data = "\lt_template_base\gear\Loadouts\USA_Speshual.sqf";
				};
				class LT_Gear_USA_Speshual_2
				{
					text = "USA Special Forces (M16 Camo's)";
					data = "\lt_template_base\gear\Loadouts\USA_Speshual_2.sqf";
				};
				class LT_Gear_USA_WW2
				{
					text = "USA WW2";
					data = "\lt_template_base\gear\Loadouts\USA_WW2.sqf";
				};
				class LT_Gear_RAR
				{
					text = "Royal Australian Regiment (L1A1)";
					data = "\lt_template_base\gear\Loadouts\RAR.sqf";
				};
				class LT_Gear_NZ_Infrantry
				{
					text = "New Sealand (L1A1)";
					data = "\lt_template_base\gear\Loadouts\NZ_Infrantry.sqf";
				};
				class LT_Gear_ROK_Infrantry
				{
					text = "ROK Infrantry (M16 / M1 Carbine)";
					data = "\lt_template_base\gear\Loadouts\ROK_Infrantry.sqf";
				};
				class LT_Gear_ROK_Infrantry_2
				{
					text = "ROK Infrantry (M16 / M1 Garand)";
					data = "\lt_template_base\gear\Loadouts\ROK_Infrantry_2.sqf";
				};
				class LT_Gear_NVA_Commandos
				{
					text = "NVA Commandos (AKS / SA58)";
					data = "\lt_template_base\gear\Loadouts\NVA_Commandos.sqf";
				};
				class LT_Gear_NVA_Main
				{
					text = "NVA Main Forces (AKS)";
					data = "\lt_template_base\gear\Loadouts\NVA_Main.sqf";
				};
				class LT_Gear_VC_Guerilla
				{
					text = "VC Guerilla (MAS / STG)";
					data = "\lt_template_base\gear\Loadouts\VC_Guerilla.sqf";
				};
				class LT_Gear_VC_Regional
				{
					text = "VC Regional (SKS / Type56)";
					data = "\lt_template_base\gear\Loadouts\VC_Regional.sqf";
				};
				class LT_Gear_VC_WW2
				{
					text = "VC WW2";
					data = "\lt_template_base\gear\Loadouts\VC_WW2.sqf";
				};
			};
		};
	};
};
