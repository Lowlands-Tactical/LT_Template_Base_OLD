_EHArray = _this select 0;
_cur = _EHArray select 0;
_obj = _EHArray select 1;
_EHType = _this select 1;

_dialog = getText (configFile >> "CfgVehicles" >> (typeOf _obj) >> "curatorInfoType");
_catagory = getText (configFile >> "CfgVehicles" >> (typeOf _obj) >> "category");

if (_dialog == "" && _catagory != "LT_ZeusModules") exitWith {};

disableSerialization;
_displayno = getNumber (configFile >> _dialog >> "idd");
_display = findDisplay _displayno;

switch (_EHType) do {

	case "Placed": {
		_display setVariable ["LT_GUI_ObjectPlaced", _obj];
	};

	case "DoubleClicked": {
		//
	};

	default {
		systemChat format ["Default: %1", _EHType];
		_display setVariable ["LT_GUI_ObjectPlaced", _obj];
	};

};

true
