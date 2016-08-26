class LT_LowTacSetItemsModule: Module_F {
		scope = 2;
		displayName = "Lowtac Gear/Item settings";
		icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
		category = "LT_missionModules";

		function = "lt_fnc_setItems";
		functionPriority = 1;
		isGlobal = 2;
		isTriggerActivated = 0;
		class Arguments {
			#include "LT_setItemsArguments.hpp"
		};
};
