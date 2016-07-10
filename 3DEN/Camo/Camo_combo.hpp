// Your attribute class
class LT_Camo_combo: Title
{
	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeLoad = "diag_log format ['*-* test load %1*-*' ,_config]; _ctrl = _this controlsGroupCtrl 100;_attCtrl = getText( _config >> 'control' );_staticItemsCfg = configFile >> 'Cfg3DEN' >> 'Attributes' >> _attCtrl >> 'Controls' >> 'Value' >> 'items';_fnc_setValues = {private [ '_index' ];params[ '_path', [ '_apply', true ] ];{_cfg = _x; if ( _apply ) then {	_index = _ctrl lbAdd getText( _cfg >> 'text' ); _ctrl lbSetData [ _index, getText( _cfg >> 'data' ) ];} else {_index = _foreachindex;}; if ( !( _value isEqualType '' ) ) then {if ( _index isEqualTo _value ) then {_ctrl lbSetCurSel _index;} ;} else {if ( _value == getText( _cfg >> 'data' ) ) then {_ctrl lbSetCurSel _index;};}; } forEach configProperties [_path,'isclass _x'];}; if ( isClass _staticItemsCfg ) then {[ _staticItemsCfg, false ] call _fnc_setValues;}; _dynamicItemsCfg = configFile >> 'Cfg3DEN' >> 'Attributes' >> _attCtrl >> 'Controls' >> 'Value' >> 'ItemsConfig'; if ( isNumber( _dynamicItemsCfg >> 'localConfig' ) && { getNumber( _dynamicItemsCfg >> 'localConfig' ) > 0 } ) then { _class = getArray( _dynamicItemsCfg >> 'path' ) select 0; _path = missionConfigFile >> _class; if ( isClass _path ) then { _path call _fnc_setValues;};};";

	//Thanks to R3vo (https://github.com/RevoArma3/3denEnhanced/blob/master/3denEnhanced/controls/garrisonCoverageCombo.hpp)
	attributeSave =	"diag_log  format ['*-* test save config %1*-*' ,_config]; diag_log   format ['*-* test save this %1*-*' , _this]; diag_log format ['*-* test save value %1*-*', _value]; _ctrl = _this controlsGroupCtrl 100;_ctrl lbData lbCurSel _ctrl;";
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
				class LT_Camo_Desert
				{
					text = "Desert";
					data =  ["NLD_DST_Camo","NLD_DST_Vest","NLD_DST_Carryall_Empty","NLD_DST_Helmet","lt_tfr_dst"];
				};
				class LT_Camo_Woodland
				{
					text = "Woodland";
					data = ["NLD_WLD_Camo","NLD_WLD_Vest","NLD_WLD_Carryall_Empty","NLD_WLD_Helmet","lt_tfr_wdl"];
				};
				class LT_Camo_UN_Woodland
				{
					text = "UN (Woodland)";
					data = ["NLD_WLD_Camo","NLD_UN_Vest","NLD_WLD_Carryall_B","NLD_UN_Helmet","lt_tfr_wdl"];
				};
				class LT_Camo_UN_Desert
				{
					text = "UN (Desert)";
					data = ["NLD_DST_Camo","NLD_UN_Vest","NLD_DST_Carryall_Empty","NLD_UN_Helmet","lt_tfr_dst"];
				};
				class LT_Camo_NFPTAN
				{
					text = "NFP-TAN";
					data = ["NLD_NFPT_Camo","NLD_NFPT_Vest","NLD_NFPT_Carryall_Empty","NLD_NFPT_Helmet","lt_tfr_dst"];
				};
				class LT_Camo_NFPGREEN
				{
					text = "NFP-GREEN";
					data = ["NLD_NFPG_Camo","NLD_NFPG_Vest","NLD_NFPG_Carryall_Empty","NLD_NFPG_Helmet","lt_tfr_wdl"];
				};
				class LT_Camo_WINTER
				{
					text = "Winter";
					data = ["NLD_WTR_Camo","NLD_WTR_Vest","NLD_WTR_Carryall_Empty","NLD_WTR_Helmet","lt_tfr_wdl"];
				};
				class LT_Camo_JUNGLE
				{
					text = "Jungle";
					data = ["NLD_JGL_Camo","NLD_JGL_Vest","NLD_JGL_Carryall_Empty","NLD_JGL_Helmet","lt_tfr_wdl"];
				};
				class LT_Camo_SF
				{
					text = "Special Forces Black";
					data = ["NLD_SF_Camo","NLD_SF_Vest","NLD_SF_Carryall_Empty","NLD_SF_Helmet","lt_tfr_wdl"];
				};
				class LT_Camo_SFMTP
				{
					text = "Special forces MTP";
					data = ["NLD_MTP_Camo","NLD_MTP_PlateCarrier","NLD_MTP_Carryall_Empty","NLD_MTP_ECH","lt_tfr_wdl"];
				};
				class LT_Camo_KM
				{
					text = "Koninklijke Marine";
					data = ["NLD_KM_Camo","V_I_G_resistanceLeader_F","NLD_KM_Carryall_Empty","NLD_KM_Helmet","lt_tfr_wdl"];
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
