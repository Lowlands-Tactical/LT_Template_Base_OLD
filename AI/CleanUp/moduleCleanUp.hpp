class LT_CleanUp_Module: Module_F
{
	// Standard object definitions
	scope = 2;
	displayName = "Clean Up";
	icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
	category = "LT_missionModules";

	function = "lt_fnc_cleanUp";
	functionPriority = 7;
	isGlobal = 0;
	isTriggerActivated = 1;
	isDisposable = 0;
	is3DEN = 0;

  class ModuleDescription {};

  class Arguments
	{
    class Defense_Markers {
      displayName = "Marker Names";
		  description = "A comma seperated list of marker-names that need cleaning up.";
		  typeName = "STRING";
		  defaultValue = "";
    };
    class Defence_Sides {
      displayName = "Sides";
		  description = "A comma seperated list of sides that need cleaning up. (WEST,EAST,GUER,CIV)";
		  typeName = "STRING";
		  defaultValue = "";
    };
  };

};
