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
			description = "Amount of waves. To enter wave compositions below enter -1.";
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
			displayName = "Degrees";
			description = "Direction in degrees from 0 - 360 degrees. If -1 the direction of module will be taken. If -2 enemies will spawn all around.";
			typeName = "NUMBER";
			defaultValue = -1;
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
	};
	class ModuleDescription {};
};
