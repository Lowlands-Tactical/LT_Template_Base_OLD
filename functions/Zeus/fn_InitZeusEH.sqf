_curators = allCurators;
{
    //_x addEventhandler ["CuratorObjectDeleted", {[_this, "Deleted"] call LT_fnc_HandleZeusEH}];
    _x addEventhandler ["CuratorObjectPlaced", {[_this, "Placed"] spawn LT_fnc_HandleZeusEH}];
    _x addEventhandler ["CuratorObjectDoubleClicked", {[_this, "DoubleClicked"] call LT_fnc_HandleZeusEH}];
} forEach _curators;
