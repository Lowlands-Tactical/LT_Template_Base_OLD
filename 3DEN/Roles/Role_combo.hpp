// Your attribute class
class LT_role_combo: Title
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
				class LT_Role_custom {
					text = "Custom role (via arsenal)";
					data = "custom";
					default = 1;
				};
				class LT_Role_CO {
					text = "Commander";
					data = "co";
				};
				class LT_Role_COPLAS {
					text = "Commander /w Plasma";
					data = "coplas";
				};
			  class LT_Role_DC {
			    data = "dc";
			    text = "Squad leader";
			  };
				class LT_Role_rad {
					data = "radio";
					text = "Radioman";
				};
				class LT_Role_M {
					data = "m";
					text = "Medic";
				};
				class LT_Role_FTL {
			    data = "ftl";
			    text = "Fire team leader";
			  };
				class LT_Role_AR {
			    data = "ar";
			    text = "Automatic rifleman";
			  };
			  class LT_Role_AAR {
			    data = "aar";
			    text = "Assistant automatic rifleman";
			  };
			  class LT_Role_RAT {
			    data = "rat";
			    text = "Rifleman (AT)";
			  };
			  class LT_Role_DM {
			    data = "dm";
			    text = "Designated marksman";
			  };
				class LT_Role_MMGG {
			    data = "mmgg";
			    text = "Medium mg gunner";
			  };
			  class LT_Role_MMGAG {
			    data = "mmgag";
			    text = "Medium mg assistant";
			  };
			  class LT_Role_HMGG {
			    data = "hmgg";
			    text = "Heavy mg gunner";
			  };
			  class LT_Role_HMGAG {
			    data = "hmgag";
			    text = "Heavy mg assistant";
			  };
			  class LT_Role_MATG {
			    data = "matg";
			    text = "Medium AT gunner";
			  };
			  class LT_Role_MATAG {
			    data = "matag";
			    text = "Medium AT assistant";
			  };
			  class LT_Role_HATG {
			    data = "hatg";
			    text = "Heavy AT gunner";
			  };
			  class LT_Role_HATAG {
			    data = "hatag";
			    text = "Heavy AT assistant gunner";
			  };
				class LT_Role_HMGGS {
			    data = "hmggs";
			    text = "Heavy MG gunner (Static)";
			  };
			  class LT_Role_HMGAGS {
			    data = "hmgags";
			    text = "Heavy MG assistant gunner (Static)";
			  };
			  class LT_Role_STATG {
			    data = "STATG";
			    text = "Static AT gunner";
			  };
			  class LT_Role_STATAG {
			    data = "STATAG";
			    text = "Static AT assistant gunner";
			  };
			  class LT_Role_MTRG {
			    data = "mtrg";
			    text = "Mortar gunner (Static)";
			  };
			  class LT_Role_MTRAG {
			    data = "mtrag";
			    text = "Mortar assistant gunner (Static)";
			  };class LT_Role_MSAMG {
			    data = "msamg";
			    text = "Medium SAM gunner";
			  };
			  class LT_Role_MSAMAG {
			    data = "msamag";
			    text = "Medium SAM assistant gunner";
			  };
			  class LT_Role_SN {
			    data = "sn";
			    text = "Sniper";
			  };
			  class LT_Role_SP {
			    data = "sp";
			    text = "Spotter";
			  };
				class LT_Role_VC {
			    data = "vc";
			    text = "Vehicle commander";
			  };
			  class LT_Role_VG {
			    data = "vg";
			    text = "Vehicle gunner";
			  };
			  class LT_Role_VD {
			    data = "vd";
			    text = "Vehicle driver (repair)";
			  };
				class LT_Role_PP {
					data = "pp";
					text = "Air vehicle pilot / co-pilot";
				};
				class LT_Role_PCC {
			    data = "pcc";
			    text = "Air vehicle co-pilot (repair) / crew chief (repair)";
			  };
				class LT_Role_PC {
			    data = "pc";
			    text = "Air vehicle crew";
			  };
				class LT_Role_ENG {
					data = "eng";
					text = "Engineer (demo)";
				};
				class LT_Role_ENGM {
					data = "engm";
					text = "Engineer (mines)";
				};
				class LT_Role_UAV {
					data = "uav";
					text = "UAV Operator";
				};
			  class LT_Role_JTAC {
			    data = "jtac";
			    text = "JTAC operator";
			  };
				class LT_Role_R {
					data = "r";
					text = "Rifleman";
				};
			  class LT_Role_CAR {
			    data = "car";
			    text = "Carabineer";
			  };
			  class LT_Role_SMG {
			    data = "smg";
			    text = "Submachinegunner";
			  };
				class LT_Role_RG {
					data = "rg";
					text = "Rifleman Grenadier";
				};
			  class LT_Role_LVDW {
			    data = "lvdw";
			    text = "Lul van de week";
			  };
				class LT_Role_GREN {
					data = "gren";
					text = "Grenadier (Primary Grenadlauncher /w fun nades and sidearm)";
				};
				class LT_Role_FLAMETH {
					data = "flameth";
					text = "Flamethrower";
				};
				class LT_Role_SHOT {
					data = "shot";
					text = "Shotgunner";
				};
				class LT_Role_PLASMAG {
					data = "plasmag";
					text = "Plasma Gunner";
				};
				class LT_Role_PLASMAAG {
					data = "plasmaag";
					text = "Plasma Assistant Gunner";
				};
				class LT_Role_PLASMAG {
					data = "specialg";
					text = "Special Gunner";
				};
				class LT_Role_PLASMAAG {
					data = "specialag";
					text = "Special Assistant Gunner";
				};

				// Faction Specifics
				class LT_Role_COM {
					data = "com";
					text = "Imperial - Commisar";
				};
				class LT_Role_COMwP {
					data = "complas";
					text = "Imperial - Commisar /w Plasma";
				};
				class LT_Role_PRI {
					data = "pri";
					text = "Imperial - Tech Priest (Engineer/Repair)";
				};
				class LT_Role_RANGER {
					data = "ranger";
					text = "Imperial - Skitarii Ranger AT";
				};
				class LT_Role_RANGERAT {
					data = "rangerAT";
					text = "Imperial - Skitarii Ranger AT";
				};
				class LT_Role_SISTER {
					data = "sister";
					text = "Imperial - Sisters";
				};
				class LT_Role_SISTERMEDIC {
					data = "sisterMedic";
					text = "Imperial - Sisters Medic";
				};
				
				// SPACE MARINES
				class LT_Role_SMARINE {
					data = "smarine";
					text = "Space Marine";
				};
				class LT_Role_SMARINESERGEANT {
					data = "smarineSergeant";
					text = "Space Marine Sergeant";
				};
				class LT_Role_SMARINEHEAVY {
					data = "smarineHeavy";
					text = "Space Marine Heavy Bolter";
				};
				class LT_Role_SMARINEMELTA {
					data = "smarineMelta";
					text = "Space Marine Meltagunner";
				};
				class LT_Role_SMARINEFLAMETH {
					data = "smarineFlameth";
					text = "Space Marine Flamethrower";
				};
			};
		};
	};
};
