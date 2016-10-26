// Weight to RPT
// https://configs.arma3.ru/162.137494/configFile/CfgVehicles/Supply0.html
// https://community.bistudio.com/wiki/Arma_3_Characters_And_Gear_Encoding_Guide
// https://forums.bistudio.com/topic/141953-getting-max-load-of-unitsvests/

PRIVATE ["_unit","_camo","_vest","_pack","_gear","_factor","_maxWeightArray","_containerClass","_MaxWeightLBS","_MaxWeight","_maxWeightArray","_weightCamo","_maxWeightCamo","_weightVest","_maxWeightVest","_weightPack","_maxWeightPack","_weightTotal","_MaxWeightTotal","_weightTotalABS"];

_unit = _this select 0;

_camo = uniform _unit;
_vest = vest _unit;
_pack = backpack _unit;
_gear = [_camo,_vest];

_factor = 0.45359237;

// Get configinfo about max weights
_maxWeightArray = [];
{
		_containerClass = gettext (configFile >> "cfgWeapons" >> _x >> "ItemInfo" >> "containerClass");
		_MaxWeightLBS = getnumber (configfile >> "CfgVehicles" >> _containerClass >> "maximumLoad");
		_MaxWeight = round (_MaxWeightLBS * _factor);
		_maxWeightArray = _maxWeightArray + [[_x, _MaxWeight]];
} forEach _gear;

_MaxWeightLBS = getNumber (configFile >> "CfgVehicles" >> _pack >> "maximumLoad");
_MaxWeight = round (_MaxWeightLBS * _factor);
_maxWeightArray = _maxWeightArray + [[_pack, _MaxWeight]];

diag_log format ["LT Template DEBUG: Max WeightArray: %1", _maxWeightArray];

// LBS weights. 1 LBS = 0,45359237 KG.
_weightCamo = round ((loadUniform _unit) * _factor);
_maxWeightCamo = _maxWeightArray select 0 select 1;
diag_log format ["LT Template DEBUG: Weight Uniform: %1 Max: %2 Leftover: %3", _weightCamo,_maxWeightCamo,_maxWeightCamo - _weightCamo];

_weightVest = round ((loadVest _unit) * _factor);
_maxWeightVest = _maxWeightArray select 1 select 1;
diag_log format ["LT Template DEBUG: Weight Vest: %1 Max: %2 Leftover: %3", _weightVest,_maxWeightVest,_maxWeightVest-_weightVest];

_weightPack	= round ((loadBackPack _unit) * _factor);
_maxWeightPack = _maxWeightArray select 2 select 1;
diag_log format ["LT Template DEBUG: Weight BackPack: %1 Max: %2 Leftover: %3", _weightPack,_maxWeightPack,_maxWeightPack-_weightPack];


_weightTotal 	= round ((load _unit) * _factor);
_MaxWeightTotal = _maxWeightCamo + _maxWeightVest + _maxWeightPack;
diag_log format ["LT Template DEBUG: Weight - Total: %1 Max: %2 Leftover: %3", _weightTotal, _MaxWeightTotal, _MaxWeightTotal - _weightTotal];

_weightTotalABS = round ((loadAbs _unit) * _factor);
diag_log format ["LT Template DEBUG: Weight Total ABS %1", _weightTotalABS];
diag_log format ["LT Template DEBUG: Weight - Total: %1 Max: %2 Leftover: %3", _weightTotalABS, _MaxWeightTotal, _MaxWeightTotal - _weightTotalABS];
