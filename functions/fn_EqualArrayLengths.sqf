// Checks if array is as long as the maximum.
_array         = _this select 0;
_maxElements   = _this select 1;

_cnt = count _array;
if (_cnt > _maxElements) then {
    _array resize _maxElements;
} else {
    if (_cnt < _maxElements) then {
        _array resize _maxElements;
        {
            if (isNil "_x") then {
                _array set [_forEachIndex, 0];
            };
        } forEach _array;
    };
};
_array
// [[1,2,3,4],5] call LT_fnc_EqualArrayLengths
