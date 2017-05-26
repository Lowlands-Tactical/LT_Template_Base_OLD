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
				class LT_Gear_None
				{
					text = "NLD Units (LowTac)";
					data = "None";
					default = 1;
				};
				class LT_Gear_US80s
				{
					text = "US80s";
					data = "\lt_template_base\gear\Loadouts\us80.sqf";
				};
				class LT_Gear_US90
				{
					text = "US90/00s";
					data = "\lt_template_base\gear\Loadouts\us90.sqf";
				};
				class LT_Gear_US2010
				{
					text = "US2010s";
					data = "\lt_template_base\gear\Loadouts\US2010.sqf";
				};
				class LT_Gear_RU70
				{
					text = "RU70s";
					data = "\lt_template_base\gear\Loadouts\RU70.sqf";
				};
				class LT_Gear_RU90
				{
					text = "RU90s";
					data = "\lt_template_base\gear\Loadouts\RU90.sqf";
				};
				class LT_Gear_RU2010
				{
					text = "RU2010s";
					data = "\lt_template_base\gear\Loadouts\RU2010.sqf";
				};
				class LT_Gear_RUFLORA
				{
					text = "RU (Flora)";
					data = "\lt_template_base\gear\Loadouts\RU (Flora).sqf";
				};
				class LT_Gear_Politie
				{
					text = "Politie";
					data = "\lt_template_base\gear\Loadouts\Politie.sqf";
				};
				class LT_Gear_Rebellen
				{
					text = "Rebellen";
					data = "\lt_template_base\gear\Loadouts\Rebellen.sqf";
				};
				class LT_Gear_Brits
				{
					text = "Brits";
					data = "\lt_template_base\gear\Loadouts\Brits.sqf";
				};
				class LT_Gear_BritsXM8
				{
					text = "Brits (XM-8 serie)";
					data = "\lt_template_base\gear\Loadouts\Brits (XM-8 serie).sqf";
				};
				class LT_Gear_PMC
				{
					text = "PMC (Black SCAR)";
					data = "\lt_template_base\gear\Loadouts\PMC (Black SCAR).sqf";
				};
				class LT_Gear_Interventie
				{
					text = "Interventie";
					data = "\lt_template_base\gear\Loadouts\Interventie.sqf";
				};
			};
		};
	};
};
