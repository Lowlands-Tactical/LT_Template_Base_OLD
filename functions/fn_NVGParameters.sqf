// Invoer: [unit, classnaam nvg's, nvg's aan/uit]
//
// Uitvoer: Zorgt ervoor dat de nvg's worden toegekend aan de unit. Indien de nvg's worden uitgezet, wordt een flashlight toegevoegd aan het wapen van de unit.

_unit   = _this select 0;
_nvgLinked    = _this select 1;
_nvg_enabled = _this select 2;
_nvg = _this select 3;

diag_log format ["LT Template DEBUG: NVGLinked: %1",_nvgLinked];
diag_log format ["LT Template DEBUG: NVG: %1",_nvg];

if ( _nvg_enabled == 1 ) then {
    if (_nvgLinked == "") then {_unit linkItem _nvg} else {_unit linkItem _nvgLinked};
} else {
    if (_nvgLinked != "" ) then {_unit unlinkItem _nvgLinked};
    if (_nvg != "" ) then {_unit unlinkItem _nvg};
    _weapon = primaryWeapon _unit;
    _allWeaponItems = _unit weaponAccessories _weapon;
    _pointer = _allWeaponItems select 1;
    _flashlight = if (isNil "lt_template_attach2") then {"acc_flashlight"} else {lt_template_attach2};
    if (_pointer != _flashlight) then {
        _unit removePrimaryWeaponItem _pointer;
        _unit addPrimaryWeaponItem _flashlight;
        diag_log format ["LT Template DEBUG: NVG Func Pointer: %1",_pointer];
        diag_log format ["LT Template DEBUG: NVG Func Flashlight: %1",_flashlight];
    };
};
