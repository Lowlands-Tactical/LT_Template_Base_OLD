/*
  Function:  LT_fnc_FillCombo
  Written by: Whistle
  Description: Whenever a GUI loads this function will fill the comboxes.
*/

disableSerialization;
systemChat "Filling Combo";
_display = _this select 0;

switch _display do {
  case (findDisplay 19999): {
    systemchat "FillCombo GUI no. 19999";
    _dialogFillArray = [2100,2101,2102,2103];
    {
    	WIS_classes = [["Defense_Faction", [], []], ["Defense_Behaviour",[], []], ["Defense_Speed",[], []], ["Defense_Formation",[], []]];
    	{
    		_class = _x select 0;
    		_arrValue = _x select 1;
        _arrName = _x select 2;

        _NameClassArray = [];
    		_ValueClassArray = [];

        // Get all values of class
    		"if (true) then {_ValueClassArray pushBack (configname _x)};" configClasses (configFile >> "CfgVehicles" >> "LT_Defense_Module" >> "Arguments" >> _class >> "values");

        // Get all names of class
        {
          _txt = getText (configFile >> "CfgVehicles" >> "LT_Defense_Module" >> "Arguments" >> _class >> "values" >> _x >> "name");
          _ValueClassArray pushBack _txt;
        } forEach _NameClassArray;

    		(WIS_classes select _forEachIndex) set [1, _ValueClassArray];
        (WIS_classes select _forEachIndex) set [2, _NameClassArray];
    	} forEach WIS_classes;

    	_idc = _x;
    	_arrVal = WIS_Classes select _forEachIndex select 1;
      _arrNam = WIS_Classes select _forEachIndex select 2;

    	{
        if (_x == "empty") then {
          _index = lbAdd [_idc, _x];
          lbSetData [_idc, _index, _arrVal select _forEachIndex];
        };
    	} forEach _arrNam;

    	lbSetCurSel [_x, 0];
    } forEach _dialogFillArray;

  };

  case (findDisplay 19998): {
    _dialogFillArray = [2100,2101];
    {
    	_comboLists = [["WEST","EAST","Independant"],["Car","IFV","Truck","Small Crate","Medium Crate","Large Crate","Empty Crate"]];
    	_idc = _x;
    	_arr = _comboLists select _forEachIndex;
    	{
    		_index = lbAdd [_idc, _x];
    	} forEach _arr;
    	lbSetCurSel [_x, 0];
    } forEach _dialogFillArray;

  };
  case (findDisplay 19997): {
      _comboList = ["WEST","EAST","Independant"];
      _idc = 2100;
      {
        _index = lbAdd [_idc, _x];
      } forEach _comboList;
      lbSetCurSel [2100, 0];

  };
};
