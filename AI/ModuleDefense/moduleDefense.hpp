class LT_Defense_Module: Module_F
{
	// Standard object definitions
	scope = 2;
	displayName = "Lowtac Defense Module";
	icon = "\lt_template_base\logos\lowtac-texture-128px.paa";
	category = "LT_missionModules";

	function = "lt_fnc_defenseModule";
	functionPriority = 6;
	isGlobal = 0;
	isTriggerActivated = 1;
	isDisposable = 0;
	is3DEN = 0;

	class Arguments
	{
		// Locatie
		class Defense_MarkerModule {
		  displayName = "MarkerName";
		  description = "The marker where the defense position should take place. If left empty module position will be defense position";
		  typeName = "STRING";
		  defaultValue = "";
		};
		class Defense_SearchAreaSize {
		  displayName = "Defense area size";
		  description = "Size of area enemies will search. If marker is rectangle or ellipse that size will be used.";
		  typeName = "NUMBER";
		  defaultValue = 100;
		};
		class Defense_Faction {
		  displayName = "Faction";
		  description = "Select the faction which will attack the site";
		  typeName = "STRING";
		  defaultValue = "OPF_F";
		  class values {
		      #include "..\FactionValues.hpp"
		  };
		};
		class Defense_Waves {
		  displayName = "Amount of waves";
		  description = "Amount of waves. To enter wave compositions below enter -1. You will need to enter compositions for all unittypes plus artillery (if enabled)";
		  typeName = "NUMBER";
		  defaultValue = 3;
		};
		class Defense_InfantryAmount {
		  displayName = "Amount of infantry groups per wave";
		  description = "Amount of infantry groups per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 1;
		};
		// Hoeveel light vehicles
		class Defense_Light_VehicleAmount {
		  displayName = "Amount of light vehicles per wave";
		  description = "Amount of light vehicles per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		// Hoeveel armor
		class Defense_MechanizedAmount {
		  displayName = "Amount of mechanized per wave";
		  description = "Amount of mechanized vehicles per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		// Hoeveel armor
		class Defense_ArmorAmount {
		  displayName = "Amount of armored vehicles per wave";
		  description = "Amount of armored vehicles per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		class Defense_AirAmount {
		  displayName = "Amount of helicopters per wave";
		  description = "Amount of helicopters per wave. If you set it to -1 it will be randomized";
		  typeName = "STRING";
		  defaultValue = 0;
		};
		class Defense_ArtyRounds {
		  displayName = "Amount of mortar rounds per wave";
		  description = "Amount of rounds per wave. If waveamount is -1 then you need to enter artillery rounds per wave";
		  typeName = "STRING";
		  defaultValue = 0;
		};

		// Spawn Settings
		class EmptyLine0 {
		  displayName = "Spawn settings";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};

		// From which direction should the units come from?
		class Defense_Direction {
		  displayName = "Direction of attack";
		  description = "Direction from which the attack will come from.";
		  typeName = "NUMBER";
		  class values {
		    class ModuleDirection {name = "Module direction"; value= -1; default=1;};
		    class RandomDirection {name = "Random directions (Surrounded)"; value= -2;};
		    class SpawnMarkers {name = "Markers"; value = -3;};
		  };
		};
		// Spawn distance
		class Defense_MinSpawnDistance {
		  displayName = "Minimum spawndistance";
		  description = "Minimum distance units will be spawned.";
		  typeName = "NUMBER";
		  defaultValue = 500;
		};
		class Defense_MaxSpawnDistance {
		  displayName = "Maximum spawndistance";
		  description = "Maximum distance units will be spawned";
		  typeName = "NUMBER";
		  defaultValue = 1500;
		};
		class Defense_MarkerInfantrySpawn {
		  displayName = "Infantry Spawn markers";
		  description = "";
		  typeName = "STRING";
		  defaultValue = "";
		};
		class Defense_MarkerVehicleSpawn {
		  displayName = "Vehicle Spawn markers";
		  description = "";
		  typeName = "STRING";
		  defaultValue = "";
		};
		class Defense_MarkerAirSpawn {
		  displayName = "Airvehicles Spawn markers";
		  description = "";
		  typeName = "STRING";
		  defaultValue = "";
		};

		// Wave Settings
		class EmptyLine1 {
		  displayName = "Wave settings";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};
		class Defense_WaveTime{
		  displayName = "Time between waves";
		  description = "Time between waves (in seconds). You can also insert a minimum and maximum like this: '30,90' and it will be more random.";
		  typeName = "STRING";
		  defaultValue = 60;
		};
		class Defense_UnitCap {
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
		class Defense_InfantryGroupSize {
		  displayName = "Infantry Groupsize";
		  description = "Infantry Groupsize";
		  typeName = "NUMBER";
		  defaultValue = 8;
		};
		class Defense_Behaviour {
		  displayName = "Combat Stance";
		  description = "The behaviour of the units";
		  typeName = "STRING";
		  class values {
		          class Careless 	{name = "Careless"; value="CARELESS";};
		          class Safe 		{name = "Safe"; value="SAFE"; default =1;};
		          class Aware 	{name = "Aware"; value="AWARE";};
		          class Combat 	{name = "Combat"; value="COMBAT";};
		      class Stealth 	{name = "Stealth"; value="STEALTH";};
		  };
		};
		class Defense_Speed {
		  displayName = "Walking speed";
		  description = "Walking speed";
		  typeName = "STRING";
		  class values {
		          class Limited 	{name = "Limited"; value="LIMITED";};
		          class Normal	{name = "Normal"; value="NORMAL"; default =1;};
		          class Full		{name = "Full" ; value="FULL" ;};
		  };
		};
		class Defense_Formation {
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
		class Defense_AirHeight {
		  displayName = "Fly height of helicopter";
		  description = "Fly height of helicopter";
		  typeName = "NUMBER";
		  defaultValue = 100;
		};

		class EmptyLine5 {
		  displayName = "Artillery settings";
		  description = "";
		  typeName = "STRING";
		  class values {
		    class Empty {name = "-----------"; value = ""; default = 1;};
		  };
		};
		class Defense_ArtyAmmoType {
		  displayName = "Type of ordanence";
		  description = "Choose the type of ordanence";
		  typeName = "STRING";
		  class values {
		    class ModuleOrdnanceMortar_F_ammo {name = "Mortar"; value = "ModuleOrdnanceMortar_F_ammo"; default = 1;};
		    class ModuleOrdnanceHowitzer_F_ammo {name = "Howitzer HE"; value = "ModuleOrdnanceHowitzer_F_ammo";};
		    class ModuleOrdnanceRocket_F_ammo {name = "MLRS Rockets (cluster)"; value = "ModuleOrdnanceRocket_F_ammo";};
		    class ModuleOrdnanceRocket_F_subammo {name = "MLRS Rockets (single)"; value = "ModuleOrdnanceRocket_F_subammo";};
		  };
		};
		class Defense_ArtyDelay {
		  displayName = "Delay between rounds";
		  description = "Delay between rounds";
		  typeName = "NUMBER";
		  defaultValue = 7;
		};
		class Defense_ArtyDamagePlayers {
		  displayName = "Player Safety";
		  description = "Do mortars try to avoid the player";
		  typeName = "BOOL";
		  class values {
		    class True 	{name = "Yes"; value = true;};
		    class False {name = "No"; value = false;};
		  };
		};

	};
	class ModuleDescription {};
};
