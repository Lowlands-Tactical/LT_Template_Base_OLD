private ["_unit","_players","_nearUnits","_dist"];

_unit = _this select 0;

// Check if it's already active, if so exit script;
if (_unit getVariable ["CQC_AI_Active",false]) exitWith {};

//let unit know it has the CQC_AI on it;
_unit setVariable ["CQC_AI_Active",true];

//define functions

if (isnil("fnc_Find_Closest")) then {
	// [_unit,_number,_unitrrayToChooseFrom,_toIgnore];
	fnc_Find_Closest = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_Find_Closest.sqf";
};

if (isnil("fnc_cqc_target")) then {
	fnc_cqc_target = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_cqc_target.sqf";
	//hint "cqc target compiled";
};

if (isnil("CQC_AI_Close")) then {
	CQC_AI_Close = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\CQC_AI_Close.sqf";
	//hint "cqc target compiled";
};

if (isnil("CQC_AI_Vision")) then {
	CQC_AI_Vision = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\CQC_AI_Vision.sqf";
	//hint "cqc target compiled";
};

if (isnil("fnc_cqc_renew")) then {
	fnc_cqc_renew = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_cqc_renew.sqf";
	//hint "cqc renew compiled";
};

if (isnil("fnc_cqc_react")) then {
	fnc_cqc_react = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_cqc_react.sqf";
	//hint "cqc react compiled";
};

if (isnil("fnc_silenced")) then {
	fnc_silenced = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_silenced.sqf";
	//hint "fnc_silenced compiled";
};

if (isnil("fnc_willseetarget")) then {
	fnc_willseetarget = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_willseetarget.sqf";
	//hint "willseetarget compiled";
};

if (isnil("fnc_willseeincombat")) then {
	fnc_willseeincombat = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_willseeincombat.sqf";
	//hint "fnc_willseeincombat compiled";
};

if (isnil("fnc_Intersect_Pos_Rough")) then {
	fnc_Intersect_Pos_Rough = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_intersect_pos_rough.sqf";
	//hint "fnc_Intersect_Pos_Rough compiled";
};

if (isnil("fnc_get_DoorPositions")) then {
	// [_house]; returns doorpositionsin model coords;
	fnc_get_DoorPositions = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_get_DoorPositions.sqf";
};

if (isnil("fnc_Find_Closest")) then {
	// [_unit,_number,_arrayToChooseFrom,_toIgnore];
	fnc_Find_Closest = compile preProcessFileLineNumbers "\lt_template_base\AI\GARRISON\CQC_fncs\fnc_Find_Closest.sqf";
};

if (isNil ("sunAngle")) then
{
	//hint "sun defined";
	// From TPW (awesome job man);
	nul = [] spawn
	{
		sunAngle = 0;
		private ["_lat","_day","_hour"];
		while {true} do 
		{
			_lat = -1 * (getnumber(configfile >> "cfgworlds" >> worldname >> "latitude"));
			_day = 360 * (datetonumber date);
			_hour = (daytime / 24) * 360;
			sunAngle = round (((12 * cos(_day) - 78) * cos(_lat) * cos(_hour)) - (24 * sin(_lat) * cos(_day)));  
			sleep 300; 
		};
	};
};

nul = [_unit] spawn fnc_cqc_renew;

if !(isPlayer _unit) then
{
	while {alive _unit} do
	{
		_sleepTime = 1;
		_Garrisoning = (group _unit) getVariable ["Garrisoning",false];
		_allUseCQC_AI = missionNameSpace getVariable ["allUseCQC_AI",true];
		
		if (_Garrisoning or _allUseCQC_AI) then
		{
			_nearUnits = (getposATL _unit) nearentities [["man"],20];
			_players = [];
			_dist = 100;
			
			{
				if (isPlayer _x) then
				{
					_players set [(count _players),_x];
				};
			} foreach _nearUnits;
			
			_playersNo = (count _players);
			
			if (_playersNo != 0) then
			{
				if (_playersNo > 1) then
				{
					_players = [_unit,1,_players] call fnc_Find_Closest;
				};
				
				_closePlayer = _players select 0;
				_dist = _unit distance _closePlayer;
				if (_dist > 5) then
				{
					_sleepTime = (_dist / 100) * 5; // to make it scale with a sleep of 1 second;
				}
				else
				{
					_sleepTime = 0.25;
				};
			};
			
			[_unit] call CQC_AI_Close;
			[_unit] call CQC_AI_Vision;
		};
		
		sleep _sleepTime;
	};
};

