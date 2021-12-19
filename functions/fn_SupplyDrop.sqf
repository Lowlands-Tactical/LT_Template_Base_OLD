_p = _this select 0;
_pos = _this select 1;

// check side
_side = if (typename _p == "STRING") then {
  _p;
  } else {
  if ((str (side _p)) == "GUER") then {"Independent"} else {str (side _p)};
};


//Case selection doen, iedere side heeft zijn eigen voertuigen-pool.

//select by string of side, want ArmA doet raar als je dit niet doet.
_array_of_vehicles = switch (str side _p) do {

	case "WEST" : {[["NLD_C130H_VIV", 900], ["NLD_CH47F_ViV", 300], ["NLD_NH90", 300]]};
	case "EAST" : {[["O_T_VTOL_02_vehicle_dynamicLoadout_F", 500], ["O_Heli_Transport_04_box_F", 300], ["CUP_O_Mi8_VIV_RU", 300]]};
	case "GUER" : {[["CUP_I_Plane_ION", 900], ["I_Heli_Transport_02_F", 300], ["I_Heli_light_03_unarmed_F", 300]]};
	case "CIV" : {[["C_Plane_Civil_01_F", 500], ["C_IDAP_Heli_Transport_02_F", 300]]};
	default {[["C_Plane_Civil_01_F", 500], ["C_IDAP_Heli_Transport_02_F", 300]]};
};

_array_of_crates = switch (str side _p) do {

	case "WEST" : {["B_supplyCrate_F"]};
	case "EAST" : {["O_supplyCrate_F"]};
	case "GUER" : {["I_supplyCrate_F"]};
	case "CIV" : {["C_supplyCrate_F"]};
	default {["B_supplyCrate_F"]};
};

//Random uit de _array_of_vehicles selecteren:
_randomized_vehicle_and_height = selectRandom _array_of_vehicles;

_selected_vehicle = _randomized_vehicle_and_height select 0;
_selected_height = _randomized_vehicle_and_height select 1;

//Random uit de _array_of_crates selecteren:
_crate = selectRandom _array_of_crates;

//Path uitdenken van hoe het voertuig zal vliegen:
//Idee hier van is dat het voertuig aan komt vliegen vanuit zuid, en dan noord vertrekt, om vervolgens na ongeveer 300 meter af te buigen en retour te gaan.
//_pos = doorgegeven positie in formaat:  [links-naar-rechts, boven-naar-beneden, hoogte]

_startingplace = [_pos select 0, (_pos select 1) - 4000, _selected_height];
_pos_near = [_pos select 0, (_pos select 1) - 100, _selected_height];
_after_approach = [ (_pos select 0) + 50, (_pos select 1) + 200, _selected_height];
_return_approach = _pos;
_exit_approach = _startingplace;

[(side _p), _selected_vehicle, [_crate], _startingplace, [_pos_near, _pos, _after_approach, _return_approach, _exit_approach], 1,  _selected_height,"B_Parachute_02_F", _side ] call LT_fnc_resupply;

true
