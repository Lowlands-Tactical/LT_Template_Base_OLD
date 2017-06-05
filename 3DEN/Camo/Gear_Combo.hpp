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
				class LT_Gear_NLDLowtac
				{
					text = "Default NLD Units (LowTac)";
					data = "None";
					default = 1;
				};
				class LT_Gear_NLD1980
				{
					text = "NLD 1980";
					data = "\lt_template_base\gear\Loadouts\NLD_80.sqf";
				};
				class LT_Gear_NLD2020
				{
					text = "NLD 2020";
					data = "\lt_template_base\gear\Loadouts\NLD_2020.sqf";
				};
				class LT_Gear_USM16A2
				{
					text = "US M16A2";
					data = "\lt_template_base\gear\Loadouts\US_M16A2.sqf";
				};
				class LT_Gear_USM16A4
				{
					text = "US M16A4";
					data = "\lt_template_base\gear\Loadouts\US_M16A4.sqf";
				};
				class LT_Gear_USM4A1
				{
					text = "US M4A1";
					data = "\lt_template_base\gear\Loadouts\US_M4A1.sqf";
				};
				class LT_Gear_USM4A1WDL
				{
					text = "US M4A1 Woodland";
					data = "\lt_template_base\gear\Loadouts\US_M4A1_WDL.sqf";
				};
				class LT_Gear_USM4A1DES
				{
					text = "US M4A1 Desert";
					data = "\lt_template_base\gear\Loadouts\US_M4A1_DES.sqf";
				};
				class LT_Gear_RACS
				{
					text = "Royal Army Corps of Sahrani";
					data = "\lt_template_base\gear\Loadouts\RACS.sqf";
				};
				class LT_Gear_RU_1980
				{
					text = "Russian 1980";
					data = "\lt_template_base\gear\Loadouts\RU_1980.sqf";
				};
				class LT_Gear_RU_1990
				{
					text = "Russian 1990";
					data = "\lt_template_base\gear\Loadouts\RU_1990.sqf";
				};
				class LT_Gear_RU_2010
				{
					text = "Russian 2010";
					data = "\lt_template_base\gear\Loadouts\RU_2010.sqf";
				};
				class LT_Gear_TKA
				{
					text = "Takistani Army";
					data = "\lt_template_base\gear\Loadouts\TKA.sqf";
				};
				class LT_Gear_UK_L85A2
				{
					text = "British";
					data = "\lt_template_base\gear\Loadouts\UL_L85A2.sqf";
				};
				class LT_Gear_DE_G36
				{
					text = "German G36";
					data = "\lt_template_base\gear\Loadouts\DE_G36.sqf";
				};
				class LT_Gear_DE_G36_WDL
				{
					text = "German G36 (Camo)";
					data = "\lt_template_base\gear\Loadouts\DE_G36_WDL.sqf";
				};
				class LT_Gear_Czech
				{
					text = "Army of the Czech Republic";
					data = "\lt_template_base\gear\Loadouts\CZ_BREN.sqf";
				};
				class LT_Gear_PMC_MK16_Des
				{
					text = "PMC Mk16 (Desert)";
					data = "\lt_template_base\gear\Loadouts\PMC_MK16_Des.sqf";
				};
				class LT_Gear_PMC_Mk16_Black
				{
					text = "PMC Mk16 (Black)";
					data = "\lt_template_base\gear\Loadouts\PMC_Mk16_Black.sqf";
				};
				class LT_Gear_PMC_Mk17_Des
				{
					text = "PMC Mk17 (Desert)";
					data = "\lt_template_base\gear\Loadouts\PMC_Mk17_Des.sqf";
				};
				class LT_Gear_PMC_Mk17_Black
				{
					text = "PMC Mk17 (Black)";
					data = "\lt_template_base\gear\Loadouts\PMC_Mk17_Black.sqf";
				};
				class LT_Gear_PMC_XM8
				{
					text = "PMC XM8";
					data = "\lt_template_base\gear\Loadouts\PMC_XM8.sqf";
				};
				class LT_Gear_NATO_2035
				{
					text = "NATO 2035";
					data = "\lt_template_base\gear\Loadouts\NATO_2035.sqf";
				};
				class LT_Gear_CSAT_2035
				{
					text = "CSAT 2035";
					data = "\lt_template_base\gear\Loadouts\CSAT_2035.sqf";
				};				
				class LT_Gear_AAF_2035
				{
					text = "AAF 2035";
					data = "\lt_template_base\gear\Loadouts\AAF_2035.sqf";
				};				
				class LT_Gear_Guerilla_2035	
				{
					text = "Guerilla 2035";
					data = "\lt_template_base\gear\Loadouts\FIA_2035.sqf";
				};							
			};
		};
	};
};