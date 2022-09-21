// Resets player colour when respawn

_colourTeam = assignedTeam player;
player assignTeam _colourTeam;


//After respawn reassign all radios and channels

waitUntil { ([] call acre_api_fnc_isInitialized) };

_corpse = _this select 1;
_hasRadio = [player] call acre_api_fnc_hasRadio;
_has343Radio = [player, "ACRE_PRC343"] call acre_api_fnc_hasKindOfRadio;
_has152Radio = [player, "ACRE_PRC152"] call acre_api_fnc_hasKindOfRadio;

if (_hasRadio == false) exitWith 
{
    diag_log "LT template DEBUG: player has no radio";
};

if (_has343Radio == true) then 
{
    // SR radio
    _343Old = ["ACRE_PRC343", _corpse] call acre_api_fnc_getAllRadiosByType;
    _343Radio = _343Old select 0;
    _343Ear = [_343Radio] call acre_api_fnc_getRadioSpatial;
    _343Channel = [_343Radio] call acre_api_fnc_getRadioChannel;
    _343Volume = [_343Radio] call acre_api_fnc_getRadioVolume;
    _343New = ["ACRE_PRC343", player] call acre_api_fnc_getAllRadiosByType;
    _343RadioNew = _343New select 0;
    [_343RadioNew, _343Ear] call acre_api_fnc_setRadioSpatial;
    [_343RadioNew, _343Channel] call acre_api_fnc_setRadioChannel;
    [_343RadioNew, _343Volume] call acre_api_fnc_setRadioVolume;
    [_343RadioNew] call acre_api_fnc_setCurrentRadio;
};

if (_has152Radio == true) then 
{
    // LR radio
    _152Old = ["ACRE_PRC152", _corpse] call acre_api_fnc_getAllRadiosByType;
    _152Radio = _152Old select 0;
    _152Ear = [_152Radio] call acre_api_fnc_getRadioSpatial;
    _152Channel = [_152Radio] call acre_api_fnc_getRadioChannel;
    _152Volume = [_152Radio] call acre_api_fnc_getRadioVolume;
    _152New = ["ACRE_PRC152", player] call acre_api_fnc_getAllRadiosByType;
    _152RadioNew = _152New select 0;
    [_152RadioNew, _152Ear] call acre_api_fnc_setRadioSpatial;
    [_152RadioNew, _152Channel] call acre_api_fnc_setRadioChannel;
    [_152RadioNew, _152Volume] call acre_api_fnc_setRadioVolume;
};
