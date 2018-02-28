params ["_logic", "_faction", "_waypoints",  "_lastWaypoint", "_waves", "_searchAreaSize", "_outputArray", "_wavetime", "_unitcap", "_groupsize", "_behaviour", "_speed", "_formation", "_airheight"];

// 	[_logic, _faction, _waypointArray, _lastWaypoint, _wavesAmnt, _AreaSize, _outputArray, _waveTimeConverted, _unitcap, _groupsize, _behaviour, _speed, _formation, _airheight] spawn LT_fnc_UnitSpawner;

// Position of module
_Spawnposition = getpos _logic;

// Count waypoints
_wavesAmnt = count _waypoints;

_firstWaypoint = getMarkerPos (_waypoints select 0);
_lastWaypointPos = getMarkerPos (_waypoints select (_wavesAmnt - 1));

// _searchAreaMarker = createMarkerLocal [format ["SearchArea %1", _logic], _lastWaypointPos];
// _searchAreaMarker setMarkerShapeLocal "ELLIPSE";
// _searchAreaMarker setMarkerSizeLocal [_searchAreaSize, _searchAreaSize];

// Uncomment this once set in production
// _searchAreaMarker setMarkerAlpha 0;

// Define side
_factionUnitArray = switch (_faction) do {
	#include "..\FactionSwitch.sqf"
};

_factionClass = getText (configfile >> "CfgVehicles" >> (_factionUnitArray select 0 select 0) >> "faction");

_SideNo 	= getnumber (configfile >> "CfgFactionClasses" >> _factionClass >> "side");
_factionSide = switch (_SideNo) do {
	case 0: {EAST};
	case 1: {WEST};
	case 2: {RESISTANCE};
	case 3: {CIVILIAN};
};

// Create on activation statement (string) for last waypoint
_onActVeh = format [
	"switch (%3) do {
		case 'taskAttack': {[group this, %1] call CBA_fnc_taskAttack};
		case 'taskDefend': {[group this, %1, %2] call CBA_fnc_taskDefend};
    case 'taskGarrison': {[group this, %1] call CBA_fnc_taskAttack};
		case 'taskPatrol': {[group this, %1] call CBA_fnc_taskAttack};
    case 'taskSearchBuildings': {[group this, %1] call CBA_fnc_taskAttack};
    case 'deleteUnits': {[group this] call lt_fnc_deleteUnits};
	};", _lastWaypointPos, _searchAreaSize, _lastWaypoint
];

// Initialise waves
for "_i" from 0 to _wavesAmnt do {

	// Send wave id
	_logic setVariable ["LT_UnitSpawnerWave", [(_i + 1), _logic], true];

	// Log wave number
	hint format ["UnitSpawner Wave %1 started", _i + 1];

	// Define amount of players
	_playersAmnt = count (allPlayers - entities "HeadlessClient_F");

	// Array of spawnamounts
	_SpawnAmountArray = [[0, "Infantry"], [0, "Motorized"], [0, "Mechanized"], [0, "Armor"], [0,"Air"]];

	_weights = [4,2,2,1, 0.5];
	_factors = [0.75, 0.3, 0.3, 0.2, 0.1];
	// Define spawnamounts
	{
		if (((_outputarray select _forEachIndex) select _i) == -1) then {
			_w = _weights select _forEachIndex;
			_f = _factors select _forEachIndex;
			if (_playersAmnt > 1) then {round (random [_w, _playersAmnt * _f,_playersAmnt])} else {_playersAmnt * _w};
			_SpawnAmountArray select _forEachIndex set [0, if (_playersAmnt > 1) then {round (random [_w, _playersAmnt * _f,_playersAmnt])} else {_playersAmnt * _w}];
		} else {
			_SpawnAmountArray select _forEachIndex set [0, _outputarray select _forEachIndex select _i];
		};
	} forEach _SpawnAmountArray;

	// ForEach unittype spawn units with the amounts that come out of the
	{
		_amnt		= _x select 0;
		_UnitType 	= _x select 1;

		if (_amnt == 0) then {
			// No magic
		} else {

			for "_n" from 1 to _amnt do {

				// Get array of units of type _x from the selected faction
				_groupArray = _factionUnitArray select (_forEachIndex);
				if (_forEachIndex == 5) then { _groupArray = []; };

				// Wait until under unitcap.
				waitUntil {(_unitcap > (count allUnits))};

				if (count _groupArray == 0) then {
					// No Magic happens here
				} else {
					// If infantry then spawn and give taskSearch area. If Vehicle spawn and give taskAttack.
					switch (_unitType) do { // The Big Switch-statement

						case "Infantry": {

							// Define spawn position
							_spawnpos = _Spawnposition findEmptyPosition [0, 20];

							// Spawn unit(s)
							_grp = [_factionSide, _groupsize, _spawnpos, _groupArray] call LT_fnc_createGroup;

              // Know when to be done with waypoints
              _wpDone = 0; // To let the script know you are done.
              _wpNuke = 0; // To let the script to know that you are done is that you are done.

              // Init.
              _onAct = "";

							// Give units waypoints
              // This is what happens in this main loop
              // 1) Check if wpDone is 0. This mains that the script should keep spamming waypoints
              // 2) Check if it is the one before last. If so, check if it has any actions that are relevant. Once set, set _wpDone to 1 signailing the end
              // 3) If this isn't the case, check if it is the last WP and if there are any relevant actions tied to it.
              // 4) Aslong as we aren't done, keep spamming WPs.
							for "_w" from 1 to _wavesAmnt do
							{
                // diag_log format["_w:%1; _wavesAmnt:%2; _wpDone:%3; _lastWaypoint:%4; _lastWaypointPos:%5;",_w, _wavesAmnt, _wpDone, _lastWaypoint, _lastWaypointPos];
                if (_wpDone == 0) then {
                  if ( _w == (_wavesAmnt-1) ) then {
                    // diag_log "WP one before last";
                    // systemChat "WP one before last";
                    switch (_lastWaypoint) do {
                      case 'taskAttack':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                      case 'taskDefend':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskDefend",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                      case 'taskPatrol':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskPatrol",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                    };
                  };
                  if (_wavesAmnt==_w and _wpDone==0) then {
                    switch (_lastWaypoint) do {
                      case 'taskGarrison':        { _onAct = "[group this] call CBA_fnc_waypointGarrison"; };
                      case 'taskSearchBuildings': { _onAct = "[group this] call CBA_fnc_searchNearby"; };
                      case 'deleteUnits':         { _onAct = "[group this] call LT_fnc_deleteUnits"; };
                    };
                  };
                  if (_wpDone == 0) then {
                    _wpMrk = _waypoints select (_w-1);
                    _wp = _grp addWaypoint [getMarkerpos _wpMrk, 0, _w];
                    _wp setWaypointCompletionRadius 20;
                    _wp setWaypointBehaviour _behaviour;
                    _wp setWaypointFormation _formation;
                    _wp setWaypointSpeed _speed;
                    _wp setWaypointCombatMode "NO CHANGE";
                    _wp setWaypointType "MOVE";
                    _wp setWaypointStatements ["true", _onAct];
                  };
                  // Reset everything for the next iteration
                  if (_wpNuke==1) then { _wpDone=1; };
                  _onAct = "";
                };
                // End Edit
							};
              // Debug! :D
              /*
              _wpCount = 0;
              {
                systemChat format["WP: %1 -- %2",_wpCount, waypointStatements [_grp,_wpCount]];
                diag_log format["WP: %1 -- %2",_wpCount, waypointStatements [_grp,_wpCount]];
                _wpCount = _wpCount + 1;
              } forEach (waypoints _grp);
              */
						};

						case "Air": {

							// Define spawn position
							_spawnpos = _Spawnposition findEmptyPosition [0, 20];
							_firstWaypoint = getMarkerPos (_waypoints select 0);
							_lastWaypointPos = getMarkerPos (_waypoints select (_wavesAmnt - 1));

							// Spawn unit(s)
							_veh = [_spawnpos, _spawnpos getdir _firstWaypoint, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;
              _grp = _veh select 2;

							// Prevent guys from getting out of an otherwise perfect deadly vehicle.
							(_veh select 0) allowCrewInImmobile true;

              // Know when to be done with waypoints
              _wpDone = 0; // To let the script know you are done.
              _wpNuke = 0; // To let the script to know that you are done is that you are done.

              // Init.
              _onAct = "";

							// Give units waypoints
							for "_w" from 1 to _wavesAmnt do // For-loop
							{
                if (_wpDone == 0) then {
                  if ( _w == (_wavesAmnt-1) ) then {
                    switch (_lastWaypoint) do {
                      case 'taskAttack':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                      case 'taskDefend':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskDefend",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                      case 'taskPatrol':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskPatrol",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                    };
                  };
                  if (_wavesAmnt==_w and _wpDone==0) then {
                    switch (_lastWaypoint) do {
                      case 'taskGarrison':        { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; };
                      case 'taskSearchBuildings': { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; };
                      case 'deleteUnits':         { _onAct = "[group this] call LT_fnc_deleteUnits"; };
                    };
                  };
                  if (_wpDone == 0) then {
                    _wpMrk = _waypoints select (_w-1);
                    _wp = _grp addWaypoint [[(getMarkerpos _wpMrk) select 0,(getMarkerpos _wpMrk) select 1,_airheight], 0, _w];
                    _wp setWaypointCompletionRadius 20;
                    _wp setWaypointBehaviour _behaviour;
                    _wp setWaypointFormation _formation;
                    _wp setWaypointSpeed _speed;
                    _wp setWaypointCombatMode "NO CHANGE";
                    _wp setWaypointType "MOVE";
                    _wp setWaypointStatements ["true", _onAct];
                  };
                  // Reset everything for the next iteration
                  if (_wpNuke==1) then { _wpDone=1; };
                  _onAct = "";
                };
							}; // For-loop
						};

						default {

							// Define spawn position
							_spawnpos = _Spawnposition findEmptyPosition [0, 20];
							_firstWaypoint = getMarkerPos (_waypoints select 0);
							_lastWaypointPos = getMarkerPos (_waypoints select (_wavesAmnt - 1));

							// Spawn unit(s)
							_veh = [_spawnpos, _spawnpos getdir _firstWaypoint, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;
              _grp = _veh select 2;

							// Prevent guys from getting out of an otherwise perfect deadly vehicle.
							(_veh select 0) allowCrewInImmobile true;

              // Know when to be done with waypoints
              _wpDone = 0; // To let the script know you are done.
              _wpNuke = 0; // To let the script to know that you are done is that you are done.

              // Init.
              _onAct = "";

							// Give units waypoints
							for "_w" from 1 to _wavesAmnt do // For-loop
							{
                if (_wpDone == 0) then {
                  if ( _w == (_wavesAmnt-1) ) then {
                    switch (_lastWaypoint) do {
                      case 'taskAttack':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                      case 'taskDefend':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskDefend",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                      case 'taskPatrol':          { _onAct = format["[group this, %1, %2] call CBA_fnc_taskPatrol",_lastWaypointPos, _searchAreaSize]; _wpNuke = 1; };
                    };
                  };
                  if (_wavesAmnt==_w and _wpDone==0) then {
                    switch (_lastWaypoint) do {
                      case 'taskGarrison':        { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; };
                      case 'taskSearchBuildings': { _onAct = format["[group this, %1, %2] call CBA_fnc_taskAttack",_lastWaypointPos, _searchAreaSize]; };
                      case 'deleteUnits':         { _onAct = "[group this] call LT_fnc_deleteUnits"; };
                    };
                  };
                  if (_wpDone == 0) then {
                    _wpMrk = _waypoints select (_w-1);
                    _wp = _grp addWaypoint [getMarkerpos _wpMrk, 0, _w];
                    _wp setWaypointCompletionRadius 30;
                    _wp setWaypointBehaviour _behaviour;
                    _wp setWaypointFormation _formation;
                    _wp setWaypointSpeed _speed;
                    _wp setWaypointCombatMode "NO CHANGE";
                    _wp setWaypointType "MOVE";
                    _wp setWaypointStatements ["true", _onAct];
                  };
                  // Reset everything for the next iteration
                  if (_wpNuke==1) then { _wpDone=1; };
                  _onAct = "";
                };
							}; // For-loop
						};
					}; // The Big Switch-statement (107)
				};
			};
		};
	} forEach _SpawnAmountArray;

	// Sleep
	if (typename _wavetime == "ARRAY") then {
		_timeMin = _wavetime select 0;
		_timeMax = _wavetime select 1;
		_wavetimernd = random [_timeMin, (_timeMax + _timeMin) / 2, _timeMax];
		sleep _wavetimernd;
	} else {
		sleep _wavetime;
	};
};
