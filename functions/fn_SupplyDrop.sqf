_p = _this select 0;
_pos = _this select 1;

// check side
_side = if ((str (side _p)) == "GUER") then {"independent"} else {str (side _p)};
diag_log format ["Template BASE: fn Supplydrop by:  %1 on %2 side", _p, _side];

// create parachute
// https://forums.bistudio.com/forums/topic/154858-drop-an-object-from-the-air-with-a-parachute/?do=findComment&comment=2660752

_para = createVehicle ["B_Parachute_02_F", [_pos select 0,_pos select 1, 100], [], 0, ""];

//create crate
_crate = createvehicle ["B_SupplyCrate_F", position _para, [], 0, 'NONE'];
_crate attachTo [_para, [0, 0, -1.3]];

_h = position _crate;

// Add (Chem)Light
_cratelight = "#lightpoint" createVehicle (position _crate);
_cratelight lightattachobject [_crate,[0,1,0.5]];
_cratelight setLightColor [0,250,0];
_cratelight setLightAttenuation [0.3,0,0,500];
_cratelight setLightIntensity 5;

// Add smoke while ammocrate drops
_smokeColor = "Orange";
_smoke = createVehicle ["SmokeShell"+_smokeColor, [0,0,0], [], 0 , ""];
_smoke attachTo [_crate, [0,0,0]];

waitUntil {((_h select 2) < 0.5) || isNull _para};
detach _crate;
_crate setPos [position _crate select 0, position _crate select 1, 0];

// Add smoke
_smokeColor = "Orange";
_smoke = createVehicle ["SmokeShell"+_smokeColor, [0,0,0], [], 0 , ""];
_smoke attachTo [_crate, [0,0,0]];

// start function to fill crate
_gear = [_crate,  "crate_large", _side] call lt_fnc_setVehicleGear;

true