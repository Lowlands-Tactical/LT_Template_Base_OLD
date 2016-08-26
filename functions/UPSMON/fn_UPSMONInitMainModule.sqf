// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = param [1,[],[[]]];
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];

if (!isServer && hasInterface && !_activated) exitWith {};

//1=Enable or 0=disable debug. In debug could see a mark positioning de leader and another mark of the destination of movement, very useful for editing mission
UPSMON_Debug = _logic getVariable "LT_UPSMON_Debug";

//Max waiting is the maximum time patrol groups will wait when arrived to target for doing another target.
UPSMON_maxwaiting = _logic getVariable "LT_UPSMON_maxwaiting";

// Set How many time a unit will search around a suspect position
UPSMON_SRCHTIME = _logic getVariable "LT_UPSMON_SRCHTIME";

// if you are spotted by AI group, how close the other AI group have to be to You , to be informed about your present position. over this, will lose target
UPSMON_sharedist = _logic getVariable "LT_UPSMON_sharedist"; // org value 800 => increased for ArmA3 map sizes for less predictable missions..

// knowsAbout 0.5 1.03 , 1.49 to add this enemy to "target list" (1-4) the higher number the less detect ability (original in 5.0.7 was 0.5)
// it does not mean the AI will not shoot at you. This means: what must be knowsAbout you to UPSMON adds you to the list of targets (UPSMON list of target)
UPSMON_knowsAboutEnemy = _logic getVariable "LT_UPSMON_knowsAboutEnemy"; // 5

//////////////////////// MODULES ////////////////////////////////////////////
//Enable it to send reinforcements, better done it in a trigger inside your mission.
UPSMON_reinforcement = _logic getVariable "LT_UPSMON_reinforcement"; // ToDo Set to true if UPSMON reinf is going ot be used

//Artillery support, better control if set in trigger
UPSMON_ARTILLERY_EAST_FIRE = _logic getVariable "LT_UPSMON_ARTILLERY_EAST_FIRE"; //set to true for doing east to fire //ToDo verify if needed
UPSMON_ARTILLERY_WEST_FIRE = _logic getVariable "LT_UPSMON_ARTILLERY_WEST_FIRE"; //set to true for doing west to fire
UPSMON_ARTILLERY_GUER_FIRE = _logic getVariable "LT_UPSMON_ARTILLERY_GUER_FIRE"; //set to true for doing resistance to fire

// Can the group surrender?
UPSMON_SURRENDER = _logic getVariable "LT_UPSMON_SURRENDER";

// Chance of Surrender/100
UPSMON_WEST_SURRENDER = _logic getVariable "LT_UPSMON_WEST_SURRENDER";
UPSMON_EAST_SURRENDER = _logic getVariable "LT_UPSMON_EAST_SURRENDER";
UPSMON_GUER_SURRENDER = _logic getVariable "LT_UPSMON_GUER_SURRENDER";

// Chance of Retreating/100
UPSMON_WEST_RETREAT = _logic getVariable "LT_UPSMON_WEST_RETREAT";
UPSMON_EAST_RETREAT = _logic getVariable "LT_UPSMON_EAST_RETREAT";
UPSMON_GUER_RETREAT = _logic getVariable "LT_UPSMON_GUER_RETREAT";

/// Civilian Hostility (Set to 0 if you want to disable the function)
UPSMON_Ammountofhostility = _logic getVariable "LT_UPSMON_Ammountofhostility";

UPSMON_WEST_HM = _logic getVariable "LT_UPSMON_WEST_HM";
UPSMON_EAST_HM = _logic getVariable "LT_UPSMON_EAST_HM";
UPSMON_GUER_HM = _logic getVariable "LT_UPSMON_GUER_HM";

//////////////////////// ////////////////////////////////////////////

//Height that heli will fly this input will be randomised in a 10%
UPSMON_flyInHeight = _logic getVariable "LT_UPSMON_flyInHeight"; //80;

//Max distance to target for doing para-drop, will be randomised between 0 and 100% of this value.
UPSMON_paradropdist = _logic getVariable "LT_UPSMON_paradropdist";

//Height that heli will fly if his mission is paradroping.
UPSMON_paraflyinheight = _logic getVariable "LT_UPSMON_paraflyinheight";

// Distance from destination for searching vehicles. (Search area is about 200m),
// If your destination point is further than UPSMON_searchVehicledist, AI will try to find a vehicle to go there.
UPSMON_searchVehicledist = _logic getVariable "LT_UPSMON_searchVehicledist"; // 700, 900

// How far opfor disembark from non armoured vehicle
UPSMON_closeenoughV = _logic getVariable "LT_UPSMON_closeenoughV";

// how close unit has to be to target to generate a new one target or to enter stealth mode
UPSMON_closeenough = _logic getVariable "LT_UPSMON_closeenough";  // ToDo investigate effect of decrease of this value to e.g. 50 // 300

//Do the unit react to near dead bodies;
UPSMON_deadBodiesReact = _logic getVariable "LT_UPSMON_deadBodiesReact";

//Do unit can lay down mine (ambush and defense module)
UPSMON_useMines = _logic getVariable "LT_UPSMON_useMines";

//Distance from ambush point
UPSMON_ambushdist = _logic getVariable "LT_UPSMON_ambushdist";

//% of chance to use smoke by team members when someone wounded or killed in the group in %(default 13 & 35).
// set both to 0 -> to switch off this function
UPSMON_USE_SMOKE = _logic getVariable "LT_UPSMON_USE_SMOKE"; // org 13: decreased while AI is popping smoke a bit too often

//Allow Relax units during nightime to create fireplace
UPSMON_Allowfireplace = _logic getVariable "LT_UPSMON_Allowfireplace";

//Allow Units to Rearm
UPSMON_AllowRearm = _logic getVariable "LT_UPSMON_AllowRearm";


call compile preprocessFileLineNumbers "\lt_template_base\AI\UPSMON\Init_UPSMON.sqf";
