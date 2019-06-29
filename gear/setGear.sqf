if (hasInterface) then {
  _unit = player;
  _role = _unit getvariable ["LT_unit_role","server"];
  _exclude = _unit getVariable ["LT_camo_exclude", 0];
  _nvg_enabled = "lt_nvg_onoff" call BIS_fnc_getParamValue;

  _RolesArray = ["custom","co","pl","m","tl","mg","amg","rat","dm","mmgg","mmgag","hmgg","hmgag","matg","matag","hatg","hatag","mtrg","mtrag","sn","sp","vc","vd","vg","pp","pcc","pc","eng","engm","div","r","car","smg","gren"];

  diag_log format ["LT Template DEBUG: role is %1 and exclude is %2",_role, _exclude];
  diag_log format ["LT Template DEBUG: setGear.sqf Role in RolesArray: %1", _role IN _RolesArray];

  if (_role != "custom" && _role IN _RolesArray) then {

    if !(isNil "LT_wpn_var_BLUFOR" || isNil "LT_wpn_var_OPFOR"|| isNil "LT_wpn_var_GUER") then {

      switch (side player) do {
        case WEST: {
          if !(LT_wpn_var_BLUFOR == "None") then {
            _handle = execVM LT_wpn_var_BLUFOR;
            waitUntil {scriptDone _handle};
          };
        };
        case EAST: {
          if !(LT_wpn_var_OPFOR == "None") then {
            _handle = execVM LT_wpn_var_OPFOR;
            waitUntil {scriptDone _handle};
          };
        };
        case independent: {
          if !(LT_wpn_var_GUER == "None") then {
            _handle = execVM LT_wpn_var_GUER;
            waitUntil {scriptDone _handle};
          };
        };
      };
    };

    _handleCustomGear = execVM "customGear.sqf";
    waitUntil {scriptDone _handleCustomGear};

    #include "setItems.sqf"

    _disposableLaunchers = [] call LT_fnc_isLauncherDisposable;

    // ADD UNIVERSAL ITEMS
    // Add items universal to all units of this faction

    // Clean up the player
    removeAllAssignedItems _unit;
    removeAllWeapons _unit;

    if (!isNull (unitBackpack _unit)) then {
      diag_log format ["LT template DEBUG: has backpack: %1", (unitBackpack _unit)];
      clearMagazineCargoGlobal (unitBackpack _unit);
      clearWeaponCargoGlobal (unitBackpack _unit);
      clearItemCargoGlobal (unitBackpack _unit);
    };


    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _morphine;
    _unit addItem _morphine;
    _unit linkItem _map;        // Add and equip the map
    _unit linkItem _compass;      // Add and equip a compass
    _unit linkItem _radio;        // Add and equip A3's default radio
    _unit linkItem _watch;        // Add and equip a watch
    _unit addItem _mapflashlight;  // Add Flashlight XL50


    // ====================================================================================

    // SETUP LOADOUTS

    switch (_role) do
    {

    // ====================================================================================

    // LOADOUT: COMMANDER
      case "co":
      {
        _unit addweapon _glrifle;
        _unit addweapon _pistol;
        _unit addWeapon _rangefinder;
        _unit addItem _uavterminal;
        _unit assignItem _uavterminal;
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_pistolmag,2];
        _unit addmagazines [_grenade,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_glmag, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 6];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadegreen,2];
      };

    // LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
      case "dc":
      {
        _unit addweapon _glrifle;
        _unit addweapon _pistol;
        _unit addWeapon _rangefinder;
        _unit addItem _uavterminal;
        _unit assignItem _uavterminal;
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_pistolmag,2];
        _unit addmagazines [_grenade,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_glmag, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 6];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadegreen,2];
      };

    // LOADOUT: MEDIC
      case "m":
      {
        _unit addweapon _carbine;
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addmagazines [_smokegrenade,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addItemCargoGlobal [_bandages,30];
        (unitBackpack _unit) addItemCargoGlobal [_morphine,15];
        (unitBackpack _unit) addItemCargoGlobal [_epinephrine,10];
        (unitBackpack _unit) addItemCargoGlobal [_bloodbags,5];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 7];
        (unitBackpack _unit) addItemCargoGlobal [_firstaid, 4];

        _unit addmagazines [_carbinemag,7];
      };

    // LOADOUT: FIRE TEAM LEADER
      case "ftl":
      {
        _unit addweapon _glrifle;
        _unit addWeapon _rangefinder;
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_grenade,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_glmag, 7];
        (unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 6];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadegreen,2];
      };


    // LOADOUT: AUTOMATIC RIFLEMAN
      case "ar":
      {
        _unit addweapon _AR;
        _unit addweapon _pistol;
        _unit addmagazines [_pistolmag,4];
        _unit addmagazines [_grenade,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 6];
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
        _attachments pushback (_bipod1);
      };

    // LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
      case "aar":
      {
        _unit addweapon _rifle;
        _unit addmagazines [_riflemag_tr,2];
        _unit addWeapon _simplebinoculars;
        _unit addItem _spade;
        _unit addmagazines [_grenade,2];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
      };

    // LOADOUT: RIFLEMAN (AT)
      case "rat":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_grenade,2];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        _unit addweapon _RAT;
        if !(_RAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_ratmag1, 2];
          (unitBackpack _unit) addMagazineCargoGlobal [_ratmag2, 1];
        };

      };

    // LOADOUT: DESIGNATED MARKSMAN
      case "dm":
      {
        _unit addweapon _DMrifle;
        _unit addweapon _pistol;
        _unit addWeapon _advancedbinoculars;
        _unit addItem _atragmx;
        _unit addItem _dagr;
        _unit addItem _kestrel;
        _unit addmagazines [_pistolmag,3];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag, 9];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        (unitBackpack _unit) addItemCargoGlobal [_spotting_scope,1];
        (unitBackpack _unit) addItemCargoGlobal [_rangecard,1];
        _attachments = [_attachDM,_scopeDM];
        if ( _nvg_enabled == 1 ) then {(unitBackpack _unit) addItemCargoGlobal [ "optic_NVS", 1]};
      };

    // LOADOUT: MEDIUM MG GUNNER
      case "mmgg":
      {
        _unit addweapon _MMG;
        _unit addweapon _pistol;
        _unit addmagazines [_pistolmag,4];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
        _attachments = [_attach1,_bipod2];
      };

    // LOADOUT: MEDIUM MG ASSISTANT GUNNER
      case "mmgag":
      {
        _unit addweapon _rifle;
        _unit addWeapon _rangefinder;

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
      };

    // LOADOUT: HEAVY MG GUNNER
      case "hmgg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addBackpack _baghmgg;
      };

    // LOADOUT: HEAVY MG ASSISTANT GUNNER
      case "hmgag":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        //["hmgag"] call _backpack;
        _unit addWeapon _rangefinder;
        _unit addBackpack _baghmgag;
      };

    // LOADOUT: MEDIUM AT GUNNER
      case "matg":
      {
        //["matg"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
        if !(_MAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
        };
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_smokegrenade,2];
        if !(_MAT in _disposableLaunchers) then { _Unit addMagazines [_MATmag1, 1]; };
        _unit addweapon _carbine;
        _unit addweapon _MAT;
      };

    // LOADOUT: MEDIUM AT ASSISTANT GUNNER
      case "matag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;;

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 9];
        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
        if !(_MAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
        };
      };

    // LOADOUT: HEAVY AT GUNNER
      case "hatg":
      {
        _unit addweapon _carbine;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        if !(_HAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
          (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,7];
        };
        _unit addWeapon _HAT;
      };

    // LOADOUT: HEAVY AT ASSISTANT GUNNER
      case "hatag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        if !(_HAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_HATmag2, 1];
          (unitBackpack _unit) addMagazineCargoGlobal [_grenade,1];
          (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade,1];
          (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,1];
          (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,7];
          (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr,2];
        };
      };
      // LOADOUT: Static AT Gunner
      case "statg":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addBackpack _baghatg;
      };

      // LOADOUT: Static AT assistant Gunner
      case "statag":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addWeapon _rangefinder;
        _unit addBackpack _baghatag;
      };

    // LOADOUT: MORTAR GUNNER
      case "mtrg":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addBackpack _bagmtrg;
      };

    // LOADOUT: MORTAR ASSISTANT GUNNER
      case "mtrag":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addWeapon _rangefinder;
        _unit addBackpack _bagmtrag;
      };

    // LOADOUT: MEDIUM SAM GUNNER
      case "msamg":
      {
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_grenade,1];
        _unit addweapon _SAM;
      };

    // LOADOUT: MEDIUM SAM ASSISTANT GUNNER
      case "msamag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,7];
        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr,2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade,1];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,1];
      };

    // LOADOUT: HEAVY SAM GUNNER
      case "hsamg":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addBackpack _baghsamg;
      };

    // LOADOUT: HEAVY SAM ASSISTANT GUNNER
      case "hsamag":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addBackpack _baghsamag;
      };

    // LOADOUT: SNIPER
      case "sn":
      {
        _unit addmagazines [_SNrifleMag,9];
        _unit addweapon _SNrifle;
        _unit addmagazines [_pistolmag,4];
        _unit addweapon _pistol;
        _unit addmagazines [_smokegrenade,2];
        _attachments = [_scope3];
        _unit addItem _atragmx;
        _unit addItem _dagr;
        _unit addItem _rangecard;
        _unit addItem _kestrel;
        _unit addItem _gps;
        _unit assignItem _gps;
        _attachments = [_attachSNP,_scopeSNP];
        if ( _nvg_enabled == 1 ) then {(unitBackpack _unit) addItemCargoGlobal [ "optic_NVS", 1]};
      };

    // LOADOUT: SPOTTER
      case "sp":
      {
        _unit addmagazines [_glriflemag,7];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_glmag,3];
        _unit addmagazines [_glsmokewhite,4];
        _unit addweapon _glrifle;          //_COrifle
        _unit addmagazines [_smokegrenade,2];
        _unit addWeapon _advancedbinoculars;
        _unit addItem _atragmx;
        _unit addItem _dagr;
        _unit addItem _spotting_scope;
        _unit addItem _rangecard;
        _unit addItem _kestrel;
        _unit addItem _gps;
        _unit assignItem _gps;
        _attachments = [_attach1,_scope2];
        if ( _nvg_enabled == 1 ) then {(unitBackpack _unit) addItemCargoGlobal [ "optic_NVS", 1]};
      };

    // LOADOUT: VEHICLE COMMANDER
      case "vc":
      {
        _unit addmagazines [_smgmag,5];
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addWeapon _rangefinder;
      };

    // LOADOUT: VEHICLE DRIVER
      case "vd":
      {
        _unit addweapon _smg;
        _unit addItem _gps;
        _unit assignItem _gps;

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
        (unitBackpack _unit) addItemCargoGlobal [_smgmag,5];
        (unitBackpack _unit) addItemCargoGlobal [_smokegrenade,2];
      };

    // LOADOUT: VEHICLE GUNNER
      case "vg":
      {
        _unit addmagazines [_smgmag,5];
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        _unit addItem _gps;
        _unit assignItem _gps;
      };

    // LOADOUT: AIR VEHICLE PILOTS
      case "pp":
      {
        _unit addmagazines [_smgmag,5];
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        _unit addItem _gps;
        _unit assignItem _gps;
      };

    // LOADOUT: AIR VEHICLE CREW CHIEF
      case "pcc":
      {
        _unit addmagazines [_smgmag,5];
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        //["cc"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
      };

    // LOADOUT: AIR VEHICLE CREW
      case "pc":
      {
        _unit addmagazines [_smgmag,5];
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
      };

    // LOADOUT: ENGINEER (DEMO)
      case "eng":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_satchel,2];
        _unit addItem _minedetector;
        //["eng"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
        (unitBackpack _unit) addItemCargoGlobal [_clacker,1];
        (unitBackpack _unit) addItemCargoGlobal [_satchel,2];
      };

    // LOADOUT: ENGINEER (MINES)
      case "engm":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_APmine2,2];
        _unit addItem _minedetector;
        //["engm"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
        (unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
        (unitBackpack _unit) addItemCargoGlobal [_clacker,1];
      };

    // LOADOUT: UAV OPERATOR
      case "uav":
      {
        _unit addmagazines [_riflemag,7];
        _unit addmagazines [_riflemag_tr,2];
        _unit addweapon _rifle;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit linkItem _uavterminal;
        //["uav"] call _backpack;
        _unit addBackpack _baguav;
      };

    // LOADOUT: Diver
      case "div":
      {
        _unit addmagazines [_diverMag1,4];
        _unit addmagazines [_diverMag2,3];
        _unit addweapon _diverWep;
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,3];
        _attachments = [_attach1,_scope1,_silencer1];
        //["div"] call _backpack;
        _unit addBackpack _bagmediumdiver;

        (unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
      };

    // LOADOUT: RIFLEMAN
      case "r":
      {
        _unit addweapon _rifle;

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 11];
        (unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag,1];
      };

    // LOADOUT: CARABINEER
      case "car":
      {
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,3];
        ["car"] call _backpack;
      };

    // LOADOUT: SUBMACHINEGUNNER
      case "smg":
      {
        _unit addmagazines [_smgmag,7];
        _unit addweapon _smg;
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,3];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
      };

    // LOADOUT: GRENADIER
      case "gren":
      {
        _unit addmagazines [_glriflemag,7];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addweapon _glrifle;
        _unit addmagazines [_glmag,6];
        _unit addmagazines [_glsmokewhite,2];
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,2];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
        (unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
      };

    // LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
       default
       {
        _unit addmagazines [_riflemag,7];
        _unit addweapon _rifle;

        _unit selectweapon primaryweapon _unit;
       };


    // ====================================================================================

    // END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
    };

    diag_log format ["LT Template DEBUG: setGear.sqf Switch/Case define done"];

    if (typeName _attachments == typeName []) then {
      removeAllPrimaryWeaponItems _unit;
      {
        // loop trough the attachments and add them to the weapon
        _unit addPrimaryWeaponItem _x;
      } foreach _attachments;
    };

    // Handle handgun attachments
    if (typeName _hg_attachments == typeName []) then {
      removeAllHandgunItems _unit;
      {
        // loop trough the attachments and add them to the weapon
        _unit addHandgunItem _x;
      } foreach _hg_attachments;
    };

    // NVG
    _nvg = if (isNil "lt_template_nvg") then {"ACE_NVG_Wide"} else {lt_template_nvg};
    _nvgLinked = hmd _unit;
    _nvg_enabled = "lt_nvg_onoff" call BIS_fnc_getParamValue;
    [_unit, _nvgLinked, _nvg_enabled, _nvg] call LT_fnc_NVGParameters;

    diag_log format ["LT Template DEBUG: setGear.sqf finished"];
    diag_log format ["LT Template DEBUG: setGear.sqf attachments attached to weapons"];

    [_unit] call LT_fnc_checkUnitWeight;
  };

};
