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
      class setItems {};
      class setVehicleGear {};
      class createGroup {};
      class checkUnitWeight {};
      class getWeaponMagazineClasses {};
      class NVGParameters {};
      class teleportGroup {};
      class PreInitFactionCompositions {preInit = 1;};
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
    };
    class ModuleDefense
    {
      file = "\lt_template_base\functions\ModuleDefense";
      class defenseModule {};
      class doMortar {};
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
