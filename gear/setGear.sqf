if (hasInterface) then {
  _unit = player;
  _role = _unit getvariable ["LT_unit_role","server"];
  _exclude = _unit getVariable ["LT_camo_exclude", 0];
  _nvg_enabled = "lt_nvg_onoff" call BIS_fnc_getParamValue;

  _RolesArray = [ "custom",
      "co","coplas","dc","m","ftl", // Command Roles
      "ar","aar","rat","dm", // General Roles
      "mmgg","mmgag","hmgg","hmgag","matg","matag","hatg","hatag", // Support Roles
      "mtrg","mtrag","msamg","msamag","hsamg","hsamag", // Static Roles
      "sn","sp", // Snipers
      "vc","vd","vg","pp","pcc","pc", // Vehicle Roles
      "eng","engm", // Engineers
      "uav","jtac", // UAV / Support
      "div","r","car","smg","rg", // Remaining Weapon Roles
      "lvdw", // LUL
      "gren","flameth","shot","plasmag","plasmaag","specialg","specialag", // 40k Support Roles
      "com","complas","pri","ranger","rangerAT","sister","sisterMedic" // Imperial Roles
      ];
  _SpecialSkeletonRolesArray = ["smarine","smarineSergeant","smarineHeavy","smarineMelta","smarineFlameth","smarineDreadAssault","smarineDreadDualLas","smarineDreadMultiMelta"];

  diag_log format ["LT Template DEBUG: role is %1 and exclude is %2",_role, _exclude];
  diag_log format ["LT Template DEBUG: setGear.sqf Role in RolesArray: %1", _role IN _RolesArray];

  if (_role != "custom" && (_role IN _RolesArray || _role IN _SpecialSkeletonRolesArray)) then {
    if (_role IN _SpecialSkeletonRolesArray) then {
      _handle = execVM LT_wpn_var_SPECIALSKELETON;
      waitUntil {scriptDone _handle};
    } else {
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

    // NVG INIT
    if (_role in ["smarine","smarineSergeant","smarineHeavy","smarineMelta","smarineFlameth"]) then {
      _nvg = _nvgSmarine;
    } else {
      _nvg = if (isNil "lt_template_nvg") then {"ACE_NVG_Wide"} else {lt_template_nvg};
    };

    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _bandages;
    _unit addItem _morphine;
    _unit addItem _morphine;
    _unit addItem _quikclot;
    _unit addItem _quikclot;
    _unit addItem _quikclot;
    _unit addItem _tourniquet;
    _unit addItem _tourniquet;
    _unit addItem _tourniquet;
    _unit addItem _tourniquet;
    _unit addItem _cabletie;
    _unit addItem _cabletie;
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
        _unit addweapon _bigPistol;
        _unit addWeapon _rangefinder;
        _unit addItem _uavterminal;
        _unit assignItem _uavterminal;
        _unit addmagazines [_bigPistolmag,5];
        _unit addmagazines [_grenade,1];

        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_smokegrenadegreen,2];
      };

      // LOADOUT: COMMANDER /w Plasma Pistol
        case "coplas":
        {
          _unit addweapon _PlasmaPistol;
          _unit addWeapon _rangefinder;
          _unit addItem _uavterminal;
          _unit assignItem _uavterminal;
          _unit addmagazines [_PlasmaPistolMag,5];
          _unit addmagazines [_grenade,1];

          _unit addmagazines [_grenade, 2];
          _unit addmagazines [_mgrenade, 3];
          _unit addmagazines [_smokegrenade, 4];
          _unit addmagazines [_smokegrenadegreen,2];
          _unit addItem _PlasmaCoolantS;
          _unit addItem _PlasmaCoolantS;
          _unit addItem _PlasmaCoolantS;
          _unit addItem _PlasmaCoolantS;
        };

    // LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
      case "dc":
      {
        _unit addweapon _glrifle;
        _unit addweapon _pistol;
        _unit addWeapon _rangefinder;
        _unit addItem _uavterminal;
        _unit assignItem _uavterminal;
        _unit addmagazines [_pistolmag,2];
        _unit addmagazines [_grenade,1];

        _unit addmagazines [_glmag, 5];
        _unit addmagazines [_glsmokewhite, 6];
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_smokegrenadegreen,2];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_glriflemag, 11];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: MEDIC
      case "m":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_carbinemag,7];
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addmagazines [_smokegrenade, 8];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addItemCargoGlobal [_bandages,40];
        (unitBackpack _unit) addItemCargoGlobal [_elasticbandages,40];
        (unitBackpack _unit) addItemCargoGlobal [_quikclot,40];
        (unitBackpack _unit) addItemCargoGlobal [_tourniquet,12];
        (unitBackpack _unit) addItemCargoGlobal [_splint,15];
        (unitBackpack _unit) addItemCargoGlobal [_morphine,30];
        (unitBackpack _unit) addItemCargoGlobal [_epinephrine,20];
        (unitBackpack _unit) addItemCargoGlobal [_bloodbags,5];
        (unitBackpack _unit) addItemCargoGlobal [_plasmaIV,5];
        (unitBackpack _unit) addItemCargoGlobal [_saline,8];
      };

    // LOADOUT: FIRE TEAM LEADER
      case "ftl":
      {
        _unit addweapon _glrifle;
        _unit addWeapon _rangefinder;
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_glmag, 7];
        _unit addmagazines [_glsmokewhite, 6];
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_smokegrenadegreen,2];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_glriflemag, 11];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };


    // LOADOUT: AUTOMATIC RIFLEMAN
      case "ar":
      {
        _unit addweapon _AR;
        _unit addweapon _pistol;
        _unit addmagazines [_pistolmag,4];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_grenade, 1];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 3];
        _attachments pushback (_bipod1);
        _attachments pushback (_scopeMG);

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 6];
      };

    // LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
      case "aar":
      {
        _unit addweapon _rifle;
        _unit addWeapon _simplebinoculars;
        _unit addItem _spade;
        _unit addmagazines [_grenade,2];
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 4];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_riflemag, 11];
        _unit addmagazines [_riflemag_tr,2];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 4];
      };

    // LOADOUT: RIFLEMAN (AT)
      case "rat":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,2];
        _unit addmagazines [_grenade, 1];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag, 11];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        _unit addweapon _RAT;
        if !(_RAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_ratmag1, 2];
          (unitBackpack _unit) addMagazineCargoGlobal [_ratmag2, 1];
        };
        _unit addSecondaryWeaponItem _scopeRAT;

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
        _unit addmagazines [_grenade, 4];
        _unit addmagazines [_mgrenade, 4];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_DMriflemag, 9];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addItemCargoGlobal [_spotting_scope,1];
        (unitBackpack _unit) addItemCargoGlobal [_rangecard,1];

        _attachments = [_attach1,_scopeDM,_bipodDM,_silencerDM];
        if ( _nvg_enabled == 1 ) then {(unitBackpack _unit) addItemCargoGlobal [ "optic_NVS", 1]};
      };

    // LOADOUT: MEDIUM MG GUNNER
      case "mmgg":
      {
        _unit addweapon _MMG;
        _unit addweapon _pistol;
        _unit addmagazines [_pistolmag,4];
        _unit addmagazines [_mgrenade, 1];
        _unit addmagazines [_smokegrenade, 3];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 5];
        (unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];

        _attachments = [_attach1,_bipod2,_scopeMG];
      };

    // LOADOUT: MEDIUM MG ASSISTANT GUNNER
      case "mmgag":
      {
        _unit addweapon _rifle;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade, 3];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 3];
        _unit addmagazines [_riflemag, 11];
        _unit addmagazines [_riflemag_tr, 3];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
        (unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
      };

    // LOADOUT: HEAVY MG GUNNER
      case "hmgg":
      {
        _unit addweapon _hmg;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_HMGmag_tr, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_HMGmag, 3];

        _attachments = [_attach1, _scopeMG];
      };

    // LOADOUT: HEAVY MG ASSISTANT GUNNER
      case "hmgag":
      {
        _unit addweapon _rifle;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_riflemag, 11];
        _unit addmagazines [_riflemag_tr, 3];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_HMGmag_tr, 2];
        (unitBackpack _unit) addMagazineCargoGlobal [_HMGmag, 3];
      };

    // LOADOUT: MEDIUM AT GUNNER
      case "matg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade, 1];
        _unit addmagazines [_mgrenade, 1];
        _unit addmagazines [_smokegrenade, 1];
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        _unit addweapon _MAT;
        if !(_MAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
        };
        _unit addSecondaryWeaponItem _scopeMAT;
      };

    // LOADOUT: MEDIUM AT ASSISTANT GUNNER
      case "matag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade, 3];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_carbinemag_tr, 2];
        _unit addmagazines [_carbinemag, 9];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        if !(_MAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
          (unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
        };
      };

    // LOADOUT: HEAVY AT GUNNER
      case "hatg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade, 3];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_carbinemag_tr, 2];
        _unit addmagazines [_carbinemag, 9];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        _unit addWeapon _HAT;
        if !(_HAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
          (unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,7];
        };
        _unit addSecondaryWeaponItem _scopeHAT;
      };

    // LOADOUT: HEAVY AT ASSISTANT GUNNER
      case "hatag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        if !(_HAT in _disposableLaunchers) then {
          (unitBackpack _unit) addMagazineCargoGlobal [_HATmag2, 1];
        };
      };

      // LOADOUT: Heavy MG Gunner (Static)
      case "hmggs":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addBackpack _baghsamg;
      };

      // LOADOUT: Heavy MG assistant Gunner (Static)
      case "hmgags":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addWeapon _rangefinder;
        _unit addBackpack _baghsamag;
      };

      // LOADOUT: Static AT Gunner
      case "statg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addBackpack _baghatg;
      };

      // LOADOUT: Static AT assistant Gunner
      case "statag":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addWeapon _rangefinder;
        _unit addBackpack _baghatag;
      };

    // LOADOUT: MORTAR GUNNER
      case "mtrg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addBackpack _bagmtrg;
      };

    // LOADOUT: MORTAR ASSISTANT GUNNER
      case "mtrag":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addWeapon _rangefinder;
        _unit addBackpack _bagmtrag;
      };

    // LOADOUT: MEDIUM SAM GUNNER
      case "msamg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];

        _unit addweapon _SAM;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
      };

    // LOADOUT: MEDIUM SAM ASSISTANT GUNNER
      case "msamag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
      };

    // LOADOUT: HEAVY SAM GUNNER
      case "hsamg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addBackpack _baghsamg;
      };

    // LOADOUT: HEAVY SAM ASSISTANT GUNNER
      case "hsamag":
      {
        _unit addweapon _carbine;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_smokegrenade,1];
        _unit addmagazines [_carbinemag_tr,2];
        _unit addmagazines [_carbinemag,7];
        _unit addBackpack _baghsamag;
      };

    // LOADOUT: SNIPER
      case "sn":
      {
        _unit addweapon _SNrifle;
        _unit addweapon _pistol;
        _unit addmagazines [_smokegrenade,2];
        _attachments = [_scopeDM];
        _unit addItem _atragmx;
        _unit addItem _dagr;
        _unit addItem _rangecard;
        _unit addItem _kestrel;
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addmagazines [_SNrifleMag,9];
        _unit addmagazines [_pistolmag,4];
        _attachments = [_attach1,_scopeSNP,_silencerSNP];
        if ( _nvg_enabled == 1 ) then {(unitBackpack _unit) addItemCargoGlobal [ "optic_NVS", 1]};
      };

    // LOADOUT: SPOTTER
      case "sp":
      {
        _unit addweapon _glrifle;
        _unit addmagazines [_smokegrenade,2];
        _unit addWeapon _advancedbinoculars;
        _unit addItem _atragmx;
        _unit addItem _dagr;
        _unit addItem _spotting_scope;
        _unit addItem _rangecard;
        _unit addItem _kestrel;
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addmagazines [_glriflemag,7];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_glmag,3];
        _unit addmagazines [_glsmokewhite,4];
        _attachments = [_attach1,_scopeDM];
        if ( _nvg_enabled == 1 ) then {(unitBackpack _unit) addItemCargoGlobal [ "optic_NVS", 1]};
      };

    // LOADOUT: VEHICLE COMMANDER
      case "vc":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_carbinemag,3];
        _unit addItem _gps;
        _unit assignItem _gps;
        _unit addWeapon _rangefinder;
      };

    // LOADOUT: VEHICLE DRIVER
      case "vd":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_carbinemag,3];
        _unit addItem _gps;
        _unit assignItem _gps;

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
        (unitBackpack _unit) addItemCargoGlobal [_smokegrenade,2];
      };

    // LOADOUT: VEHICLE GUNNER
      case "vg":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_carbinemag,3];
        _unit addItem _gps;
        _unit assignItem _gps;
      };

    // LOADOUT: AIR VEHICLE PILOTS
      case "pp":
      {
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_smgmag,5];
        _unit addItem _gps;
        _unit assignItem _gps;
        _attachments = [_attach1, _silencerSMG, _scope1]
      };

    // LOADOUT: AIR VEHICLE CREW CHIEF
      case "pcc":
      {
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_smgmag,5];
        //["cc"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];

        _attachments = [_attach1, _silencerSMG, _scope1]
      };

    // LOADOUT: AIR VEHICLE CREW
      case "pc":
      {
        _unit addweapon _smg;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_smgmag,5];
        _attachments = [_attach1, _silencerSMG, _scope1]
      };

    // LOADOUT: ENGINEER (DEMO)
      case "eng":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_carbinemag,7];
        _unit addItem _minedetector;
        //["eng"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
        (unitBackpack _unit) addItemCargoGlobal [_clacker,1];
        (unitBackpack _unit) addItemCargoGlobal [_satchel,4];
      };

    // LOADOUT: ENGINEER (MINES)
      case "engm":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_carbinemag,7];
        _unit addItem _minedetector;
        //["engm"] call _backpack;
        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        (unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
        (unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
        (unitBackpack _unit) addMagazineCargoGlobal [_APmine2,1];
        (unitBackpack _unit) addItemCargoGlobal [_clacker,1];
      };

    // LOADOUT: UAV OPERATOR
      case "uav":
      {
        _unit addweapon _rifle;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_riflemag,7];
        _unit addmagazines [_riflemag_tr,2];
        _unit linkItem _uavterminal;
        //["uav"] call _backpack;
        _unit addBackpack _baguav;
      };

    // LOADOUT: JTAC OPERATOR
      case "jtac":
      {
        _unit addweapon _glrifle;
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_smokegrenadegreen,2];
        _unit addmagazines [_grenade,1];
        _unit addmagazines [_mgrenade,1];
        _unit addmagazines [_glriflemag,7];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_glsmokewhite,2];
        _unit addmagazines [_glsmokegreen,2];
        _unit addmagazines [_glsmokered,2];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        _unit linkItem _uavterminal;
        _unit addWeapon _laserdesignator;
        _unit addmagazines _laserdesignatorBattery;
      };

    // LOADOUT: Diver
      case "div":
      {
        _unit addweapon _diverWep;
        _unit addmagazines [_grenade,4];
        _unit addmagazines [_mgrenade,4];
        _unit addmagazines [_smokegrenade,4];
        _unit addmagazines [_diverMag1,6];
        _unit addmagazines [_diverMag2,5];
        _attachments = [_attach1,_scope1,_silencer1];
        //["div"] call _backpack;
        _unit addBackpack _bagmediumdiver;
      };

    // LOADOUT: RIFLEMAN
      case "r":
      {
        _unit addweapon _rifle;

        _unit addmagazines [_grenade, 5];
        _unit addmagazines [_mgrenade, 5];
        _unit addmagazines [_smokegrenade, 5];
        _unit addmagazines [_riflemag, 11];
        _unit addmagazines [_riflemag_tr, 2];
        _unit addmagazines [_ARmag,1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: CARABINEER
      case "car":
      {
        _unit addweapon _carbine;
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,3];
        _unit addmagazines [_carbinemag,7];
        _unit addmagazines [_carbinemag_tr,2];
       ["car"] call _backpack;
      };

    // LOADOUT: SUBMACHINEGUNNER
      case "smg":
      {
        _unit addweapon _smg;
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,3];
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_smgmag,7];
        _unit addmagazines [_smgmag_tr, 4];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        _attachments = [_attach1, _silencerSMG, _scope1]
      };

    // LOADOUT: RIFLEMAN GRENADIER
      case "rg":
      {
        _unit addweapon _glrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_glriflemag,6];
        _unit addmagazines [_glriflemag_tr,2];
        _unit addmagazines [_glmag,4];
        _unit addmagazines [_glsmokewhite,2];
        _unit addmagazines [_grenade,3];
        _unit addmagazines [_mgrenade,3];
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_glsmokewhite, 2];
        _unit addmagazines [_glriflemag,5];
        _unit addmagazines [_glmag,4];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: Lul van de week
      case "lvdw":
      {
        _unit addweapon _rifle;

        removeBackpack _unit;
        _unit addBackpack "NLD_BigDickBag";
        _unit addmagazines [_riflemag, 13];
        _unit addmagazines [_ARmag, 4];
      };

    // LOADOUT: GRENADIER
      case "gren":
      {
        _unit addweapon _GrenLauncher;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_GrenLauncherMag, 4];
        _unit addmagazines [_GrenLauncherMag_AT, 2];
        _unit addmagazines [_GrenLauncherMag_Bck, 1];
        _unit addmagazines [_GrenLauncherMag_Smk, 1];
        _unit addmagazines [_GrenLauncherMag_Flr, 1];
        _unit addmagazines [_GrenLauncherMag_Flm, 1];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: FLAMETHROWER
      case "flameth":
      {
        _unit addweapon _Flamer;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_FlamerMag, 8];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: SHOTGUNNER
      case "shot":
      {
        _unit addweapon _Shotrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_ShotrifleMag, 8];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: PLASMA GUNNER
      case "plasmag":
      {
        _unit addweapon _PlasmaRifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_PlasmaRifleMag, 8];
        _unit addmagazines [_PlasmaRifleMag_tr, 3];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: PLASMA ASSISTANT GUNNER
      case "plasmaag":
      {
        _unit addweapon _rifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_riflemag, 8];
        _unit addmagazines [_PlasmaRifleMag, 5];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: SPECIAL GUNNER
      case "specialg":
      {
        _unit addweapon _Speshalrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_Speshalriflemag, 8];
        _unit addmagazines [_Speshalriflemag_tr, 4];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // LOADOUT: SPECIAL ASSISTANT GUNNER
      case "specialag":
      {
        _unit addweapon _rifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_riflemag, 8];
        _unit addmagazines [_Speshalriflemag, 5];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};
      };

    // FACTION SPECIFIC ROLES

    // LOADOUT: COMMISSAR
      case "com":
      {
        _unit addweapon _bigPistol;
        _unit addWeapon _rangefinder;
        _unit addmagazines [_bigPistolmag,5];
        _unit addmagazines [_grenade,1];

        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 3];
        _unit addmagazines [_smokegrenade, 4];
        _unit addmagazines [_smokegrenadegreen,2];

        _nvg = "TIOW_Bionic_Eye"
      };

      // LOADOUT: COMMISSAR /w Plasma Pistol
        case "complas":
        {
          _unit addweapon _PlasmaPistol;
          _unit addmagazines [_PlasmaPistolMag,5];
          _unit addmagazines [_grenade,1];

          _unit addmagazines [_grenade, 2];
          _unit addmagazines [_mgrenade, 3];
          _unit addmagazines [_smokegrenade, 4];
          _unit addmagazines [_smokegrenadegreen,2];
          _unit addItem _PlasmaCoolantS;
          _unit addItem _PlasmaCoolantS;
          _unit addItem _PlasmaCoolantS;
          _unit addItem _PlasmaCoolantS;

          _nvg = "TIOW_Bionic_Eye"
        };

    // LOADOUT: SKITARII RANGER
      case "ranger":
      {
        _unit addweapon _Rangerrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_Rangerriflemag, 8];

        _attachments = [_Rangerscope];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        _nvg = "ML700_Integrated_NVG_Skitarii"
      };

    // LOADOUT: SKITARII RANGER AT
      case "rangerAT":
      {
        _unit addweapon _RangerATrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_RangerATriflemag, 8];

        _attachments = [_RangerATscope];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        _nvg = "ML700_Integrated_NVG_Skitarii"
      };

    // LOADOUT: SISTERS
      case "sister":
      {
        _unit addweapon _Sisterrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_Sisterriflemag, 8];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        _nvg = "ML700_Integrated_NVG_SoB"
      };

    // LOADOUT: SISTERS MEDIC
      case "sisterMedic":
      {
        _unit addweapon _Sisterrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_Sisterriflemag, 8];

        if (isNull (unitBackpack _unit)) then {_unit addBackpack _bag};

        _nvg = "ML700_Integrated_NVG_SoB"
      };

    //  SPACE MARINES

    // LOADOUT: SPACE MARINE
      case "smarine":
      {
        _unit addweapon _Smarinerifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_Smarineriflemag, 8];

        if (_nvgSmarine != "None") then {
            _nvg = if (typename _nvgSmarine == "ARRAY") then { selectRandom _nvgSmarine } else { _nvgSmarine };
        };
      };

    // LOADOUT: SPACE MARINE - SERGEANT
      case "smarineSergeant":
      {
        _unit addweapon _SmarinePlasmarifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_SmarinePlasmariflemag, 8];

        if (_nvgSmarine != "None") then {
            _nvg = if (typename _nvgSmarine == "ARRAY") then { selectRandom _nvgSmarine } else { _nvgSmarine };
        };
      };

    // LOADOUT: SPACE MARINE - HEAVY BOLTER
      case "smarineHeavy":
      {
        _unit addweapon _SmarineHeavyrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_SmarineHeavyriflemag, 8];

        if (_nvgSmarine != "None") then {
            _nvg = if (typename _nvgSmarine == "ARRAY") then { selectRandom _nvgSmarine } else { _nvgSmarine };
        };
      };

    // LOADOUT: SPACE MARINE - METLAGUNNER
      case "smarineMelta":
      {
        _unit addweapon _SmarineMeltarifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_SmarineMeltariflemag, 8];

        if (_nvgSmarine != "None") then {
            _nvg = if (typename _nvgSmarine == "ARRAY") then { selectRandom _nvgSmarine } else { _nvgSmarine };
        };
      };

    // LOADOUT: SPACE MARINE - FLAMETHROWER
      case "smarineFlameth":
      {
        _unit addweapon _SmarineFlamethrifle;
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
        _unit addmagazines [_SmarineFlamethriflemag, 8];

        if (_nvgSmarine != "None") then {
            _nvg = if (typename _nvgSmarine == "ARRAY") then { selectRandom _nvgSmarine } else { _nvgSmarine };
        };
      };

    // LOADOUT: SPACE MARINE - DREADNAUGHT - Assualt Cannon
      case "smarineDreadAssault":
      {
        _unit addweapon "DT_AssaultCanon";
        _unit addmagazines ["DT_AssaultCanon_Mag", 10];
      };

    // LOADOUT: SPACE MARINE - DREADNAUGHT - Dual Las Cannon
      case "smarineDreadDualLas":
      {
        _unit addweapon "DT_LasCanon_2g";
        _unit addmagazines ["TIOW_LemanRuss_Lascannon_Mag", 10];
      };

    // LOADOUT: SPACE MARINE - DREADNAUGHT - Multi Meltagun
      case "smarineDreadMultiMelta":
      {
        _unit addweapon "DT_Primus_Metla_01";
        _unit addmagazines ["DT_Meltagun_Mag", 10];
      };


    //  Necrons

    // LOADOUT: Necron Lord
      case "necronLord":
      {
        _unit addweapon _glrifle;
        _unit addPrimaryWeaponItem [_glrifle, 1];
        _unit addmagazines [_grenade, 2];
        _unit addmagazines [_mgrenade, 2];
        _unit addmagazines [_smokegrenade, 2];
      };

      // LOADOUT: Necron Medic
        case "necronMedic":
        {
          _unit addweapon _rifle;
          _unit addPrimaryWeaponItem [_riflemag,1];
          _unit addItem _gps;
          _unit assignItem _gps;
          _unit addmagazines [_smokegrenade, 8];

          _unit addItemToUniform [_bandages,40];
          _unit addItemToUniform [_elasticbandages,40];
          _unit addItemToUniform [_quikclot,40];
          _unit addItemToUniform [_tourniquet,12];
          _unit addItemToUniform [_splint,15];
          _unit addItemToUniform [_morphine,30];
          _unit addItemToUniform [_epinephrine,20];
          _unit addItemToUniform [_bloodbags,5];
          _unit addItemToUniform [_plasmaIV,5];
          _unit addItemToUniform [_saline,8];

        };

      // LOADOUT: Necron Warrior
        case "necronWarrior":
        {
          _unit addweapon _rifle;
          _unit addPrimaryWeaponItem [_riflemag, 1];
          _unit addPrimaryWeaponItem [_riflemag_tr, 1];
          _unit addmagazines [_grenade, 2];
          _unit addmagazines [_mgrenade, 2];
          _unit addmagazines [_smokegrenade, 2];
        };


    // LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
       default
       {
        _unit addweapon _rifle;
         _unit addmagazines [_riflemag,7];

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
    _nvgLinked = hmd _unit;
    /* _nvg_enabled = "lt_nvg_onoff" call BIS_fnc_getParamValue;
    [_unit, _nvgLinked, _nvg_enabled, _nvg] call LT_fnc_NVGParameters; */

    diag_log format ["LT Template DEBUG: setGear.sqf finished"];
    diag_log format ["LT Template DEBUG: setGear.sqf attachments attached to weapons"];

   [_unit] call LT_fnc_checkUnitWeight;
  };

};
