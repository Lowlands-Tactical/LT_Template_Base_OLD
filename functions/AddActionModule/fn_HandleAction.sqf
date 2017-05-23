//fn_handleAction.sqf
_target 	= _this select 0;
_caller 	= _this select 1;
_id 		= _this select 2;
_args 	= _this select 3;

_init 			= _args select 0;
_script 		= _args select 1;
_locality 	= _args select 2;
_remove 		= _args select 3;
_userargs 	= if (typename (_args select 4) == "STRING") then {parseSimpleArray (_args select 4)} else {_args select 4};
_handle 		= _args param [5, _init];

switch _init do {

	case "Init": {

		switch (_remove) do {
			case "Global": {[_target, _id] remoteExec ["removeAction", 0, true];};
			case "User": {[_target, _id] remoteExec ["removeAction", _caller, true];};
			case "No": {};
		};

		_loc = call compile _locality;
		if (_locality == "1") then {
			[_target, _caller, _id, [_handle,_script,  _remove, _locality, _userargs]] call LT_fnc_HandleAction;
		} else {

			[_target, _caller, _id, [_handle, _script, _remove, _locality, _userargs]] remoteExec ["LT_fnc_HandleAction", _loc, true];
		};

	};

	case "Function": {
		_s = call compile _script;
		_nil = [_target, _caller, _id, _userargs] spawn _s;
	};

	case "File": {
		_nil = [_target, _caller, _id, _userargs] execVM _script;
	};

	case "Script": {
		call compile _script;
	};

	default {
		systemChat "Could not handle AddAction.";
	};
};

true
