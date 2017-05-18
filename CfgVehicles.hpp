class CfgVehicles {
	class Logic;
	class Module_F: Logic {
		class ArgumentsBaseUnits {
		};
	};
	#include "gear\MissionModules\LT_setItemsModule.hpp" 				// periority 1
	#include "AI\UPSMON\MissionModules\UPSMON_MainModule.hpp" 	// periority 2
	#include "AI\UPSMON\MissionModules\UPSMON_PatrolModule.hpp" // periority 3
	#include "AI\GARRISON\MissionModules\Garrison_Module.hpp" 	// periority 4
	#include "AI\AutoZone\AutoZone.hpp" 	// priority 5
	#include "AI\ModuleDefense\moduleDefense.hpp" // priority 6
	#include "AI\CleanUp\moduleCleanUp.hpp" // Prio #7
};
