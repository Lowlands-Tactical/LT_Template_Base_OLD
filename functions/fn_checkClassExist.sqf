// syntax
// select 0 = class om te checken
// select 1 = als select 0 geen class is dan deze class nemen
// select 2 = in welke cfg kunnen we de class vinden

PRIVATE ["_text","_default","_check"];

_text 			= _this select 0;
_default 		= _this select 1;
_cfg			= _this select 2;
_check		 	= isClass (ConfigFile >> _cfg >> _text);

IF (_check) exitwith {
	_text;
};
_default;
