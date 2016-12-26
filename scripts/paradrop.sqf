_unit = _this select 0;

if (local _unit) then {
    _unit allowdamage false;
    MoveOut _unit;
    waituntil {(getpos _unit select 2) < 200};
    _chute = createVehicle ["Steerable_Parachute_F", (getPos _unit), [], 0, "NONE"];
    _chute setPos (getPos _unit);
    _unit moveInDriver _chute;
    waituntil {isTouchingGround _unit};
    _unit allowDamage true;
};
