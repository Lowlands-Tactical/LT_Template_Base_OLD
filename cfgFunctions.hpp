// Functions for lt_template_base

class cfgFunctions
{
  class LT
  {
    class template_base
    {
      file = "\lt_template_base\functions";
      class printVersion {};
      class setFog {};
      class setWeather {};
      class setTime {};
      class changeBackpack {};
      class changeVest {};
      class changeUniform {};
      class checkClassExist {};
      class deleteUnits {};
      class setItems {};
      class setVehicleGear {};
      class createGroup {};
      class checkUnitWeight {};
      class getWeaponMagazineClasses {};
      class NVGParameters {};
      class teleportGroup {};
      class PreInitFactionCompositions {preInit = 1;};
      class EqualArrayLengths {};
      class isLauncherDisposable {};
      class SupplyDrop {};
      class acreChannelPresets {};
    };
    class UPSMON
    {
      file = "\lt_template_base\functions\UPSMON";
      class UPSMONInitMainModule {};
      class UPSMONPatrolModule {};
    };
  	class GARRISON
  	{
  		file = "\lt_template_base\functions\GARRISON";
  		class GarrisonInit {};
  	};
    class AutoZone
    {
      file = "\lt_template_base\functions\autozone";
      class autozone {};
      class autozoneWrapper {};
	    class autozoneWrapper_v1_5 {};
    };
    class ModuleDefense
    {
      file = "\lt_template_base\functions\ModuleDefense";
      class defenseModule {};
      class doMortar {};
    };
    class AddActionModule
    {
      file = "\lt_template_base\functions\AddActionModule";
      class AddActionModuleInit {};
      class HandleAction {};
    };
    class ModuleCleanUp
    {
      file = "\lt_template_base\functions\CleanUp";
      class cleanUp {};
    };
    class TownSweep
    {
      file = "\lt_template_base\functions\TownSweep";
      class town_init {};
      class town_select {};
      class town_decrease {};
      class town_increase {};
      class town_populate {};
      class town_populateCity {};
    };
    class UnitSpawner
    {
      file = "\lt_template_base\functions\UnitSpawner";
      class UnitSpawnerModuleWrapper;
      class UnitSpawner;
    };
  	class Zeus
  	{
  		file = "\lt_template_base\functions\zeus";
  		class FillCombo {};
  		class HandleZeusEH {};
      class InitZeusEH {postInit = 1;};
  		class EmptyFunction {};
      class GetGUIValues {};
  	};
  };
  // Functions of F3 template - Thank you Ferstabinde!
  class F
  {
  	class zeus
  	{
  		file = "\lt_template_base\functions\f\zeus";
  		class zeusInit {};
  		class zeusAddAddons{};
  		class zeusAddObjects{};
  	};
  	class safeStart
  	{
  		file = "\lt_template_base\functions\f\safestart";
  		class safety{};
      class safeStartLoop{};
  	};
  	class mpEnd
  	{
  		file = "\lt_template_base\functions\f\mpEnd";
  		class mpEnd{};
  		class mpEndReceiver{};
  	};
  };
};
