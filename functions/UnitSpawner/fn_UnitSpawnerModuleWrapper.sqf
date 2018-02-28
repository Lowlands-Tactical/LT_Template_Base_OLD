// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = param [1,[],[[]]];
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];

// Module specific behavior. Function can extract arguments from logic and use them.
if (_activated) then {

	_faction = _logic Getvariable "UnitSpawner_Faction";
	_waypoints = _logic Getvariable "UnitSpawner_Waypoints";
	_lastWaypoint = _logic Getvariable "UnitSpawner_LastWaypoint";
	_AreaSize = _logic getVariable "UnitSpawner_AreaSize";

	_waves = _logic Getvariable "UnitSpawner_Waves";
	_infantry = _logic Getvariable "UnitSpawner_InfantryAmount";
	_car = _logic Getvariable "UnitSpawner_Light_VehicleAmount";
	_mechanized = _logic Getvariable "UnitSpawner_MechanizedAmount";
	_armor = _logic Getvariable "UnitSpawner_ArmorAmount";
	_air = _logic Getvariable "UnitSpawner_AirAmount";

	_wavetime = _logic Getvariable "UnitSpawner_WaveTime";
	_unitcap = _logic Getvariable "UnitSpawner_UnitCap";

	_groupsize = _logic Getvariable "UnitSpawner_InfantryGroupSize";
	_behaviour = _logic Getvariable "UnitSpawner_Behaviour";
	_speed = _logic Getvariable "UnitSpawner_Speed";
	_formation =_logic Getvariable "UnitSpawner_Formation";

	_airheight = _logic Getvariable "UnitSpawner_AirHeight";

	// Convert waypoints variable to array
	_waypointArray = _waypoints splitstring ",";

	// Convert waves to arrays
	_inputArray = [_infantry , _car , _mechanized , _armor, _air];
	_outputArray = [[],[],[],[],[],[]];
	_tempArray = [];

	diag_log format["LT template DEBUG: UnitSpawner Module::%1 inputArray: %2",_logic, _inputArray];

	for "_i" from 0 to 4 do {
		if (_waves == -1) then {
			_tempArray 	= _inputArray select _i splitstring ",";
			{
				_outputArray select _i append [parsenumber _x];
			} forEach _tempArray;
		} else {
			if (_waves > 0) then {
				for "_n" from 0 to (_waves - 1) do {
					_outputArray select _i set [_n, parsenumber (_inputArray select _i)];
				};
			} else {
				systemchat format ["LT template DEBUG: -=UnitSpawner Module= Error in amount of Waves: %1", _waves];
			};
		};
	};
	diag_log format["LT template DEBUG: UnitSpawner Module outputArray before: %1", _outputArray];

	// Define amount of waves
	_wavesAmnt = if (_waves == -1) then {
		_my = _outputArray select 0;
		(selectMax [count (_outputArray select 0), count (_outputArray select 1), count (_outputArray select 2), count (_outputArray select 3), count (_outputArray select 4), count (_outputarray select 5)]) - 1
	} else {
		_waves - 1
	};

	{
		[_x, (_wavesAmnt + 1)] call LT_fnc_EqualArrayLengths;
	} forEach _outputArray;
	diag_log format["LT template DEBUG: UnitSpawner Module outputArray after: %1", _outputArray];

	// Wavetime conversion to array
	_waveTimeConverted = if (_wavetime find "," >= 0) then {
		_timeArray = _wavetime splitstring ",";
		_timeMin = parsenumber (_timeArray select 0);
		_timeMax = parsenumber (_timeArray select 1);
		[_timeMin, _timeMax];
	} else {
		parsenumber _wavetime;
	};

	// start function
	[_logic, _faction, _waypointArray, _lastWaypoint, _wavesAmnt, _AreaSize, _outputArray, _waveTimeConverted, _unitcap, _groupsize, _behaviour, _speed, _formation, _airheight] spawn LT_fnc_UnitSpawner;

// params ["_logic", "_faction", "_waypoints",  "_lastWaypoint", "_waves", "_searchAreaSize", "_outputArray", "_wavetime", "_unitcap", "_groupsize", "_behaviour", "_speed", "_formation", "_airheight"];

};

true
