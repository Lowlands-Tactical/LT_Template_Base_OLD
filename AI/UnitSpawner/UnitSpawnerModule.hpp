class LT_UnitSpawner_Module: Module_F
{
	// Standard object definitions
	scope = 2;
	displayName = "Lowtac Units Spawner";
	icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
	category = "LT_missionModules";

	function = "lt_fnc_UnitSpawnerModuleWrapper";
	functionPriority = 8;
	isGlobal = 0;
	isTriggerActivated = 1;
	isDisposable = 0;
	is3DEN = 0;

	class Arguments
	{
		class UnitSpawner_Faction {
		  displayName = "Faction";
		  description = "Select the faction";
		  typeName = "STRING";
		  defaultValue = "OPF_F";
		  class values {
		      #include "..\FactionValues.hpp"
		  };
		};
		class UnitSpawner_Waypoints {
			displayName = "Waypoints";
			description = "Place markers on the map, name them and add the markers seperated with commas in this box.";
			typeName = "STRING";
			defaultValue = "";
		};
		class UnitSpawner_LastWaypoint {
			displayName = "Last waypoint";
			description = "What the units will do when the last waypoint kicks in";
			typeName = "STRING";
			defaultValue = "";
			class values {
				class default {name = "Nothing"; value = "default";};
				class taskAttack {name = "Attack"; value = "taskAttack";}; // CBA_fnc_taskAttack
				class taskDefend {name = "Defend"; value = "taskDefend";}; // CBA_fnc_taskDefend
				class taskGarrison {name = "Garrison"; value = "taskGarrison";}; // CBA_fnc_waypointGarrison
				class taskPatrol {name = "Patrol"; value = "taskPatrol";}; // CBA_fnc_taskPatrol
				class taskSearchBuildings {name = "Search Buildings"; value = "taskSearchBuildings";}; // CBA_fnc_searchNearby
				class deleteUnits {name = "Delete units on arrival"; value = "deleteUnits";}; // LT_fnc_deleteUnits
			};
		};
		class UnitSpawner_AreaSize {
			displayName = "Area size";
			description = "Size of area/radius to attack/defend/patrol in meters ";
			typeName = "NUMBER";
			defaultValue = 50;
		};

		class EmptyLine0 {
		  displayName = "Wave compositions";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};
		class UnitSpawner_Waves {
		  displayName = "Amount of waves";
		  description = "Amount of waves. To enter wave compositions below enter -1. You will need to enter compositions for all unittypes plus artillery (if enabled)";
		  typeName = "NUMBER";
		  defaultValue = 3;
		};
		class UnitSpawner_InfantryAmount {
		  displayName = "Amount of infantry groups per wave";
		  description = "Amount of infantry groups per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 1;
		};
		// Hoeveel light vehicles
		class UnitSpawner_Light_VehicleAmount {
		  displayName = "Amount of light vehicles per wave";
		  description = "Amount of light vehicles per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		// Hoeveel armor
		class UnitSpawner_MechanizedAmount {
		  displayName = "Amount of mechanized per wave";
		  description = "Amount of mechanized vehicles per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		// Hoeveel armor
		class UnitSpawner_ArmorAmount {
		  displayName = "Amount of armored vehicles per wave";
		  description = "Amount of armored vehicles per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		class UnitSpawner_AirAmount {
		  displayName = "Amount of helicopters per wave";
		  description = "Amount of helicopters per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		// Spawn Settings
		class EmptyLine1 {
		  displayName = "Wave settings";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};
		class UnitSpawner_WaveTime{
		  displayName = "Time between waves";
		  description = "Time between waves (in seconds). You can also insert a minimum and maximum like this: '30,90' and it will be more random.";
		  typeName = "STRING";
		  defaultValue = 60;
		};
		class UnitSpawner_UnitCap {
		  displayName = "Unitcap";
		  description = "Unit maximum amount on any given time. Units will not spawn unless the total units are below this number";
		  typeName = "NUMBER";
		  defaultvalue = 120;
		};

		// Infantry Setttings
		class EmptyLine2 {
		  displayName = "Infantry Settings";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};
		class UnitSpawner_InfantryGroupSize {
		  displayName = "Infantry Groupsize";
		  description = "Infantry Groupsize";
		  typeName = "NUMBER";
		  defaultValue = 8;
		};
		class UnitSpawner_Behaviour {
		  displayName = "Combat Stance";
		  description = "The behaviour of the units";
		  typeName = "STRING";
		  class values {
        class Careless 	{name = "Careless"; value="CARELESS";};
        class Safe 		{name = "Safe"; value="SAFE"; default=1;};
        class Aware 	{name = "Aware"; value="AWARE";};
        class Combat 	{name = "Combat"; value="COMBAT";};
	      class Stealth 	{name = "Stealth"; value="STEALTH";};
		  };
		};
		class UnitSpawner_Speed {
		  displayName = "Movement Speed";
		  description = "Movement speed";
		  typeName = "STRING";
		  class values {
        class Limited 	{name = "Limited"; value="LIMITED";};
        class Normal	{name = "Normal"; value="NORMAL"; default=1;};
        class Full		{name = "Full" ; value="FULL" ;};
		  };
		};
		class UnitSpawner_Formation {
		  displayName = "Formation";
		  description = "Formation";
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

		class EmptyLine3 {
		  displayName = "Helicopter Settings";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};
		class UnitSpawner_AirHeight {
		  displayName = "Fly height of helicopter";
		  description = "Fly height of helicopter";
		  typeName = "NUMBER";
		  defaultValue = 75;
		};
	};
	class ModuleDescription {};
};
