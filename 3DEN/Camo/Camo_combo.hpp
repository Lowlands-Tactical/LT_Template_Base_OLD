// Your attribute class
class LT_Camo_combo: Title
{
	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeLoad = "\
		_ctrl = _this controlsGroupCtrl 100;\
		_attCtrl = getText( _config >> 'control' );\
		_staticItemsCfg = configFile >> 'Cfg3DEN' >> 'Attributes' >> _attCtrl >> 'Controls' >> 'Value' >> 'items';\
		\
		_fnc_setValues = {\
			private [ '_index' ];\
			params[ '_path', [ '_apply', true ] ];\
			{\
				_cfg = _x;\
				if ( _apply ) then {\
					_index = _ctrl lbAdd getText( _cfg >> 'text' );\
					_ctrl lbSetData [ _index, getText( _cfg >> 'data' ) ];\
				}else{\
					_index = _foreachindex;\
				};\
				if ( !( _value isEqualType '' ) ) then {\
					if ( _index isEqualTo _value ) then {\
						_ctrl lbSetCurSel _index;\
					};\
				}else{\
					if ( _value == getText( _cfg >> 'data' ) ) then {\
						_ctrl lbSetCurSel _index;\
					};\
				};\
			}forEach configProperties [_path,'isclass _x'];\
		};\
		if ( isClass _staticItemsCfg ) then {\
			[ _staticItemsCfg, false ] call _fnc_setValues;\
		};\
	";

	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeSave =
	"\
		_ctrl = _this controlsGroupCtrl 100;\
		_ctrl lbData lbCurSel _ctrl;\
	";
	class Controls: Controls
	{
		class Title: Title{}; // Inherit existing title control. Text of any control with class Title will be changed to attribute displayName
		class Value: ctrlCombo
		{
			idc = 4567893;
			x = ATTRIBUTE_TITLE_W * GRID_W;
			w = ATTRIBUTE_CONTENT_W * GRID_W;
			h = SIZE_M * GRID_H;

			class Items
			{
				class LT_Camo_None
				{
					text = "None";
					data = "None";
					default = 1;
				};
				class LT_Camo_Desert
				{
					text = "Desert";
					data = "DST";
				};
				class LT_Camo_Woodland
				{
					text = "Woodland";
					data = "WLD";
				};
				class LT_Camo_UN_Woodland
				{
					text = "UN (Woodland)";
					data = "UN";
				};
				class LT_Camo_UN_Desert
				{
					text = "UN (Desert)";
					data = "UND";
				};
				class LT_Camo_NFPTAN
				{
					text = "NFP-TAN";
					data = "NFPT";
				};
				class LT_Camo_NFPGREEN
				{
					text = "NFP-GREEN";
					data = "NFPG";
				};
				class LT_Camo_WINTER
				{
					text = "Winter";
					data = "WTR";
				};
				class LT_Camo_JUNGLE
				{
					text = "Jungle";
					data = "JGL";
				};
				class LT_Camo_SF
				{
					text = "Special Forces Black";
					data = "SF";
				};
				class LT_Camo_SFMTP
				{
					text = "Special forces MTP";
					data = "SFMTP";
				};
				class LT_Camo_KM
				{
					text = "Koninklijke Marine";
					data = "KM";
				};
			};
		};
	};
};
