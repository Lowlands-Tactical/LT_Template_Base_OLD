class LT_AutoZone_Module: Module_F {
	scope = 2;
	displayName = "Automatic Zones";
	icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
	category = "LT_missionModules";
	function = "lt_fnc_autozoneWrapper";
	functionPriority = 4;
	isGlobal = 0;
	isTriggerActivated = 0;
	isDisposable = 0;


	class Arguments {
		class MarkerName {
			displayName = "MarkerName";
			description = "Name of the marker in which the units will patrol";
			typeName = "STRING";
			defaultValue = "";
		};

		class Faction {
			displayName = "Faction";
			description = "Select the faction that patrols the indicated marker. Please note, not all factions have all the gear.";
			typeName = "STRING";
			class values {
				class OPF_F {name = "C.S.A.T."; value="OPF_F"; };
				class OPF_G_F {name = "REDFOR Guerilla"; value="OPF_G_F"; };
				class IND_F {name = "A.A.F."; value="IND_F"; };
				class IND_G_F {name = "GREENFOR Guerilla"; value="IND_G_F"; };
				class OPF_T_F {name = "C.S.A.T. (Tanoa)"; value="OPF_T_F"; };
				class IND_C_F {name = "Syndikat"; value="IND_C_F"; };
				class NLDO_RU_VDV_76 {name = "Russian VDV 76"; value="NLDO_RU_VDV_76"; };
				class NLDO_RU_VDV_31 {name = "Russian VDV 31"; value="NLDO_RU_VDV_31"; };
				class NLDO_UA_UAF_95 {name = "Ukraine 95th inf bat"; value="NLDO_UA_UAF_95"; };
				class CUP_O_TK_INS {name = "Takistani Militia"; value="CUP_O_TK_INS"; };
				class CUP_O_TK {name = "Takistani Army"; value="CUP_O_TK"; };
				class CUP_O_CHDKZ {name = "ChDKZ"; value="CUP_O_CHDKZ"; };
				class CUP_O_SLA {name = "Sahrani Liberation Army"; value="CUP_O_SLA"; };
				class CUP_O_RU_EMR {name = "Russia (EMR)"; value="CUP_O_RU_EMR"; };
				class CUP_O_RU_FLORA {name = "Russia (Flora)"; value="CUP_O_RU_FLORA"; };
			};
		};

		class RadioRange {
			displayName = "Radio Range";
			description = "Alert other units in this range (m). The heavier the vehicle, the longer the range.";
			typeName = "NUMBER";
			defaultValue = 300;
		};

		class Infantry {
			displayName = "Infantry";
			description = "The amount of groups in the managed zone.";
			typeName = "NUMBER";
			defaultValue = 1;
		};

		class GroupSize {
			displayName = "Group Size";
			description = "The size of groups in the amount of units.";
			typeName = "NUMBER";
			defaultValue = 8;
		};

		class GroupVariation {
			displayName = "Group Variation";
			description = "Upper and lower limit of group size variation.";
			typeName = "NUMBER";
			defaultValue = 1;
		};

		class Cars {
			displayName = "Cars";
			description = "Technicals and other cars";
			typeName = "NUMBER";
			defaultValue = 0;
		};

		class IFVs {
			displayName = "IFVs";
			description = "IFVs, APCs and BMPs and stuff";
			typeName = "NUMBER";
			defaultValue = 0;
		};

		class Tanks {
			displayName = "Tanks";
			description = "Little Machines of Death";
			typeName = "NUMBER";
			defaultValue = 0;
		};

		class Helicopters {
			displayName = "Helicopters";
			description = "Helicopters, flying machines that aren't gunships";
			typeName = "NUMBER";
			defaultValue = 0;
		};

		class Occupation {
			displayName = "City Occupation (%)";
			description = "The amount of units that go into houses based on the amount of houses found.";
			typeName = "NUMBER";
			defaultValue = 0;
		};

		class Patrol {
			displayName = "City Patrols (%)";
			description = "Patrols of 5 units based on the amount of houses bla bla look at Occupation.";
			typeName = "NUMBER";
			defaultValue = 0;
		};

	};

	class ModuleDescription {};
};
