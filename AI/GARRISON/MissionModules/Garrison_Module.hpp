class LT_Garrison_Module: Module_F {
	scope = 2;
	displayName = "Garrison";
	icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
	category = "LT_missionModules";

	function = "lt_fnc_GarrisonInit";
	functionPriority = 4;
	isGlobal = 1;
	isTriggerActivated = 1;
	isDisposable = 0;

	class Arguments {
		class Radius {
			displayName = "Radius";
			description = "How big the area is where units will try to find cover";
			typeName = "NUMBER";
			defaultValue = 100;
		};
		class Stationary {
			displayName = "Stationary";
			description = "Units will not patrol but stay in their building positions";
			typeName = "BOOL";
			defaultValue = 0;
		};
		class CapacityChance {
			displayName = "Chance to be place in building";
			description = "Chance to be place in building";
			typeName = "NUMBER";
			defaultValue = 60;
		};
		class MaxInBuilding {
			displayName = "Max units in a building";
			description = "Max units in a building";
			typeName = "NUMBER";
			defaultValue = 0;
		};
		class Warping {
			displayName = "Warping";
			description = "Units will be placed directly in a building position without walking to it.";
			typeName = "BOOL";
			defaultValue = 0;
		};
		class CQCAI {
			displayName = "Use CQC AI";
			description = "CQC AI";
			typeName = "BOOL";
			defaultValue = 0;
		};
	};

	class ModuleDescription {};
};
