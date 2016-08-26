
// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];
// Argument 1 is list of affected units (affected by value selected in the 'class Units' argument))
_units = param [1,[],[[]]];
// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];

//Count units in Argument
_cnt = count _units;

if(_activated && _cnt > 0 && UPSMON_INIT==1) then {

	// Get config root of module so we can get underlying values
	_UPSMONparams =[];

	//Marker
	_mrk = _logic getVariable "MarkerName";
	_UPSMONparams set [1, _mrk];
	diag_log format ["*-* LT Template Base *-* marker: %1 and pos %2", _mrk, getMarkerPos _mrk];

	//Random
	_random = _logic getVariable "Random";
	if (_random != "NONE") then {_UPSMONparams pushBack _random;};

	//No Waypoints
	_noWaypoints = _logic getVariable "NoWaypoints"	;
	if (_noWaypoints  != "NONE") then {_UPSMONparams pushBack _noWaypoints;};

	//Formation
	_formation = _logic getVariable "Formation";
	if (_formation  != "NONE") then {_UPSMONparams pushBack _formation;};

	//Behaviour
	_behaviour = _logic getVariable "Behaviour";
	if (_behaviour  != "NONE") then {_UPSMONparams pushBack _behaviour;};

	//Speedmode
	_speedmode = _logic getVariable "Speedmode";
	if (_speedmode  != "NONE") then {_UPSMONparams pushBack _speedmode;};

	_fortifyBool 	= _logic getVariable "Fortify"		; if (_fortifyBool) then {_UPSMONparams pushBack "FORTIFY";};
	_noSmokeBool 	= _logic getVariable "NoSmoke"		; if (_noSmokeBool) then {_UPSMONparams pushBack "NOSMOKE";};
	_noFollowBool 	= _logic getVariable "NoFollow"		; if (_noFollowBool) then {_UPSMONparams pushBack "NOFOLLOW";};
	_OnRoad 		= _logic getVariable "OnRoad"		; if (_OnRoad) then {_UPSMONparams pushBack "ONROAD"; };
	_LandDrop 		= _logic getVariable "LandDrop"		; if (_LandDrop) then {_UPSMONparams pushBack "LANDDROP"; };
	_NoAI 			= _logic getVariable "NoAI"			; if (_NoAI) then {_UPSMONparams pushBack "NOAI"; };
	_NoMove 		= _logic getVariable "NoMove"		; if (_NoMove) then {_UPSMONparams pushBack "NOMOVE"; };
	_NoWait 		= _logic getVariable "NoWait"		; IF (_NoWait) then {_UPSMONparams pushBack "NOWAIT"; };
	_NoSlow 		= _logic getVariable "NoSlow"		; IF (_NoSlow) then {_UPSMONparams pushBack "NOSLOW"; };
	_NoVeh 			= _logic getVariable "NoVeh"		; IF (_NoVeh) then {_UPSMONparams pushBack "NOVEH"; };
	_NoShare 		= _logic getVariable "NoShare"		; IF (_NoShare) then {_UPSMONparams pushBack "NOSHARE"; };
	_ShowMarker 	= _logic getVariable "ShowMarker"	; IF (_ShowMarker) then {_UPSMONparams pushBack "SHOWMARKER"; };
	_Track 			= _logic getVariable "Track"		; IF (_Track) then {_UPSMONparams pushBack "TRACK"; };
	_Respawn 		= _logic getVariable "Respawn"		; IF (_Respawn) then {_UPSMONparams pushBack "RESPAWN"; };
	_Ambush 		= _logic getVariable "Ambush"		; IF (_Ambush) then {_UPSMONparams pushBack "AMBUSH"; };
	_Ambush2 		= _logic getVariable "Ambush2"		; IF (_Ambush2) then {_UPSMONparams pushBack "AMBUSH"; };
	_DoRelax 		= _logic getVariable "DoRelax"		; IF (_DoRelax) then {_UPSMONparams pushBack "DOLRELAX"; };

	_deleteNumber = _logic getVariable "DeleteNumber";
	if (_deleteNumber > 0) then {_UPSMONparams pushBack "DELETE:"; _UPSMONparams pushBack _deleteNumber;};

	_CloneMin = _logic getVariable "CloneMin";
	if (_CloneMin > 0) then {_UPSMONparams pushBack "MIN:"; _UPSMONparams pushBack _CloneMin;};

	_CloneMax = _logic getVariable "CloneMax";
	if (_CloneMax > 0) then {_UPSMONparams pushBack "MAX:"; _UPSMONparams pushBack _CloneMax;};

	_RadioRangeNumber = _logic getVariable "RadioRangeNumber";
	if (_RadioRangeNumber != 8000) then {_UPSMONparams pushBack "RADIORANGE:"; _UPSMONparams pushBack _RadioRangeNumber;};

	_RespawnX = _logic getVariable "RespawnX";
	if (_RespawnX > 0) then {_UPSMONparams pushBack "RESPAWN:"; _UPSMONparams pushBack _RespawnX;};

	_RespawnDelay = _logic getVariable "RespawnDelay";
	if (_RespawnDelay > 0) then {_UPSMONparams pushBack "RESPAWNDELAY:"; _UPSMONparams pushBack _RespawnDelay;};

	_AmbushN = _logic getVariable "AmbushN";
	if (_AmbushN > 0) then {_UPSMONparams pushBack "AMBUSH:"; _UPSMONparams pushBack _AmbushN;};

	_Ambush2N = _logic getVariable "Ambush2N";
	if (_Ambush2N > 0 && _AmbushN == 0) then {_UPSMONparams pushBack "AMBUSH2:"; _UPSMONparams pushBack _Ambush2N;};

	// Pass on parameters to UPSMON.
	{
		if ( _x isKindOf "Car" || _x isKindOf "Man" || _x isKindOf "Air") then {
			_UPSMONparams set [0, _x];
			nul = _UPSMONparams execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf"
		} else {
			hint format ["%1 is not a Car, Man or Air", _x];
		};
	} foreach _units;

} else {
	if (UPSMON_INIT == 0) then {
		hint "You did not place the main UPSMON module.";
	};
};

true
