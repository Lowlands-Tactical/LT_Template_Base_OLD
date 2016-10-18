// Automatic Zones
// [area, faction, radio-range, infantry (groups), cars (groups), IFVs (groups), Tanks, Helicopters ] execVM "autozone.sqf";
// ["area0", "OPF_F", 300, 10, 4, 2, 1, 1, 10, 10 ] execVM "autozone.sqf";

// Argument 0 is module logic.
_logic = param [0,objNull,[objNull]];

// True when the module was activated, false when it's deactivated (i.e., synced triggers are no longer active)
_activated = param [2,true,[true]];

// Please Work

private ["_az_zone","_az_faction","_az_range","_az_infantry","_az_cars","_az_ifvs","_az_tanks","_az_helicopters","_i","_az_occupy","_az_patrol"];

//  _az_zone         = _this select 0;
// _az_faction      = _this select 1;
// _az_range        = _this select 2;
// _az_infantry     = _this select 3;
// _az_cars         = _this select 4;
// _az_ifvs         = _this select 5;
// _az_tanks        = _this select 6;
// _az_helicopters  = _this select 7;
// _az_occupy       = _this select 8;
// _az_patrol       = _this select 9;


_az_zone = _logic getVariable "MarkerName";
_az_faction = _logic getVariable "Faction";
_az_range = _logic getVariable "RadioRange";
_az_infantry = _logic getVariable "Infantry";
_az_cars = _logic getVariable "Cars";
_az_ifvs = _logic getVariable "IFVs";
_az_tanks = _logic getVariable "Tanks";
_az_helicopters= _logic getVariable "Helicopters";
_az_occupy = _logic getVariable "Occupation";
_az_patrol = _logic getVariable "Patrol";

// Faction definitions
// OPFOR
_opf_f_units = ["O_Soldier_F","O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_AR_F","O_Soldier_SL_F","O_Soldier_TL_F","O_Soldier_M_F","O_Soldier_LAT_F","O_medic_F","O_Soldier_repair_F","O_Soldier_exp_F","O_Soldier_A_F","O_Soldier_AA_F","O_engineer_F"];
_opf_f_car = ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F"];
_opf_f_ifv = ["O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_AA_F","O_APC_Wheeled_02_rcws_F"];
_opf_f_tank = ["O_MBT_02_cannon_F"];
_opf_f_heli = ["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];

// OPFOR Guerilla
_opf_g_f_units = ["O_G_Soldier_F","O_G_Soldier_lite_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_medic_F","O_G_engineer_F","O_G_Soldier_exp_F","O_G_Soldier_GL_F","O_G_Soldier_M_F","O_G_Soldier_LAT_F","O_G_Soldier_A_F"];
_opf_g_f_car = ["O_G_Offroad_01_armed_F"];
_opf_g_f_ifv = ["O_APC_Wheeled_02_rcws_F"];

// AAF
_ind_f_units = ["I_Soldier_A_F","I_soldier_AR_F","I_medic_F","I_engineer_F","I_soldier_exp_F","I_Soldier_GL_F","I_soldier_M_F","I_soldier_AA_F","I_soldier_AT_F","I_officer_F","I_soldier_repair_F","I_Soldier_F","I_soldier_LAT_F","I_Soldier_lite_F","I_Soldier_SL_F","I_Soldier_TL_F"];
_ind_f_car = ["I_MRAP_03_hmg_F", "I_MRAP_03_gmg_F"];
_ind_f_ifv = ["I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
_ind_f_tank = ["I_MBT_03_cannon_F"];
_ind_f_heli = ["I_Heli_Transport_02_F"];

// Altis Guerilla
_ind_g_f_units = ["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F"];
_ind_g_f_car = ["I_G_Offroad_01_armed_F"];
_ind_g_f_ifv = ["I_APC_Wheeled_03_cannon_F"];

// Chinese
_opf_t_f_units = ["O_T_Soldier_A_F","O_T_Medic_F","O_T_Soldier_AR_F","O_T_Engineer_F","O_T_Soldier_Exp_F","O_T_Soldier_GL_F","O_T_Support_GMG_F","O_T_Soldier_UAV_F","O_T_Soldier_universal_F","O_T_Soldier_TL_F","O_T_Soldier_SL_F","O_T_Soldier_LAT_F","O_T_Soldier_F","O_T_Soldier_Repair_F","O_T_Soldier_PG_F","O_T_Officer_F","O_T_Soldier_AT_F","O_T_Soldier_AA_F","O_T_Soldier_M_F"];
_opf_t_f_car = ["O_T_LSV_02_armed_F","O_T_LSV_02_armed_viper_F","O_T_LSV_02_unarmed_F","O_T_LSV_02_unarmed_viper_F","O_T_LSV_02_armed_black_F","O_T_LSV_02_armed_ghex_F","O_T_LSV_02_armed_arid_F","O_T_LSV_02_unarmed_black_F","O_T_LSV_02_unarmed_ghex_F","O_T_LSV_02_unarmed_arid_F","O_T_MRAP_02_hmg_ghex_F","O_T_MRAP_02_gmg_ghex_F","","","","","","","","",""];
_opf_t_f_ifv = ["O_T_APC_Tracked_02_cannon_ghex_F","O_T_APC_Wheeled_02_rcws_ghex_F"];
_opf_t_f_tank = ["O_T_MBT_02_cannon_ghex_F"];
_opf_t_f_heli = ["O_T_VTOL_02_infantry_F","O_T_VTOL_02_vehicle_F","O_T_VTOL_02_infantry_hex_F","O_T_VTOL_02_infantry_ghex_F","O_T_VTOL_02_infantry_grey_F","O_T_VTOL_02_vehicle_hex_F","O_T_VTOL_02_vehicle_ghex_F","O_T_VTOL_02_vehicle_grey_F"];

// Select factions
private ["_faction_units","_faction_side","_faction_car","_faction_ifv","_faction_tank","_faction_heli"];

if (_az_faction == "OPF_F") then { _faction_units = _opf_f_units; _faction_side = east; _faction_car = _opf_f_car; _faction_ifv = _opf_f_ifv; _faction_tank = _opf_f_tank; _faction_heli = _opf_f_heli; };
if (_az_faction == "OPF_G_F") then { _faction_units = _opf_g_f_units; _faction_side = east; _faction_car = _opf_g_f_car; _faction_ifv = _opf_g_f_ifv; _faction_tank = []; _faction_heli = []; };
if (_az_faction == "IND_F") then { _faction_units = _ind_f_units; _faction_side = independent; _faction_car = _ind_f_car;  _faction_ifv = _ind_f_ifv; _faction_tank = _ind_f_tank; _faction_heli = _ind_f_heli; };
if (_az_faction == "IND_G_F") then { _faction_units = _ind_g_f_units; _faction_side = independent; _faction_car = _ind_g_f_car; _faction_ifv = _ind_g_f_ifv; _faction_tank = []; _faction_heli = []; };
if (_az_faction == "OPF_T_F") then { _faction_units = _opf_t_f_units; _faction_size = east; _faction_car = _opf_t_f_car; _faction_ifv = _opf_t_f_ifv; _faction_tank = _opf_t_f_tank; _faction_heli = _opf_t_f_heli; };

// Create Infantry
if (_az_infantry > 0) then {
  for "_i" from 1 to _az_infantry do {
    _grp = [_faction_side, random [5,8,11], ([getMarkerPos _az_zone, 50, random 360] call BIS_fnc_relPos), _faction_units] call lt_fnc_createGroup;
    nul = [leader _grp, _az_zone,"STAG COLUMN", "SAFE", "LIMITED","NOFOLLOW","RANDOM","RADIORANGE:",_az_range] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 5;
  };
};

// Create Cars
if (_az_cars > 0) then {
  for "_i" from 1 to _az_cars do {
    _tmp_pos = [getMarkerPos _az_zone,random 50,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_car call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 2)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};

// Create IFVs
if (_az_ifvs > 0) then {
  for "_i" from 1 to _az_ifvs do {
    _tmp_pos = [getMarkerPos _az_zone,random 100,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_ifv call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 2)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
    sleep 10;
  };
};

// Create Tanks
if ( count _faction_tank > 0 AND _az_tanks > 0) then {
  for "_i" from 1 to _az_tanks do {
    _tmp_pos = [getMarkerPos _az_zone,random 150,random 360] call BIS_fnc_relPos;
    _veh = [_tmp_pos,random 360, (_faction_tank call BIS_fnc_selectRandom), _faction_side] call BIS_fnc_spawnVehicle;
    nul = [leader (_veh select 2), _az_zone, "SAFE", "LIMITED","NOFOLLOW","NOSMOKE","RADIORANGE:",(_az_range * 3)] execVM "\lt_template_base\AI\UPSMON\UPSMON.sqf";
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
