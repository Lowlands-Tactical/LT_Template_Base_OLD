_launchers = [];
"if ((configname _x) isKindOf ['Launcher', configFile >> 'CfgWeapons']) then {_launchers pushBack (configname _x)}" configClasses (configFile >> "CfgWeapons");

_usedTube = ["AGM_UsedTube", "ACE_UsedTube"];

_disposableLaunchers = [];
{
  _ace = getText (configFile >> "CfgWeapons" >> _x >> "ACE_UsedTube");
  _agm = getText (configFile >> "CfgWeapons" >> _x >> "AGM_UsedTube");
  if !(_ace == "" || _agm == "") then {_disposableLaunchers pushBack _x};
} forEach _launchers;

_disposableLaunchers
