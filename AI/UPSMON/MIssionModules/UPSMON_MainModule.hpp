class LT_MainModuleUPSMON: Module_F {
  scope = 2;
  displayName = "UPSMON Main module";
  icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
  category = "LT_missionModules";
  function = "lt_fnc_UPSMONInitMainModule";
  functionPriority = 2;
  isGlobal = 1;
  isTriggerActivated = 0;
  class Arguments {
    class LT_UPSMON_Debug {
      displayName = "Debug on/off";
      description = "When debugging is on you will see markers showing group leaders and destinations.";
      typeName = "NUMBER";
      class values {
        class Enabled {name = "Enabled"; value = 1;};
        class Disabled {name = "Disabled"; value = 0; default = 1;};
      };
    };
    class LT_UPSMON_maxwaiting {
      displayName = "Maximum waiting time";
      description = "The maximum time patrol groups will wait when arrived to target for doing another target.";
      typeName = "NUMBER";
      defaultValue = 10;
    };
    class LT_UPSMON_SRCHTIME {
      displayName = "Searching time";
      description = "Set How many time a unit will search around a suspect position";
      typeName = "NUMBER";
      defaultValue = 90;
    };
    class LT_UPSMON_sharedist {
      displayName = "Spotted share distance";
      description = "If you are spotted by AI group, how close the other AI group have to be to You , to be informed about your present position. over this, will lose target";
      typeName = "NUMBER";
      defaultValue = 800;
    };
    class LT_UPSMON_knowsAboutEnemy {
      displayName = "Knows about enemy";
      description = "When this number is reached you are put on the list of targets";
      typeName = "NUMBER";
      defaultValue = 1.5;
    };
    class LT_UPSMON_reinforcement {
      displayName = "Reinforcements";
      description = "Enable it to send reinforcements";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class LT_UPSMON_ARTILLERY_EAST_FIRE {
      displayName = "Artillery EAST";
      description = "set to true for doing east to fire";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class LT_UPSMON_ARTILLERY_WEST_FIRE {
      displayName = "Artillery WEST";
      description = "set to true for doing west to fire";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class LT_UPSMON_ARTILLERY_GUER_FIRE {
      displayName = "Artiller GUER";
      description = "set to true for doing resistance to fire";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class LT_UPSMON_SURRENDER {
      displayName = "Surrender";
      description = "Can the group surrender?";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class LT_UPSMON_WEST_SURRENDER {
      displayName = "Chance of Surrender WEST";
      description = "Chance of Surrender/100";
      typeName = "NUMBER";
      defaultValue = 10;
    };
    class LT_UPSMON_EAST_SURRENDER {
      displayName = "Chance of Surrender EAST";
      description = "Chance of Surrender/100";
      typeName = "NUMBER";
      defaultValue = 10;
    };
    class LT_UPSMON_GUER_SURRENDER {
      displayName = "Chance of Surrender GUER";
      description = "Chance of Surrender/100";
      typeName = "NUMBER";
      defaultValue = 10;
    };
    class LT_UPSMON_WEST_RETREAT {
      displayName = "Chance of Retreating WEST";
      description = "Chance of Retreating/100";
      typeName = "NUMBER";
      defaultValue = 0;
    };
    class LT_UPSMON_EAST_RETREAT {
      displayName = "Chance of Retreating EAST";
      description = "Chance of Retreating/100";
      typeName = "NUMBER";
      defaultValue = 0;
    };
    class LT_UPSMON_GUER_RETREAT {
      displayName = "Chance of Retreating GUER";
      description = "Chance of Retreating/100";
      typeName = "NUMBER";
      defaultValue = 0;
    };
    class LT_UPSMON_Ammountofhostility {
      displayName = "Civilian Hostility";
      description = "Civilian Hostility (Set to 0 if you want to disable the function)";
      typeName = "NUMBER";
      defaultValue = 0;
    };

    class LT_UPSMON_WEST_HM {
      displayName = "UPSMON_WEST_HM";
      description = "";
      typeName = "NUMBER";
      defaultValue = 10;
    };
    class LT_UPSMON_EAST_HM {
      displayName = "UPSMON_WEST_HM";
      description = "";
      typeName = "NUMBER";
      defaultValue = 100;
    };
    class LT_UPSMON_GUER_HM {
      displayName = "UPSMON_WEST_HM";
      description = "";
      typeName = "NUMBER";
      defaultValue = 100;
    };
    class LT_UPSMON_flyInHeight {
      displayName = "Helicopter flight height";
      description = "Height that heli will fly this input will be randomised in a 10%";
      typeName = "NUMBER";
      defaultValue = 40;
    };
    class LT_UPSMON_paradropdist {
      displayName = "Paradrop distance";
      description = "Max distance to target for doing para-drop, will be randomised between 0 and 100% of this value.";
      typeName = "NUMBER";
      defaultValue = 400;
    };
    class LT_UPSMON_paraflyinheight {
      displayName = "Helicopter flight height (for paradropping)";
      description = "Height that heli will fly if his mission is paradroping.";
      typeName = "NUMBER";
      defaultValue = 110;
    };
    class LT_UPSMON_searchVehicledist {
      displayName = "Distance from destination.";
      description = "AI will try to find a vehicle if the distance to destination is further than this number";
      typeName = "NUMBER";
      defaultValue = 900;
    };
    class LT_UPSMON_closeenoughV {
      displayName = "How far disembark";
      description = "How far enemies will disembark from non armoured vehicle from destination";
      typeName = "NUMBER";
      defaultValue = 800;
    };
    class LT_UPSMON_closeenough {
      displayName = "How far set behaviour";
      description = "How close unit has to be to target to generate a new one target or to enter stealth mode";
      typeName = "NUMBER";
      defaultValue = 300;
    };
    class LT_UPSMON_deadBodiesReact {
      displayName = "React to dead bodies";
      description = "Doe the unit react to near dead bodies";
      typeName = "BOOL";
      defaultValue = 1;
    };
    class LT_UPSMON_useMines {
      displayName = "Use mines";
      description = "Do unit can lay down mine (ambush and defense module)";
      typeName = "BOOL";
      defaultValue = 1;
    };
    class LT_UPSMON_ambushdist {
      displayName = "Distance from ambush point";
      description = "Distance from ambush point";
      typeName = "NUMBER";
      defaultValue = 100;
    };
    class LT_UPSMON_USE_SMOKE {
      displayName = "Use smoke";
      description = "% of chance to use smoke by team members when someone wounded or killed in the group";
      typeName = "NUMBER";
      defaultValue = 20;
    };
    class LT_UPSMON_Allowfireplace {
      displayName = "Allow fire place";
      description = "Allow Relax units during nightime to create fireplace";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class LT_UPSMON_AllowRearm {
      displayName = "Allow Units to Rearm";
      description = "Allow Units to Rearm";
      typeName = "BOOL";
      defaultValue = 0;
    };
  };
  class ModuleDescription {
    description = "Main UPSMON Module";
    sync[] = {};
  };
};
