// Automatic Zones
// [area, faction, radio-range, infantry (groups), Group size #, Group Variation, cars (groups), IFVs (groups), Tanks, Helicopters ] execVM "autozone.sqf";
// ["area0", "OPF_F", 300, 10, 8, 4, 4, 2, 1, 1, 10, 10 ] execVM "autozone.sqf";

private ["_az_zone","_az_faction","_az_range","_az_infantry","_az_cars","_az_ifvs","_az_tanks","_az_helicopters","_i","_az_occupy","_az_patrol","_az_GrpSize","_az_GrpVar"];

_az_zone         = _this select 0;
_az_faction      = _this select 1;
_az_range        = _this select 2;
_az_infantry     = _this select 3;
_az_GrpSize      = _this select 4;
_az_GrpVar       = _this select 5;
_az_cars         = _this select 6;
_az_ifvs         = _this select 7;
_az_tanks        = _this select 8;
_az_helicopters  = _this select 9;
_az_occupy       = _this select 10;
_az_patrol       = _this select 11;

// Select factions
private ["_faction_units","_faction_side","_faction_car","_faction_ifv","_faction_tank","_faction_heli"];

_factionUnitArray = switch (_az_faction) do {
	#include "..\FactionSwitch.sqf"
};

_factionClass = getText (configfile >> "CfgVehicles" >> (_factionUnitArray select 0 select 0) >> "faction");

_SideNo 	= getnumber (configfile >> "CfgFactionClasses" >> _factionClass >> "side");
_faction_side = switch (_SideNo) do {
  case 0: {EAST};
  case 1: {WEST};
  case 2: {RESISTANCE};
  case 3: {CIVILIAN};
};

_faction_units  = _factionUnitArray select 0;
_faction_car    = _factionUnitArray select 1;
_faction_ifv    = _factionUnitArray select 2;
_faction_tank   = _factionUnitArray select 3;
_faction_heli   = _factionUnitArray select 4;

private ["_GrpSize"];

// Create Infantry
if (_az_infantry > 0) then {
  for "_i" from 1 to _az_infantry do {
    if ( _az_GrpVar == 0 ) then {
      _GrpSize = _az_GrpSize;
    } else {
      _GrpSize = ((_az_GrpSize - _az_GrpVar ) + (round ((random _az_GrpVar) + (random _az_GrpVar))));
    };
    _grp = [_faction_side, _GrpSize, ([getMarkerPos _az_zone, 50, random 360] call BIS_fnc_relPos), _faction_units] call lt_fnc_createGroup;
    nul = [leader _grp, _az_zone,"STAG COLUMN", "SAFE", "LIMITED","RANDOM","RADIORANGE:",_az_range] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 5;
  };
};

// Create Cars
if (_az_cars > 0) then {
  for "_i" from 1 to _az_cars do {
    _tmp_pos = [getMarkerPos _az_zone,random 50,random 360] call BIS_fnc_relPos;
		_tmp_pos = [_tmp_pos,0,200,3,0,1,0] call BIS_fnc_findSafePos;
    _veh = [_tmp_pos,random 360, (_faction_car call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOSMOKE","RADIORANGE:",(_az_range * 2)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
		(_veh select 0) allowCrewInImmobile true;
    sleep 10;
  };
};

// Create IFVs
if (_az_ifvs > 0) then {
  for "_i" from 1 to _az_ifvs do {
    _tmp_pos = [getMarkerPos _az_zone,random 100,random 360] call BIS_fnc_relPos;
		_tmp_pos = [_tmp_pos,0,200,3,0,1,0] call BIS_fnc_findSafePos;
    _veh = [_tmp_pos,random 360, (_faction_ifv call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 2)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
		(_veh select 0) allowCrewInImmobile true;
    sleep 10;
  };
};

// Create Tanks
if ( count _faction_tank > 0 AND _az_tanks > 0) then {
  for "_i" from 1 to _az_tanks do {
    _tmp_pos = [getMarkerPos _az_zone,random 150,random 360] call BIS_fnc_relPos;
		_tmp_pos = [_tmp_pos,0,200,3,0,1,0] call BIS_fnc_findSafePos;
    _veh = [_tmp_pos,random 360, (_faction_tank call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 3)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
		(_veh select 0) allowCrewInImmobile true;
    sleep 10;
  };
};

// Create Helis
if ( count _faction_heli > 0 AND _az_helicopters > 0) then {
  for "_i" from 1 to _az_helicopters do {
    _tmp_pos = [getMarkerPos _az_zone,random 30,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_heli call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 4)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};


diag_log "================= Starting City Filler =================";
private ["_ltypes","_msize","_nearLocations","_unit_count_occupy","_loc_pos","_loc_rad"];
_ltypes = ["NameCityCapital","NameCity","NameVillage"];
_msize = getMarkerSize _az_zone;
_nearLocations = nearestLocations [getMarkerPos _az_zone, _ltypes, (((getMarkerSize _az_zone) select 0) + ((getMarkerSize _az_zone) select 1)) ];
if ( count _nearLocations > 0 ) then {
  {
    if ( (locationPosition _x) inArea _az_zone ) then
    {

      _unit_count_occupy = 0;
      _unit_count_patrol = 0;
      _loc_pos = locationPosition _x;
      if ( (size _x) select 0 > (size _x) select 1 ) then { _loc_rad = (size _x) select 0; } else { _loc_rad = (size _x) select 1; };
      diag_log format["Loc Radius: %1", _loc_rad];

      _houses = nearestObjects [_loc_pos, ["House","House_F"], _loc_rad];
      diag_log format["Buildings: %1",_houses];
      diag_log format["Building #: %1", count _houses];

      if ( count _houses == 0 ) then {
        _unit_count_occupy = (((_loc_rad)/100) ^ 2) * (_az_occupy/100);
        _unit_count_patrol = (((_loc_rad)/100) ^ 2) * (_az_patrol/100);
      } else {
        _unit_count_occupy = ceil (count _houses * (_az_occupy/100));
        _unit_count_patrol = ceil (count _houses * (_az_patrol/100));
      };
      diag_log format["Unit count (occupation): %1", _unit_count_occupy];
      diag_log format["Unit count (patrols): %1", _unit_count_patrol];

      if ( _az_occupy > 0 ) then {
        _grp = [_faction_side, ceil _unit_count_occupy, locationPosition _x, _faction_units] call lt_fnc_createGroup;
        sleep _unit_count_occupy;
        _nul = [(leader _grp),_loc_rad * 1.5,false,[_az_occupy,5],true, true] execVM "\lt_template_base\AI\GARRISON\Garrison_script.sqf";
      };

      if ( _az_patrol > 0 ) then
      {
        _marker = createMarker [format["town%1",random 9999], _loc_pos];
        _marker setMarkerSize [ _loc_rad * 1.5 , _loc_rad * 1.5 ];
        _marker setMarkerShape "RECTANGLE";
        _marker setMarkerAlpha 0;

        while { _unit_count_patrol > 0 } do
        {
          _grp = [_faction_side, ceil 5, locationPosition _x, _faction_units] call lt_fnc_createGroup;
          sleep 5;
          nul = [leader _grp, _marker,"STAG COLUMN", "SAFE", "LIMITED","NOFOLLOW","RANDOM","RADIORANGE:",_az_range,"onroad"] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
          _unit_count_patrol = _unit_count_patrol - 5;
        };
      };
    };
  } forEach _nearLocations;
};
