class LT_PatrolModuleUPSMON: Module_F {
  scope = 2;
  displayName = "UPSMON Patrolmodule";
  icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
  category = "LT_missionModules";
  function = "lt_fnc_UPSMONPatrolModule";
  functionPriority = 3;
  isGlobal = 1;
  isTriggerActivated = 1;
  class Arguments {
    class MarkerName {
      displayName = "MarkerName";
      description = "Name of the marker in which the units will patrol";
      typeName = "STRING";
      defaultValue = "";
    };
	class EmptyLine0 {
		displayName = "Common items";
		description = "";
		typeName = "STRING";
		class values {
			class empty {
				name = "------";
				value = ;
				default = 1;
			};
		};
	};
    class NoFollow {
      displayName = "No Follow";
      description = "Unit's will follow the enemy only within the marked area";
      defaultValue = 0;
      typeName = "BOOL";
    };
    class Random {
      displayName = "Random placement";
      description = "Select which type of random placed you want. When buildingpositions is selected keep the areamarker small. Recommended to use the 'No waypoint' with these types";
      typeName = "STRING";
      class values {
        class empty {name = "None"; value="NONE"; default=1;};
        class Random {name = "Spawn patrols at random positions"; value="RANDOM";};
        class RandomUp {name = "Spawn patrols on highest building positions"; value="RANDOMUP";};
        class RandomDn {name = "Spawn patrols on buildings ground floor positions"; value="RANDOMDN";};
        class RandomA {name = "Spawn patrols in all building positions"; value="RANDOMA";};
      };
    };
    class NoWaypoints {
      displayName = "No waypoints";
      description = "The patrols will not have any waypoints created by UPSMON";
      typeName = "STRING";
      class values {
        class empty {name = "None"; value="NONE"; default=1;};
        class NOWP {name = "No waypoints will be created until the group knows about enemies"; value="NOWP";};
        class NOWP2 {name = "No waypoints will be created. Only when one unit is injured/killed"; value="NOWP2";};
        class NOWP3 {name = "No waypoints will be created."; value="NOWP3";};
      };
    };
    class Fortify {
      displayName = "Fortify";
      description = "With this parameter the UPSMON group will occupy the nearest building and hold it";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class NoSmoke {
      displayName = "No Smoke";
      description = "Patrolling groups will not throw smoke";
      defaultValue = 0;
      typeName = "BOOL";
    };
	class EmptyLine1 {
		displayName = "Other items";
		description = "";
		typeName = "STRING";
		class values {
			class empty {
				name = "------";
				value = ;
				default = 1;
			};
		};
	};
    class DeleteNumber {
      displayName = "Dead bodies deletion";
      description = "This parameter will delete the dead bodies after a defined amount of time:";
      typeName = "NUMBER";
      defaultValue = 0;
    };
    class OnRoad {
      displayName = "Only road waypoints";
      description = "The group will only receive waypoints on roads";
      defaultValue = 0;
      typeName = "BOOL";
    };
    class LandDrop {
      displayName = "Landdrop";
      description = "Now by default an UPSMON group take an heli to move to his waypoint, the group will be paradrop. If you want that the helo land and unload his cargo, just add this parameter to the UPSMON group";
      defaultValue = 0;
      typeName = "BOOL";
    };
	class NoAI {
      displayName = "No AI";
      description = "With this parameter, the group will patrol without reacting to any enemy contact";
      defaultValue = 0;
      typeName = "BOOL";
    };
	class NoMove {
		displayName = "No move";
		description = "Unit will stay at start position until enemy is spotted, then they get a defensive role.";
		typeName = "BOOL";
		defaultValue = 0;
	};
	class NoWait {
		displayName = "No wait";
		description = "Do not wait at patrol end points.";
		typeName = "BOOL";
		defaultValue = 0;
	};
	class NoSlow {
		displayName = "No slow";
		description = "Keep default behaviour of unit (don't change to 'safe' and 'limited').";
		typeName = "BOOL";
		defaultValue = 0;
	};
    class NoVeh {
      displayName = "Do not use vehicles";
      description = "If the waypoint of an UPSMON infantry is far away from their current position they will try to search for vehicles (200m around the leader position).";
      typeName = "BOOL";
      defaultValue = 0;
    };
    class NoShare {
      displayName = "No Share";
      description = "This parameter will prevent a group from sharing known enemy locations to other UPSMON groups.";
      defaultValue = 0;
      typeName = "BOOL";
    };
    class RadioRangeNumber {
      displayName = "Radio Range";
      description = "You can set the radio range (in meters) for each UPSMON group, the radio range is linked to the reinforcement and artillery module. (by default:500)";
      typeName = "NUMBER";
      defaultValue = 500;
    };
	class DoRelax {
		displayName = "";
		description = "With this parameter, each units of the group will patrol (independently from each other), sit and talk within his marker area.";
		typeName = "BOOL";
		defaultValue = 0;
	};

	class EmptyLine2 {
		displayName = "Formation behaviour and speed.";
		description = "";
		typeName = "STRING";
		class values {
			class empty {
				name = "------";
				value = ;
				default = 1;
			};
		};
	};
    class Formation {
      displayName = "Formation";
      description = "Formation of patrols";
      typeName = "STRING";
      class values {
        class empty 	{name = "None"; value="NONE"; default = 1;};
        class Line 		{name = "Line"; value="LINE";};
        class StagColumn {name = "Staggered column"; value="STAG COLUMN";};
        class Column 	{name = "Column"; value="COLUMN";};
        class Vee 		{name = "Vee"; value="VEE";};
        class Wedge 	{name = "Wedge"; value="WEDGE";};
      };
    };
    class Behaviour {
      displayName = "Behaviour";
      description = "Behaviour of patrols";
      typeName = "STRING";
      class values {
        class empty 	{name = "None"; value="NONE"; default = 1;};
        class Careless 	{name = "Careless"; value="CARELESS";};
        class Safe 		{name = "Safe"; value="SAFE";};
        class Aware 	{name = "Aware"; value="AWARE";};
        class Combat 	{name = "Combat"; value="CoOMBAT";};
        class Stealth 	{name = "Stealth"; value="STEALTH";};
      };
    };
    class Speedmode {
      displayName = "Speedmode";
      description = "Speedmode of patrols";
      typeName = "STRING";
      class values {
        class empty {name = "None"; value="NONE"; default = 1;};
        class Limited {name = "Limited"; value="LIMITED";};
        class Normal {name = "Normal"; value="NORMAL";};
        class Full {name = "Full"; value="FULL";};
      };
    };

	class EmptyLine3 {
		displayName = "For debugging purposes.";
		description = "";
		typeName = "STRING";
		class values {
			class empty {
				name = "------";
				value = ;
				default = 1;
			};
		};
	};
	class ShowMarker {
		displayName = "Keep area marker visible";
		description = "Display the area marker.";
		typeName = "BOOL";
		defaultValue = 0;
	};
	class Track {
		displayName = "Track movements";
		description = "Display a position and destination marker for each unit";
		typeName = "BOOL";
		defaultValue = 0;
	};

	class EmptyLine4 {
		displayName = "Cloning/Ambush/Reinforcements";
		description = "";
		typeName = "STRING";
		class values {
			class empty {
				name = "------";
				value = ;
				default = 1;
			};
		};
	};

	class CloneMin {
		displayName = "Clone -- Min";
		description = "Create a random number (between min and max) of 'clones'. (usage: 'min:',2,'max:',5) Min must be at least 1.";
		typeName = "NUMBER";
		defaultValue = 0;
	};
	class CloneMax {
		displayName = "Clone -- Max";
		description = "Create a random number (between min and max) of 'clones'. (usage: 'min:',2,'max:',5)";
		typeName = "NUMBER";
		defaultValue = 0;
	};
	class Respawn {
		displayName = "Respawn";
		description = "Allow squad to respawn when all members are dead and no targets near.";
		typeName = "BOOL";
		defaultValue = 0;
	};
	class RespawnX {
		displayName = "Respawn with max";
		description = "Allows to define the number of times squad may respawn.";
		typeName = "NUMBER";
		defaultValue = 0;
	};
	class RespawnDelay {
		displayName = "Respawn delay";
		description = "The delay until the units will be respawned";
		typeName = "NUMBER";
		defaultValue = 0;
	};
	class Ambush {
		displayName = "Ambush (With mines)";
		description = "Ambush squad will not move until in combat, will wait for incoming enemies stealth and ambush when near or discovered.";
		typeName = "BOOL";
		defaultValue = 0;
	};
	class Ambush2 {
		displayName = "Ambush (without mines)";
		description = "Ambush squad will not move until in combat, will NOT LAY MINES and wait for incoming enemies stealth and ambush when near or discovered.";
		typeName = "BOOL";
		defaultValue = 0;
	};
	class AmbushN {
		displayName = "Ambush (With mines) with timer";
		description = "Creates an ambush and wait maximun the especified time n in seconds. You can put 0 seconds for putting mines and go away.";
		typeName = "NUMBER";
		defaultValue = 0;
	};
	class Ambush2N {
		displayName = "Ambush (without mines) with timer";
		description = "Same as above but without laying mines.";
		typeName = "NUMBER";
		defaultValue = 0;
	};
  };



  class ModuleDescription {
      description = "The UPSMON patrol module"; // Short description, will be formatted as structured text
      sync[] = {"AnyBrain","LT_PatrolModuleUPSMON"};

      class LT_MainModuleUPSMON {
        description = "Place the module on the map, so UPSMON will be ";
        displayname = "UPSMON Main module";
        position = 1;
        direction = 1;
      };

      class AnyBrain {
        description = "Sync a groupleader to the module. It must be a kindof Car, Air or Man.";
        displayname = "Unit";
        position = 3;
        direction = 3;
        synced[] = {"LT_PatrolModuleUPSMON"};
      };

      class LT_PatrolModuleUPSMON {
        description = "UPSMON Patrolmodule";
        displayname = "UPSMON Patrolmodule";
        position = 2;
        direction = 2;
        icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
      };
  };
};
