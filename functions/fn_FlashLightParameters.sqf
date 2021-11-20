// Invoer: [unit, classnaam nvg's, nvg's aan/uit]
//
// Uitvoer: Zorgt ervoor dat de nvg's worden toegekend aan de unit. Indien de nvg's worden uitgezet, wordt een flashlight toegevoegd aan het wapen van de unit.

_unit   = _this select 0;
_setting    = _this select 1;
_attachments = _this select 2;


diag_log format ["LT Template DEBUG: Lightsetting: %1",_setting];
diag_log format ["LT Template DEBUG: Attachments: %1",_attachments];

if ( _setting == 0 ) then {
   //Default zou al gezet moeten zijn.
};
if(_setting == 1) then {
_unit addPrimaryWeaponItem (_attachments select 0);
};
 if(_setting == 2) then {
_unit addPrimaryWeaponItem (_attachments select 1);
};
if(_setting == 3) then {
_unit addPrimaryWeaponItem (_attachments select 2);
};
