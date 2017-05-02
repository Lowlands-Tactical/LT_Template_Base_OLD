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
		class EmptyLine0 {
			displayName = "Faction settings";
			description = "";
			typeName = "STRING";
			class values {
				class Empty {name = "-----------"; value = ""; default = 1;};
			};
		};
		// Faction
		class Defense_Faction {
			displayName = "Faction";
			description = "Select the faction which will attack the site";
			typeName = "STRING";
			defaultValue = "OPF_F";
			class values {
					#include "..\FactionValues.hpp"
			};
		};
		class EmptyLine1 {
			displayName = "Wave settings";
			description = "";
			typeName = "STRING";
			class values {
				class Empty {name = "-----------"; value = ""; default = 1;};
			};
		};
		// Aantal golven
		class Defense_Waves {
			displayName = "Amount of waves";
			description = "Amount of waves. To enter wave compositions below enter -1. You will need to enter compositions for all unittypes plus artillery (if enabled)";
			typeName = "NUMBER";
			defaultValue = 3;
		};
		// Hoeveel tijd zit er tussen golven
		class Defense_WaveTime{
			displayName = "Time between waves";
			description = "Time between waves (in seconds). You can also insert a minimum and maximum like this: '30,90' and it will be more random.";
			typeName = "STRING";
			defaultValue = 60;
		};
		class EmptyLine2 {
			displayName = "Spawn amounts and groupsize";
			description = "";
			typeName = "STRING";
			class values {
				class Empty {name = "-----------"; value = ""; default = 1;};
			};
		};
		// Hoeveel infantry
		class Defense_InfantryAmount {
			displayName = "Amount of infantry groups per wave";
			description = "Amount of infantry groups per wave. If you set it to -1 it will be randomized";
			typeName = "STRING";
			defaultValue = 3;
		};
		// Groupsize infantry
		class Defense_InfantryGroupSize {
			displayName = "Infantry Groupsize";
			description = "Infantry Groupsize";
			typeName = "NUMBER";
			defaultValue = 8;
		};
		// Hoeveel light vehicles
		class Defense_Light_VehicleAmount {
			displayName = "Amount of light vehicles per wave";
			description = "Amount of light vehicles per wave. If you set it to -1 it will be randomized";
			typeName = "STRING";
			defaultValue = 2;
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
			displayName = "Amount of rounds per barrage";
			description = "Amount of rounds per barrage. If waveamount is -1 then you need to enter artillery rounds per wave";
			typeName = "STRING";
			defaultValue = "3";
		};
		class Defense_AirHeight {
			displayName = "Fly height of helicopter";
			description = "Fly height of helicopter";
			typeName = "NUMBER";
			defaultValue = 100;
		};
		class EmptyLine3 {
			displayName = "Direction and distance";
			description = "";
			typeName = "STRING";
			class values {
				class Empty {name = "-----------"; value = ""; default = 1;};
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
		class EmptyLine4 {
			displayName = "Enemy Behaviour and speed";
			description = "";
			typeName = "STRING";
			class values {
				class Empty {name = "-----------"; value = ""; default = 1;};
			};
		};
		class Defense_Behaviour {
			displayName = "Group behaviour";
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
			displayName = "Group speed";
			description = "Group speed";
			typeName = "STRING";
			class values {
        			class Limited 	{name = "Limited"; value="LIMITED";};
        			class Normal	{name = "Normal"; value="NORMAL"; default =1;};
        			class Full		{name = "Full" ; value="FULL" ;};
			};
		};
		class EmptyLine5 {
			displayName = "Artillery settings";
			description = "";
			typeName = "STRING";
			class values {
				class Empty {name = "-----------"; value = ""; default = 1;};
			};
		};
		class Defense_EnableArty {
			displayName = "Artillery enabled";
			description = "Enable artillery";
			typeName = "BOOL";
			class values {
				class True 	{name = "Yes"; value = true;};
				class False {name = "No"; value = false;};
			};
		};
		class Defense_ArtyAmmoType {
			displayName = "Type of artillery";
			description = "Chose the type of artillery";
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
			description = "Artillery does not damage to players";
			typeName = "BOOL";
			class values {
				class True 	{name = "Yes"; value = true;};
				class False {name = "No"; value = false;};
			};
		};
	};
	class ModuleDescription {};
};
