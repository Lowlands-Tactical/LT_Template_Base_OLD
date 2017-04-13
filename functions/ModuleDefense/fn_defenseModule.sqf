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
		_mindist 	= _logic getVariable "Defense_MinSpawnDistance";
		_maxdist 	= _logic getVariable "Defense_MaxSpawnDistance";
		_dir 		= _logic getVariable "Defense_Direction";
		_behaviour	= _logic getVariable "Defense_Behaviour";
		_speed 		= _logic getVariable "Defense_Speed";
		_artyEnabled = _logic getVariable "Defense_EnableArty";
		_artyAmmoType = _logic getVariable "Defense_ArtyAmmoType";
		_artyRounds 	= _logic getVariable "Defense_ArtyRounds";
		_artyDelay = _logic getVariable "Defense_ArtyDelay";
		_artyDamage = _logic getVariable "Defense_ArtyDamagePlayers";

		// Verify distance value
		if (_maxdist - _mindist <= 0) exitWith {
			systemchat format ["-=Defense Module=- Min dist is higher than or equal to Max dist: %1", _maxdist - _mindist];
			diag_log format ["LT template DEBUG: -=Defense Module=- Min dist is higher than or equal to Max dist: %1", _maxdist - _mindist];
		};

		// Define defenseposition
		_defensepos = if (_mrkDefPos == "") then {getpos _logic} else {getMarkerpos _mrkDefPos};

		_searchArea = if (markerShape _mrkDefPos == "ICON" || _mrkDefPos == "") then {
			createMarker ["Search Area", _defensepos];
		} else {
			_defensepos
		};
		if (markerShape _mrkDefPos == "ICON" || _mrkDefPos == "") then {
				_searchArea setMarkerShape "ELLIPSE";
				_searchArea setMarkerSize [_SearchAreaSize,_SearchAreaSize];
				_searchArea setMarkerAlpha 0;
		};

		// Define Spawnmarkerarrays
		_InfSpawnArray = _mrkInfSpawn splitstring ",";
		_VehSpawnArray = _mrkVehSpawn splitstring ",";
		_SpawnMarkerArray = [_InfSpawnArray, _VehSpawnArray, _VehSpawnArray,_VehSpawnArray];

		// Define side
		DIAG_LOG FORMAT ["LT template DEBUG: -=Defense Module=- Faction  %1", _faction];
		_factionUnitArray = switch (_faction) do {
				case "LT_OPF_F": {LT_OPF_F};
				case "LT_OPF_G_F": {LT_OPF_G_F};
				case "LT_IND_F": {LT_IND_F};
				case "LT_IND_G_F": {LT_IND_G_F};
				case "LT_OPF_T_F": {LT_OPF_T_F};
				case "LT_IND_C_F": {LT_IND_C_F};
				case "LT_NLDO_RU_VDV_76": {LT_NLDO_RU_VDV_76};
				case "LT_NLDO_RU_VDV_31": {LT_NLDO_RU_VDV_31};
				case "LT_NLDO_UA_UAF_95": {LT_NLDO_UA_UAF_95};
				case "LT_CUP_O_TK_INS": {LT_CUP_O_TK_INS};
				case "LT_CUP_O_TK": {LT_CUP_O_TK};
				case "LT_CUP_O_CHDKZ": {LT_CUP_O_CHDKZ};
				case "LT_CUP_O_SLA": {LT_CUP_O_SLA};
				case "LT_CUP_O_RU_EMR": {LT_CUP_O_RU_EMR};
				case "LT_CUP_O_RU_FLORA": {LT_CUP_O_RU_FLORA};
				case "LT_CUP_I_NAPA": {LT_CUP_I_NAPA};
				case "LT_CUP_I_RACS": {LT_CUP_I_RACS};
				case "LT_CUP_I_TK_GUE": {LT_CUP_I_TK_GUE};
				case "LT_CUSTOM": {LT_CUSTOM};
		};

		DIAG_LOG FORMAT ["LT template DEBUG: -=Defense Module=- Faction unit array %1", _factionUnitArray];
		DIAG_LOG FORMAT ["LT template DEBUG: -=Defense Module=- Faction unit array %1", _factionUnitArray select 0 select 0];

		_factionClass = getText (configfile >> "CfgVehicles" >> (_factionUnitArray select 0 select 0) >> "faction");

		_SideNo 	= getnumber (configfile >> "CfgFactionClasses" >> _factionClass >> "side");
		_factionSide = switch (_SideNo) do {
			case 0: {EAST};
			case 1: {WEST};
			case 2: {RESISTANCE};
			case 3: {CIVILIAN};
		};

		// Define spawned quantities of units
		_inputArray = [_infy , _veh , _mech , _armor];
		_outputArray = [[],[],[],[]];
		_tempArray = [];

		for "_i" from 0 to 3 do {
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
					diag_log format ["LT template DEBUG: -=Defense Module= Error in amount of Waves. Entered amount: %1",_waves];
				};
			};
		};
		diag_log format ["LT template DEBUG: -=Defense Module= outputArray: %1",_outputArray];

		// Define amount of waves
		_wavesAmnt = if (_waves == -1) then {

			diag_log format ["LT template DEBUG: -=Defense Module= outputArray 0: %1",_outputArray select 0];
			_my = _outputArray select 0;
			diag_log format ["LT template DEBUG: -=Defense Module= outputArray type: %1", typename _my];
			diag_log format ["LT template DEBUG: -=Defense Module= outputArray select 0 type: %1", typename (_my select 0)];
			(selectMax [count (_outputArray select 0), count (_outputArray select 1), count (_outputArray select 2), count (_outputArray select 3)]) - 1
		} else {
			_waves - 1
		};
		diag_log format ["LT template DEBUG: -=Defense Module= Waves amount: %1",_wavesAmnt];
		
		// Define amount of artyrounds per wave
		_roundsArray = [];
		_roundsArray = if (_waves == -1 && Defense_EnableArty) then {
			_artyRounds splitstring ",";
		} else {
			for "_r" from 0 to _wavesAmnt do {
				_roundsArray set [_r, parsenumber _artyRounds];
			};
		};

		// Initialise waves
		for "_i" from 0 to _wavesAmnt do {
			
			// Define amount of players
			_playersAmnt = count (allPlayers - entities "HeadlessClient_F");

			// Log wave number
			diag_log format ["LT template DEBUG: -=Defense Module=- Wave %1", _i + 1];
			hint format ["Wave %1 started", _i + 1];

			// Array of spawnamounts
			_SpawnAmountArray = [[0, "Infantry"], [0, "Motorized"], [0, "Mechanized"], [0, "Armor"], [0,"Air"]];

			_weights = [4,2,2,1, 0.5];
			_factors = [0.75, 0.3, 0.3, 0.2, 0.1];
			// Define spawnamounts
			{
				//diag_log format ["LT template DEBUG: -=Defense Module= ForEachIndex: %1",_forEachIndex];
				diag_log format ["LT template DEBUG: -=Defense Module=- ForeachIndex: %1 _i: %2", _forEachIndex, _i];
				if (_outputarray select _forEachIndex select _i == -1) then {
					_w = _weights select _forEachIndex;
					_f = _factors select _forEachIndex;
					if (_playersAmnt > 1) then {round (random [_w, _playersAmnt * _f,_playersAmnt])} else {_playersAmnt * _w};
					_SpawnAmountArray select _forEachIndex set [0, if (_playersAmnt > 1) then {round (random [_w, _playersAmnt * _f,_playersAmnt])} else {_playersAmnt * _w}];
				} else {
					_SpawnAmountArray select _forEachIndex set [0, _outputarray select _forEachIndex select _i];
				};
			} forEach _SpawnAmountArray;
			diag_log format ["LT template DEBUG: -=Defense Module=- SpawnAmountArray %1", _SpawnAmountArray];

			// ForEach unittype spawn units with the amounts that come out of the
			{
				_amnt		= _x select 0;
				_UnitType 	= _x select 1;
				diag_log format ["LT template DEBUG: -=Defense Module=- Amount: %1 Unittype: %2",_amnt,_UnitType];
				
				if (_amnt == 0) then {
					diag_log format ["LT template DEBUG: -=Defense Module=- No spawn %1", _unitType];
				} else {
				
					for "_n" from 1 to _amnt do {
						
						// Get array of units of type _x from the selected faction
						_groupArray = _factionUnitArray select (_forEachIndex);
						diag_log format ["LT template DEBUG: -=Defense Module=- Grouparray %1", _groupArray];
						
						_unitcap = 120;
						
						// Define spawn position
						_spawndist = random [_mindist ,_maxdist - _mindist, _maxdist];
						_minspawndist = random [1 , 5 , 10];
						_maxspawndist = random [11 , 15, 20];

						_relpos = switch (_dir) do {
							case -1: {[_defensepos , _spawndist, getdir _logic] call BIS_fnc_relPos;};
							case -2: {[_defensepos , _spawndist, random 360] call BIS_fnc_relPos;};
							case -3: {[selectRandom (_SpawnMarkerArray select (_forEachIndex))] call CBA_fnc_randPosArea;};
						};
						// https://community.bistudio.com/wiki/findEmptyPosition

						_spawnpos = _relpos findEmptyPosition [0, 20];
						//_spawnpos = [_relpos, _minspawndist, _maxspawndist, 2, 0, 2, 0,[], _relpos] call BIS_fnc_findSafePos;
						diag_log format ["LT template DEBUG: -=Defense Module=- Spawnpos after switch %1", _spawnpos];

						if (count _groupArray == 0) then {
							diag_log format ["LT template DEBUG: -=Defense Module=- No spawn "];
						} else {
							// If infantry then spawn and give taskSearch area. If Vehicle spawn and give taskAttack.
							switch (_unitType) do {
								
								case "Infantry": {
									//waitUntil {((count allunits - _playersamnt) + _infyGroupSize) <= _unitcap};
									_grp = [_factionSide, _infyGroupSize, _spawnpos, _groupArray] call LT_fnc_createGroup;
									
									diag_log format ["LT template DEBUG: -=Defense Module=- Group: %1", _grp];
									[_grp, _searchArea, _behaviour, "RED", _speed] call CBA_fnc_taskSearchArea;
								};
								case "Air": {
									//waitUntil {((count allunits - _playersamnt) + 1) <= _unitcap};
									_grp = [_spawnpos, _spawnpos getdir _defensepos, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;
									_grp flyInHeight 100;
									diag_log format ["LT template DEBUG: -=Defense Module=- Group: %1", _grp];
									[_grp, _searchArea, _SearchAreaSize] call CBA_fnc_taskAttack;
								};

								default {
									//waitUntil {((count allunits - _playersamnt) + 1) <= _unitcap};
									_grp = [_spawnpos, _spawnpos getdir _defensepos, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;
									
									diag_log format ["LT template DEBUG: -=Defense Module=- Group: %1", _grp];
									[_grp, _searchArea, _SearchAreaSize] call CBA_fnc_taskAttack;
								};
							};
						};
						
					};	
					diag_log format ["LT template DEBUG: -=Defense Module=- %1 spawning done for wave %2", _unittype,_i + 1];					
				};
			} forEach _SpawnAmountArray;
			
			diag_log format ["LT template DEBUG: -=Defense Module=- Spawning wave %1 done", _i + 1];
			
			// Artillery startup
			if (Defense_EnableArty) then {
				_rounds = _roundsArray select _i;
				[_artyAmmoType,_rounds,_artyDelay,_artyDamage] call LT_fnc_doMortar;
			};
			
			
			/*
			// Sleep
			if (_wavetime find "," >= 0 && _wavetime != "-1") then {
				_timeArray = _wavetime splitstring ",";
				_timeMin = parsenumber (_timeArray select 0);
				_timeMax = parsenumber (_timeArray select 1);
				_wavetimernd = random [_timeMin, _timeMax - _timeMin, _timeMax];
				diag_log format ["LT template DEBUG: -=Defense Module=- Sleep %1", _wavetime];
				sleep _wavetimernd;
			} else {
				if (_wavetime == "-1") then {
					diag_log format ["LT template DEBUG: -=Defense Module=- Sleep %1", _wavetime];
					_wavetimernd = ((_infyamnt * 4) + (_vehamnt * 20) + (_mechamnt * 60) + (_armoramnt * 120));
					sleep _wavetimernd;
				} else {
					diag_log format ["LT template DEBUG: -=Defense Module=- Sleep %1", _wavetime];
					_wavetimer = parseNumber _wavetime;
					sleep _wavetimer;
				};
			};
			*/
			sleep parsenumber _wavetime;

			diag_log format ["LT template DEBUG: -=Defense Module=- Sleep check"];
		};
	};
};

true
