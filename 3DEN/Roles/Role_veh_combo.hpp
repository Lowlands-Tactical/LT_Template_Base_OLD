// Your attribute class
class LT_veh_role_combo: Title
{
	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeLoad = "_ctrl = _this controlsGroupCtrl 100;_attCtrl = getText( _config >> 'control' );_staticItemsCfg = configFile >> 'Cfg3DEN' >> 'Attributes' >> _attCtrl >> 'Controls' >> 'Value' >> 'items';_fnc_setValues = {private [ '_index' ];params[ '_path', [ '_apply', true ] ];{_cfg = _x; if ( _apply ) then {	_index = _ctrl lbAdd getText( _cfg >> 'text' ); _ctrl lbSetData [ _index, getText( _cfg >> 'data' ) ];} else {_index = _foreachindex;}; if ( !( _value isEqualType '' ) ) then {if ( _index isEqualTo _value ) then {_ctrl lbSetCurSel _index;} ;} else {if ( _value == getText( _cfg >> 'data' ) ) then {_ctrl lbSetCurSel _index;};}; } forEach configProperties [_path,'isclass _x'];}; if ( isClass _staticItemsCfg ) then {[ _staticItemsCfg, false ] call _fnc_setValues;};";

	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeSave =	"_ctrl = _this controlsGroupCtrl 100;_ctrl lbData lbCurSel _ctrl;";
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
				class LT_Veh_Role_custom {
					text = "Custom (via arsenal)";
					data = "custom";
					default = 1;
				};
				class LT_Veh_Role_TR {
					text = "Truck";
					data = "v_tr";
				};
				class LT_Veh_Role_Car {
					data = "v_car";
					text = "Car";
				};
				class LT_Veh_Role_IFV {
					data = "v_ifv";
					text = "IFV";
				};
				class LT_Veh_Role_Crate_Large {
					data = "crate_large";
					text = "Large ammocrate";
				};
				class LT_Veh_Role_Crate_Medium {
					data = "crate_med";
					text = "Medium ammocrate";
				};
				class LT_Veh_Role_Crate_Small {
					data = "crate_small";
					text = "Small ammocrate";
				};
				class LT_Veh_Role_Empty {
					data = "empty";
					text = "Empty";
				};
			};
		};
	};
};
