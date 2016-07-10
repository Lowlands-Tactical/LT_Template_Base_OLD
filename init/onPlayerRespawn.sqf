// Player fatigue (set via params)
_fatigue = "lt_fatigue_onoff" call BIS_fnc_getParamValue;
if (_Fatigue == 0) then {player enableFatigue false};
