_logic = param [0,objNull,[objNull]];
_units = param [1,[],[[]]];
_activated = param [2,true,[true]];

if (_activated) then {
	if (isServer) then {
		_mrk 		= _logic getVariable "Defense_MarkerModule";
		_faction	= _logic getVariable "Defense_Faction";
		_waves 		= _logic getVariable "Defense_Waves";
		_wavetime 	= _logic getVariable "Defense_WaveTime";
		_infy 		= _logic getVariable "Defense_InfantryAmount";
		_infyGroupSize	= _logic getVariable "Defense_InfantryGroupSize";
		_veh 		= _logic getVariable "Defense_Light_VehicleAmount";
		_mech		= _logic getVariable "Defense_MechanizedAmount";
		_armor 		= _logic getVariable "Defense_ArmorAmount";
		_mindist 	= _logic getVariable "Defense_MinSpawnDistance";
		_maxdist 	= _logic getVariable "Defense_MaxSpawnDistance";
		_dir 		= _logic getVariable "Defense_Direction";
		_behaviour	= _logic getVariable "Defense_Behaviour";
		_speed 		= _logic getVariable "Defense_Speed";

		if (_maxdist - _mindist <= 0) exitWith {
			systemchat format ["-=Defense Module=- Min dist is higher than or equal to Max dist: %1", _maxdist - _mindist];
			diag_log format ["LT template DEBUG: -=Defense Module=- Min dist is higher than or equal to Max dist: %1", _maxdist - _mindist];
		};

		_defensepos = if (_mrk == "") then {getpos _logic} else {getMarkerpos _mrk};
		_searchArea = createMarker ["Search Area", _defensepos];
		_searchArea setMarkerShape "ELLIPSE";
		_searchArea setMarkerSize [100, 100];
		_searchArea setMarkerAlpha 0;

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


		_inputArray = [_infy , _veh , _mech , _armor];
		_outputArray = [[],[],[],[]];
		_tempArray = [];

		for "_i" from 0 to 3 do {
			if (_waves == -1) then {
				_tempArray 	= _inputArray select _i splitstring ",";
				{
					_outputArray select _i append [_x];
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

		//_cntArray = [count _outputArray select 0, count _outputArray select 1, count _outputArray select 2, count _outputArray select 3];
		_wavesAmnt = if (_waves == -1) then {

			diag_log format ["LT template DEBUG: -=Defense Module= outputArray 0: %1",_outputArray select 0];
			_my = _outputArray select 0;
			diag_log format ["LT template DEBUG: -=Defense Module= outputArray type: %1", typename _my];
			diag_log format ["LT template DEBUG: -=Defense Module= outputArray type: %1", typename (_my select 0)];
			(selectMax [count (_outputArray select 0), count (_outputArray select 1), count (_outputArray select 2), count (_outputArray select 3)]) - 1
		} else {
			_waves - 1
		};

		for "_i" from 0 to _wavesAmnt do {

			diag_log format ["LT template DEBUG: -=Defense Module=- Wave %1", _i + 1];
			_playersamnt = count (allPlayers - entities "HeadlessClient_F");
			_infyArray = _outputArray select 0;
			_vehArray = _outputArray  select 1;
			_mechArray = _outputArray  select 2;
			_armorArray = _outputArray  select 3;

			_infyamnt = if (parsenumber (_infyArray select _i) == -1) then {if (_playersamnt > 1) then {round (random [4, _playersamnt * 0.75,_playersamnt])} else {_playersamnt * 4}} else {parsenumber (_infyArray select _i) };
			_vehamnt = if (parsenumber (_vehArray select _i) == -1) then {if (_playersamnt > 1) then {round (random [2, _playersamnt * 0.3,_playersamnt * 0.5])} else {_playersamnt * 2}} else {parsenumber (_vehArray select _i) };
			_mechamnt = if (parsenumber (_mechArray select _i) == -1) then {if (_playersamnt > 1) then {round (random [2, _playersamnt * 0.3,_playersamnt * 0.5])} else {_playersamnt * 2}} else {parsenumber (_mechArray select _i) };
			_armoramnt = if (parsenumber (_armorArray select _i) == -1) then {if (_playersamnt > 1) then {round (random [1, _playersamnt * 0.2,_playersamnt * 0.4])} else {_playersamnt}} else {parsenumber (_armorArray select _i) };

			_Array = [[_infyamnt, "Infantry"], [_vehamnt, "Motorized"], [_mechamnt, "Mechanized"], [_armoramnt, "Armor"]];
			diag_log format ["LT template DEBUG: -=Defense Module=- Unitstype %1", _Array];

			{
				_amnt		= _x select 0;
				_UnitType 	= _x select 1;
				for "_n" from 1 to _amnt do {

					_spawndist = random [_mindist ,_maxdist - _mindist, _maxdist];
					_minspawndist = random [1 , 5 , 10];
					_maxspawndist = random [11 , 15, 20];

					_relpos = if (_dir == -1 || _dir == -2) then {
						if (_dir == -1) then {
							[_defensepos , _spawndist, getdir _logic] call BIS_fnc_relPos;
						} else {
							[_defensepos , _spawndist, random 360] call BIS_fnc_relPos;
						};
					} else {
						[_defensepos , _spawndist, _dir] call BIS_fnc_relPos;
					};

					_spawnpos = [_relpos, _minspawndist, _maxspawndist, 2, 0, 2, 0,[], _relpos] call BIS_fnc_findSafePos;
					diag_log format ["LT template DEBUG: -=Defense Module=- Spawnpos after switch %1", _spawnpos];

					_groupArray = _factionUnitArray select _i;
					_unitcap = 120;

					diag_log format ["LT template DEBUG: -=Defense Module=- Grouparray %1", _groupArray];
					if (count _groupArray == 0) then {
						diag_log format ["LT template DEBUG: -=Defense Module=- No spawn "];
					} else {
						if (_UnitType == "Infantry") then {
							diag_log format ["LT template DEBUG: -=Defense Module=- Waituntil %1",((count allunits - _playersamnt) + 1) <= _unitcap];
							//waitUntil {((count allunits - _playersamnt) + _infyGroupSize) <= _unitcap};
							_grp = [_factionSide, _infyGroupSize, _spawnpos, _groupArray] call LT_fnc_createGroup;
							diag_log format ["LT template DEBUG: -=Defense Module=- Group: %1", _grp];
							[_grp, _searchArea, _behaviour, "RED", _speed] call CBA_fnc_taskSearchArea;
						} else {
							diag_log format ["LT template DEBUG: -=Defense Module=- Waituntil %1",((count allunits - _playersamnt) + 1) <= _unitcap];
							//waitUntil {((count allunits - _playersamnt) + 1) <= _unitcap};
							//[position,direction,type,side or group] call BIS_fnc_spawnVehicle
							_grp = [_spawnpos, _spawnpos getdir _defensepos, selectRandom _groupArray, _factionSide] call BIS_fnc_spawnVehicle;
							diag_log format ["LT template DEBUG: -=Defense Module=- Group: %1", _grp];
							[_grp, _searchArea, 100] call CBA_fnc_taskAttack;
						};

					};
				};

			} forEach _Array;

			if (_wavetime find "," >= 0 && _wavetime != "-1") then {
				_timeArray = _wavetime splitstring ",";
				_timeMin = _timeArray select 0;
				_timeMax = _timeArray select 1;
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

			diag_log format ["LT template DEBUG: -=Defense Module=- Sleep check"];
		};
	};
};

true
