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
				class LT_Gear_Empty
				{
					text = "Empty";
					data = "\lt_template_base\gear\Loadouts\Empty.sqf";
					default = 1;
				};
				class LT_Gear_USA_M1GwM1
				{
					text = "USA - M1 Garand /w M1 Carbine";
					data = "\lt_template_base\gear\Loadouts\USA_M1GwM1.sqf";
				};
				class LT_Gear_USA_M1GwM1A1
				{
					text = "USA - M1 Garand /w M1A1 Carbine";
					data = "\lt_template_base\gear\Loadouts\USA_M1GwM1A1.sqf";
				};
				class LT_Gear_USA_Spring
				{
					text = "USA - Springfield";
					data = "\lt_template_base\gear\Loadouts\USA_Spring.sqf";
				};
				class LT_Gear_USA_Thompson
				{
					text = "USA - Thompson";
					data = "\lt_template_base\gear\Loadouts\USA_Thompson.sqf";
				};
				class LT_Gear_UK_EnfieldMk4
				{
					text = "UK  - Lee Enfield mk.4";
					data = "\lt_template_base\gear\Loadouts\UK_EnfieldMk4.sqf";
				};
				class LT_Gear_UK_EnfieldMk5
				{
					text = "UK  - Lee Enfield mk.5 (Jungle)";
					data = "\lt_template_base\gear\Loadouts\UK_EnfieldMk5.sqf";
				};
				class LT_Gear_UK_Sten
				{
					text = "UK  - Sten";
					data = "\lt_template_base\gear\Loadouts\UK_Sten.sqf";
				};
				class LT_Gear_USSR_Mosin
				{
					text = "USSR - Mosin";
					data = "\lt_template_base\gear\Loadouts\USSR_Mosin.sqf";
				};
				class LT_Gear_USSR_SVT
				{
					text = "USSR - SVT-40";
					data = "\lt_template_base\gear\Loadouts\USSR_SVT.sqf";
				};
				class LT_Gear_USSR_PPsh
				{
					text = "USSR - PPsh";
					data = "\lt_template_base\gear\Loadouts\USSR_PPsh.sqf";
				};
				class LT_Gear_GER_G41
				{
					text = "GER - G41";
					data = "\lt_template_base\gear\Loadouts\GER_G41.sqf";
				};
				class LT_Gear_GER_G43
				{
					text = "GER - G43";
					data = "\lt_template_base\gear\Loadouts\GER_G43.sqf";
				};
				class LT_Gear_GER_K98
				{
					text = "GER - Kar98";
					data = "\lt_template_base\gear\Loadouts\GER_K98.sqf";
				};
				class LT_Gear_GER_FG42
				{
					text = "GER - FG42-G";
					data = "\lt_template_base\gear\Loadouts\GER_FG42.sqf";
				};
				class LT_Gear_GER_MP40
				{
					text = "GER - MP40";
					data = "\lt_template_base\gear\Loadouts\GER_MP40STG44.sqf";
				};
				class LT_Gear_IJA_Type99
				{
					text = "IJA - Type99";
					data = "\lt_template_base\gear\Loadouts\IJA_Type99.sqf";
				};
			};
		};
	};
};
