// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];

// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];

// Please Work

if (_activated) then {
	private ["_az_zone","_az_faction","_az_range","_az_infantry","_az_cars","_az_ifvs","_az_tanks","_az_helicopters","_i","_az_occupy","_az_patrol","_az_GrpSize","_az_GrpVar"];

	_az_zone = _logic getVariable "MarkerName";
	_az_faction = _logic getVariable "Faction";
	_az_range = _logic getVariable "RadioRange";
	_az_infantry = _logic getVariable "Infantry";
	_az_GrpSize = _logic getVariable "GroupSize";
	_az_GrpVar = _logic getVariable "GroupVariation";
	_az_cars = _logic getVariable "Cars";
	_az_ifvs = _logic getVariable "IFVs";
	_az_tanks = _logic getVariable "Tanks";
	_az_helicopters= _logic getVariable "Helicopters";
	_az_occupy = _logic getVariable "Occupation";
	_az_patrol = _logic getVariable "Patrol";

	nul = [ _az_zone, _az_faction, _az_range, _az_infantry, _az_GrpSize, _az_GrpVar, _az_cars, _az_ifvs, _az_tanks, _az_helicopters, _az_occupy, _az_patrol ] call lt_fnc_autozone;
};