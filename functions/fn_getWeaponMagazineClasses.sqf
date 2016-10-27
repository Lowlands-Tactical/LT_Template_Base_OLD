// https://configs.arma3.ru/162.137494/configFile/CfgWeapons/arifle_Katiba_Base_F.html
// https://configs.arma3.ru/162.137494/configFile/CfgMagazines.html
// NLD_blk_C8

PRIVATE ["_weapon", "_magazines","_normalMags","_tracerMags","_tracersEvery","_amntNormalMags","_amnttracerMags","_tracer","_normal","_array"];

_weapon 		= _this select 0;

if (isClass (configFile >> "cfgWeapons" >> _weapon)) then {

	_magazines = getArray (configFile >> "cfgWeapons" >> _weapon >> "magazines");

	diag_log format ["LT Template DEBUG: magazines for %1: %2", _weapon, _magazines];

	_normalMags = [];
	_tracerMags = [];

	{
		_tracersEvery = getNumber (configfile >> "CfgMagazines" >> _x >> "tracersEvery");
		if (_tracersEvery == 0) then {
			_normalMags = _normalMags + [_x];
		} else {
			_tracerMags = _tracerMags + [_x];
		};
	} forEach _magazines;

	_amnttracerMags = count _tracerMags;

	_tracer = IF (_amnttracerMags > 0) then {_tracerMags select 0} else {_normalMags select 0};

	_normal = _normalMags select 0;

	_array = [_normal,_tracer];
	diag_log format ["LT Template DEBUG: magazineArray: %1",_array];
	_array
} else {
	false
};
