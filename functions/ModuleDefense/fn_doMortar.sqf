private ["_tgt","_delay","_type","_amount","_safety","_tmpCenter","_tmpGrp","_pos","_safePos","_rounds"];

_tgt = param [0,"",["",[]]]; // coord (array), marker (icon) or marker (area)
_type = param [1,"ModuleOrdnanceMortar_F_ammo"]; // Ammo type: ModuleOrdnanceMortar_F_ammo, ModuleOrdnanceHowitzer_F_ammo, ModuleOrdnanceRocket_F_ammo, ModuleOrdnanceRocket_F_subammo
_amount = _this select 2; // Amount of rounds
_delay = _this select 3; // Delay between rounds
_safety = _this select 4; // Player "safety"?

while {_amount > 0 } do {

  // required for every mortar
  _tmpCenter = createCenter sideLogic;
  _tmpGrp = createGroup _tmpCenter;
  _safePos = 0;
  _rounds = 0;

  // Either find a safe space or leave it as is
  while { _safePos == 0 or _rounds <= 25 } do {

    // If the tgt is a POS, just pass it 1:1
    if (typeName _tgt == "ARRAY") then {
      _pos = _tgt;
    };

    // If the tgt is a maker, check if its a location (1:1) or an area (select something random)
    if (typeName _tgt == "STRING") then {
      if ( markerShape _tgt == "ICON" ) then {
        _pos = getMarkerPos _tgt;
      } else {
        _pos = [_tgt] call CBA_fnc_randPosArea;
      };
    };

    // _pos
    _pos = [_pos, random 100, random 360] call BIS_fnc_relPos;

    if ( _safety ) then {
      _safePos = 1;
      {
        if ( !terrainIntersectASL [eyePos _x, _pos] OR !lineIntersects [eyePos _x, _pos] ) then { _safePos = 0 };
      } forEach allPlayers;
    } else {
      _safePos = 1;
    };

    _rounds = _rounds + 1;

  };

  _mortar = _tmpGrp createUnit ["ModuleOrdnance_F",_pos , [], 0, ""];
  _mortar setVariable ["type", _type];

  sleep _delay;
  _amount = _amount -1;
  _safePos = 0;
};
