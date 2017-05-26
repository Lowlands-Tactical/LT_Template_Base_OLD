PRIVATE ["_userDefUsedTube", "_launchers","_usedTube","_disposableLaunchers","_ace","_agm"];

_launchers = [];
"if ((configname _x) isKindOf ['Launcher', configFile >> 'CfgWeapons']) then {_launchers pushBack (configname _x)}" configClasses (configFile >> "CfgWeapons");

_usedTube = ["AGM_UsedTube", "ACE_UsedTube"];
_cnt = (count _usedTube) - 1;

_disposableLaunchers = [];
{
  for "_i" from 0 to _cnt do {
    _disp = getText (configFile >> "CfgWeapons" >> _x >> (_usedTube select _i));
    // diag_log format ["LT Template Debug: Disposable launchers: launcher: %1 disposable: %2",_x, _disp];
    if !(_disp == "" || _x in _disposableLaunchers) then {
      _disposableLaunchers pushBack _x
    };
  };
} forEach _launchers;

_disposableLaunchers
