/*

File: fn_airResupply_drop.sqf
Author: Fen

Description:
Called from fn_airResupply to drop classes

Parameters:
_this select 0 : (Unit) group leader i.e. pilot

*/

private ["_side"];
params [
	["_groupLeader",objNull,[objNull]],
        ["_side", "", [""]]
];


if not(local _groupLeader) exitWith {};

if (isNull _groupLeader) exitWith {};


private _dropClasses=(group _groupLeader) getVariable["fn_airResupply_dropClasses",[]];
private _chuteClass=(group _groupLeader) getVariable["fn_airResupply_chuteClass","B_Parachute_02_F"];

for [{_idx=0},{_idx<count _dropClasses},{_idx=_idx+1}] do {

	private _droppedObject=createVehicle [(_dropClasses select _idx),[(position (vehicle _groupLeader)) select 0,(position (vehicle _groupLeader)) select 1,((position (vehicle _groupLeader)) select 2)-25],[],0,"CAN_COLLIDE"];
	_droppedObject setVelocity [(((velocity (vehicle _groupLeader)) select 0)),(((velocity (vehicle _groupLeader)) select 1)),((velocity (vehicle _groupLeader)) select 2)];
	_droppedObject setDir (direction (vehicle _groupLeader));
	_droppedObject allowDamage false;
	
	

	private _spawnChute=createVehicle[_chuteClass,position _droppedObject,[],0,"NONE"];
	_spawnChute setDir (direction _droppedObject);
	_spawnChute setVelocity [((velocity _droppedObject) select 0),((velocity _droppedObject) select 1) ,((velocity _droppedObject) select 2) ];

	_droppedObject attachTo [_spawnChute,[0,0,-1.3]];

	[_droppedObject,_dropClasses select _idx,_spawnChute, _side] spawn {

		params[
			["_droppedObject",objNull,[objNull]],
			["_droppedClass","",[""]],
			["_spawnChute",objNull,[objNull]],
			["_side","",[""]]
		];

		waitUntil {
			sleep 3;
			(((position _droppedObject) select 2<1) or (velocity _droppedObject select 2)==0);
		};

		private _droppedPosition=position _droppedObject;
		private _droppedDirection=direction _droppedObject;

		deleteVehicle _droppedObject;
		private _spawnedObject=createVehicle [_droppedClass,[_droppedPosition select 0,_droppedPosition select 1,0],[],0,"CAN_COLLIDE"];
		//TODO: Vullen
		
		//TODO: Attachen van lampjes voor nacht-missies.
		
		//TODO: Attachen van smoke.
		
		// Add (Chem)Light
_cratelight = "#lightpoint" createVehicle (position _spawnedObject);
_cratelight setLightColor [0,25,0];
_cratelight setLightIntensity 2;
_cratelight lightattachobject [_spawnedObject,[0,0,0.5]];

// Add smoke while ammocrate drops
_smokeColor = "Orange";
_smoke = createVehicle ["SmokeShell"+_smokeColor, [0,0,0], [], 0 , ""];
_smoke attachTo [_spawnedObject, [0,0,0]];

_gear = [_spawnedObject,  "crate_large", _side] call lt_fnc_setVehicleGear;
		
		_spawnedObject setDir _droppedDirection;

		if not(isNull _spawnChute) then {
			deleteVehicle _spawnChute;
		};
	};
	sleep 1;
	true;
};
