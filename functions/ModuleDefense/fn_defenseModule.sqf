_logic = param [0,objNull,[objNull]];
_units = param [1,[],[[]]];
_activated = param [2,true,[true]];

if (_activated) then {
	if (isServer) then {
		_mrkDefPos 	= _logic getVariable "Defense_MarkerModule";
		_SearchAreaSize = _logic getVariable "Defense_SearchAreaSize"; // nw
		_mrkInfSpawn = _logic getVariable "Defense_MarkerInfantrySpawn"; //nw
		_mrkVehSpawn = _logic getVariable "Defense_MarkerVehicleSpawn"; // nw
		_mrkAirSpawn = _logic getVariable "Defense_MarkerAirSpawn"; // nw
		_faction	= _logic getVariable "Defense_Faction";
		_waves 		= _logic getVariable "Defense_Waves";
		_wavetime 	= _logic getVariable "Defense_WaveTime";
		_infy 		= _logic getVariable "Defense_InfantryAmount";
		_infyGroupSize	= _logic getVariable "Defense_InfantryGroupSize";
		_veh 		= _logic getVariable "Defense_Light_VehicleAmount";
		_mech		= _logic getVariable "Defense_MechanizedAmount";
		_armor 		= _logic getVariable "Defense_ArmorAmount";
		_air 		= _logic getVariable "Defense_AirAmount";
		_height = _logic getVariable "Defense_AirHeight";
		_mindist 	= _logic getVariable "Defense_MinSpawnDistance";
		_maxdist 	= _logic getVariable "Defense_MaxSpawnDistance";
		_dir 		= _logic getVariable "Defense_Direction";
		_behaviour	= _logic getVariable "Defense_Behaviour";
		_speed 		= _logic getVariable "Defense_Speed";
		_formation = _logic getVariable "Defense_Formation";
//		_artyEnabled = _logic getVariable "Defense_EnableArty";
		_artyAmmoType = _logic getVariable "Defense_ArtyAmmoType";
		_artyRounds 	= _logic getVariable "Defense_ArtyRounds";
		_artyDelay = _logic getVariable "Defense_ArtyDelay";
		_artyDamage = _logic getVariable "Defense_ArtyDamagePlayers";
		_unitcap = _logic getVariable "Defense_UnitCap";

		// Verify some things (maybe needs more work in the future?)
		if (_maxdist - _mindist <= 0) exitWith {
			systemchat format ["-=Defense Module=- Min dist is higher than or equal to Max dist: %1", _maxdist - _mindist];
			// diag_log format ["LT template DEBUG: -=Defense Module=- Min dist is higher than or equal to Max dist: %1", _maxdist - _mindist];
		};
		if (_height < 1) then {systemchat format ["-=Defense Module=- Fly height of helicopters is %1. Changed it to minimum (1)", _height];};
		_flyheight = if (_height < 1) then { 1 } else {	_height };

		// Define defenseposition
		_defensepos = if (_mrkDefPos == "") then {getpos _logic} else {getMarkerpos _mrkDefPos};

		// diag_log format ["LT template DEBUG: -=Defense Module=- Marker info Defensepos. Pos: %1, Shape %2, Size %3", _defensepos, MarkerShape _mrkDefPos, getMarkerSize _mrkDefPos];

		_searchArea = if (markerShape _mrkDefPos == "ICON" || _mrkDefPos == "") then {
			createMarker ["Search Area", _defensepos];
		} else {
			_mrkDefPos
		};

		if (markerShape _mrkDefPos == "ICON" || _mrkDefPos == "") then {
			_searchArea setMarkerShape "ELLIPSE";
			_searchArea setMarkerSize [_SearchAreaSize,_SearchAreaSize];
			_searchArea setMarkerAlpha 0;
		} else {
			_shape = MarkerShape _mrkDefPos;
			_size = getMarkerSize _mrkDefPos;
			_searchArea setMarkerShape _shape;
			_searchArea setMarkerSize [(_size select 0),(_size select 1)];
		};

		// diag_log format ["LT template DEBUG: -=Defense Module=- Marker info Searcharea. Pos: %1, Shape %2, Size %3", getmarkerpos _searchArea, MarkerShape _searchArea, getMarkerSize _searchArea];

		// Define Spawnmarkerarrays
		_InfSpawnArray = _mrkInfSpawn splitstring " " joinstring "" splitstring ",";
		_VehSpawnArray = _mrkVehSpawn splitstring " " joinstring "" splitstring ",";
		_AirSpawnArray = _mrkAirSpawn splitstring " " joinstring "" splitstring ",";
		_SpawnMarkerArray = [_InfSpawnArray, _VehSpawnArray, _VehSpawnArray,_VehSpawnArray,_AirSpawnArray];

		// Define side
		diag_log FORMAT ["LT template DEBUG: -=Defense Module=- Faction  %1", _faction];
		_factionUnitArray = switch (_faction) do {
			#include "..\FactionSwitch.sqf"
		};

		diag_log FORMAT ["LT template DEBUG: -=Defense Module=- Faction unit array %1", _factionUnitArray];
		diag_log FORMAT ["LT template DEBUG: -=Defense Module=- Faction unit array %1", _factionUnitArray select 0 select 0];

		_factionClass = getText (configfile >> "CfgVehicles" >> (_factionUnitArray select 0 select 0) >> "faction");

		_SideNo 	= getnumber (configfile >> "CfgFactionClasses" >> _factionClass >> "side");
		_factionSide = switch (_SideNo) do {
			case 0: {EAST};
			case 1: {WEST};
			case 2: {RESISTANCE};
			case 3: {CIVILIAN};
		};

		// Define spawned quantities of units
		_inputArray = [_infy , _veh , _mech , _armor, _air, _artyRounds];
		_outputArray = [[],[],[],[],[],[]];
		_tempArray = [];

		diag_log format["LT template DEBUG: Defense Module::%1 inputArray: %2",_logic, _inputArray];

		for "_i" from 0 to 5 do {
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
					systemchat format ["LT template DEBUG: -=Defense Module= Error in amount of Waves: %1", _waves];
				};
			};
		};
		diag_log format["LT template DEBUG: outputArray before: %1", _outputArray];

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
		diag_log format["LT template DEBUG: outputArray after: %1", _outputArray];

		// Initialise waves
		for "_i" from 0 to _wavesAmnt do {

			// Send wave id
			_logic setVariable ["LT_DefenseWave", [(_i + 1), _logic], true];

			// Define amount of players
			_playersAmnt = count (allPlayers - entities "HeadlessClient_F");

			// Log wave number
			diag_log format ["LT template DEBUG: -=Defense Module=- Wave %1", _i + 1];
			// hint format ["Wave %1 started", _i + 1];

			// Array of spawnamounts
			_SpawnAmountArray = [[0, "Infantry"], [0, "Motorized"], [0, "Mechanized"], [0, "Armor"], [0,"Air"], [0,"Mortar"]];

			_weights = [4,2,2,1, 0.5,0.3];
			_factors = [0.75, 0.3, 0.3, 0.2, 0.1, 0.1];
			// Define spawnamounts
			{
				if (_outputarray select _forEachIndex select _i == -1) then {
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

				} else {

					for "_n" from 1 to _amnt do {

						// Get array of units of type _x from the selected faction
						_groupArray = _factionUnitArray select (_forEachIndex);
						if (_forEachIndex == 5) then { _groupArray = []; };
						diag_log format ["LT template DEBUG: -=Defense Module:%1 _groupArray:%2 _forEachIndex:%3",_logic,_groupArray,_forEachIndex];

						// Wait until under unitcap.
						diag_log format ["LT template DEBUG: -=Defense Module= Unitcap waituntil: %1",(_unitcap < (count allUnits))];
						waitUntil {(_unitcap > (count allUnits))};

						if (count _groupArray == 0) then {
							// No Magic happens here
						} else {
							// If infantry then spawn and give taskSearch area. If Vehicle spawn and give taskAttack.
							switch (_unitType) do {

								case "Infantry": {

									// Define spawn position
									_medDist 	= ((_maxdist + _mindist) / 2);
									_minMedDist = ((_mindist + _medDist) / 2);
									_minMedDist2 = ((_minMedDist + _mindist) / 2);
									_spawndist = random [_mindist , _minMedDist2, _minMedDist];

									_logdir = getDir _logic;
									_rndDir = random [(_logdir - 10),_logdir,(_logdir + 10)];

									_relpos = switch (_dir) do {
										case -1: {[_defensepos , _spawndist, _rndDir] call BIS_fnc_relPos;};
										case -2: {[_defensepos , _spawndist, random 360] call BIS_fnc_relPos;};
										case -3: {[selectRandom (_SpawnMarkerArray select (_forEachIndex))] call CBA_fnc_randPosArea;};
									};

									_spawnpos = _relpos findEmptyPosition [0, 20];

									// Spawn unit(s)
									_grp = [_factionSide, _infyGroupSize, _spawnpos, _groupArray] call LT_fnc_createGroup;

									// Give units task
									[_grp, _searchArea, _behaviour, "RED", _speed,_formation] call CBA_fnc_taskSearchArea;

								};
								case "Air": {

									// Define spawn position
									_medDist = ((_maxDist + _minDist) / 2);
									_MedMaxDist = ((_maxDist + _medDist) / 2);
									_MedMaxDist2 = ((_maxDist + _medMaxDist) / 2);
									_spawndist = random [_medMaxDist , _medMaxDist2, _maxDist];

									_logdir = getDir _logic;
									_rndDir = random [(_logdir - 2), _logdir, (_logdir + 2)];

									_relpos = switch (_dir) do {
										case -1: {[_defensepos , _spawndist, _rndDir] call BIS_fnc_relPos;};
										case -2: {[_defensepos , _spawndist, random 360] call BIS_fnc_relPos;};
										case -3: {[selectRandom (_SpawnMarkerArray select (_forEachIndex))] call CBA_fnc_randPosArea;};
									};

									_spawnpos = _relpos findEmptyPosition [0, 20];

									// Spawn unit(s)
									_grp = [_spawnpos, _spawnpos getdir _defensepos, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;

									// Flyheight setup
									(_grp select 0) flyInHeight _flyheight;

									// Give units task
									[_grp, _searchArea, _SearchAreaSize] call CBA_fnc_taskAttack;
								};

								default {

									// Define spawn position
									_medDist = (_maxDist + _minDist) / 2;
									_medMaxDist = ((_maxDist + _medDist) / 2);
									_spawndist = random [_medDist , _medMaxDist, _maxDist];

									_logdir = getDir _logic;
									_rndDir = random [ (_logdir - 5), _logdir, (_logdir + 5)];

									_relpos = switch (_dir) do {
										case -1: {[_defensepos , _spawndist, _rndDir] call BIS_fnc_relPos;};
										case -2: {[_defensepos , _spawndist, random 360] call BIS_fnc_relPos;};
										case -3: {[selectRandom (_SpawnMarkerArray select (_forEachIndex))] call CBA_fnc_randPosArea;};
									};

									_spawnpos = _relpos findEmptyPosition [0, 20];

									// Spawn unit(s)
									_grp = [_spawnpos, _spawnpos getdir _defensepos, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;

									// Prevent guys from getting out of an otherwise perfect deadly vehicle.
									(_grp select 0) allowCrewInImmobile true;

									// Give units task
									[_grp, _searchArea, _SearchAreaSize] call CBA_fnc_taskAttack;
								};
							};
						};
					};
				};

				if (_unitType == "Mortar" and _amnt >= 1) then {
					diag_log format["LT template DEBUG: Defense Module::%1 Arty Rounds: %2",_logic, _amnt];
					[_searchArea,_artyAmmoType,_amnt,_artyDelay,_artyDamage] call LT_fnc_doMortar;
				};

			} forEach _SpawnAmountArray;

			// Sleep
			if (_wavetime find "," >= 0 && _wavetime != "-1") then {
				_timeArray = _wavetime splitstring ",";
				_timeMin = parsenumber (_timeArray select 0);
				_timeMax = parsenumber (_timeArray select 1);
				_wavetimernd = random [_timeMin, (_timeMax + _timeMin) / 2, _timeMax];
				sleep _wavetimernd;
			} else {
				if (_wavetime == "-1") then {
					_wavetimernd = ((_infyamnt * 4) + (_vehamnt * 20) + (_mechamnt * 60) + (_armoramnt * 120));
					sleep _wavetimernd;
				} else {
					_wavetimer = parseNumber _wavetime;
					sleep _wavetimer;
				};
			};
		};
	};
};

true
