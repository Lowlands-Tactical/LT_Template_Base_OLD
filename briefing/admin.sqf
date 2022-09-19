private ["_staff"];

// Flendurs, Tybalty, Lonesentinel , Wishmaster86
_staff = ["76561197972110272","76561198042684200","76561198028914656","76561197974557659"];

// if (serverCommandAvailable "#kick" or getPlayerUID player == "76561197972132272" or getPlayerUID player == "76561198023151588" or getPlayerUID player == "76561197972110272") then
if (serverCommandAvailable "#kick" or getPlayerUID player in _staff) then
{

// Insert Magic Here!
//player sideChat "Admin page loaded";

	// F3 - Briefing
	// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
	// ====================================================================================

	// ADMIN BRIEFING
	// This is a generic section displayed only to the ADMIN

	_briefing ="
	<br/>
	<font size='18'>ADMIN SECTION</font><br/>
	This briefing section can only be seen by the current admin.
	<br/><br/>
	";

	// ====================================================================================

	// TASKSTATES

	// Create array of tasks
	_tasks 	= player call BIS_fnc_tasksUnit;
	diag_log format ["LT template DEBUG: Taskarray: %1",_tasks];

	// Get side of player so taskstate will be remoteExec only to that side.
	_side 	= side player;

	lt_fnc_setTaskState = {
		PRIVATE ["_taskIndex", "_state", "_side","_taskArray","_task"];
		_taskIndex = _this select 0;
		_state = _this select 1;
		_side = _this select 2;
		_taskArray = player call BIS_fnc_tasksUnit;
		_task = _taskArray select _taskIndex;
		[_task, _state, true] remoteExec ['BIS_fnc_taskSetState', _side, true];
	};

	// Foreach through _tasks and add description of task and the expressions for succeeded and failed in _briefing
	_briefing = _briefing + "<font size='18'>Tasks</font><br/>";
	if (count _tasks > 0) then {
		{
			_taskID = _x;
			_taskIndex = (player call BIS_fnc_tasksUnit) find _x;
			_TaskDescriptionArray = _taskID call BIS_fnc_taskDescription;
			_TaskDescription = _TaskDescriptionArray select 1;
			_briefing = _briefing + format [
			"<br/><font size='14'>Task: %2</font><br/>
			Set state to: <executeClose expression=""[%1, 'Succeeded', %3] call lt_fnc_setTaskState;"">'Succeeded'</executeClose>
			 or <executeClose expression=""[%1, 'Failed', %3] call lt_fnc_setTaskState;"">'Failed'</executeClose><br/><br/>", _taskIndex, _TaskDescription, _side];
		} forEach _tasks;
	} else {
		_briefing = _briefing + "No tasks specified at beginning<br/><br/>";
	};

	// ====================================================================================

	// ENDINGS
	// This block of code collects all valid endings and formats them properly

	_title = [];
	_ending = [];
	_endings = [];

	_i = 1;
	while {true} do {
		_title = getText (missionconfigfile >> "CfgDebriefing" >> format ["end%1",_i] >> "title");
		_description = getText (missionconfigfile >> "CfgDebriefing" >> format ["end%1",_i] >> "description");
		if (_title == "") exitWith {};
		_ending = [_i,_title,_description];
		_endings append ([_ending]);
		_i = _i + 1;
	};

	// Create the briefing section to display the endings

	_briefing = _briefing + "
	<font size='18'>ENDINGS</font><br/>
	These endings are available. To trigger an ending click on its link.<br/><br/>
	";
	diag_log format ["LT template DEBUG: Endings: %1",_endings];
	{
		//_end = _this select 0;
		_briefing = _briefing + format [
		"<execute expression=""[[%1],'f_fnc_mpEnd',false] spawn BIS_fnc_MP;"">'end%1'</execute> - %2:<br/>
		%3<br/><br/>"
		,_x select 0,_x select 1,_x select 2];
	} forEach _endings;

	// ====================================================================================

	// SAFE START SECTION
	
	_briefing = _briefing + "

	<font size='18'>SAFE START CONTROL</font><br/>
	|- <execute expression=""lt_param_timer = lt_param_timer + 1; publicVariable 'lt_param_timer'; hintSilent format ['Mission timer: %1', lt_param_timer];"">Increase Safe Start timer by 1 minute</execute><br/>
    
	|- <execute expression=""lt_param_timer = lt_param_timer - 1; publicVariable 'lt_param_timer'; hintSilent format ['Mission timer: %1', lt_param_timer];"">Decrease Safe Start timer by 1 minute</execute><br/>
    
	|- <execute expression=""lt_param_timer = 10; publicVariable 'lt_param_timer';['SafeStartmissionStarting',['Mission safety is on!']] call BIS_fnc_showNotification;[true] remoteExec ['f_fnc_safety',allPlayers];[] remoteExec ['f_fnc_safeStartLoop'];hintSilent 'Safe Start started!';"">Begin Safe Start timer</execute><br/>
    
	|- <execute expression=""lt_param_timer = -1; publicVariable 'lt_param_timer';['SafeStartmissionStarting',['Mission starting now!']] call BIS_fnc_showNotification;[false] remoteExec ['f_fnc_safety',allPlayers];hintSilent 'Safe Start ended!';"">End Safe Start timer</execute><br/>
    
	|- <execute expression=""[true] remoteExec ['f_fnc_safety',allPlayers];hintSilent 'Safety on!' "">Force safety on for all players</execute><br/>
    
	|- <execute expression=""[false] remoteExec ['f_fnc_safety',allPlayers];hintSilent 'Safety off!' "">Force safety off for all players</execute><br/><br/>
	"; 

	// ====================================================================================

	// ADD ZEUS SUPPORT SECTION

	_briefing = _briefing + "
	<font size='18'>ZEUS SUPPORT</font><br/>
	<execute expression=""
	if !(isNull (getAssignedCuratorLogic player)) then {hintsilent 'ZEUS already assigned!'} else {
		[[player,true],'f_fnc_zeusInit',false] spawn BIS_fnc_MP; hintsilent 'Curator assigned.';
	};"">Assign ZEUS to host</execute>.<br/>

	|- <execute expression=""
	if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assign ZEUS first!'} else {[[player,playableUnits],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; hintsilent 'Added playable units.'};"">Add players and playable units to ZEUS object list</execute>.<br/>

	|- <execute expression=""
	if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assign ZEUS first!'} else {
		[[player,true,true],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; hintsilent 'Assigned control over all group leaders and empty vehicles.'};"">
	Add all group leaders and empty vehicles</execute>.<br/>

	|- <execute expression=""
	if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assign ZEUS first!'} else {[[player,true],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; hintsilent 'Add all units.'};"">Add all mission objects</execute> <font color='#FF0000'>(POSSIBLE DESYNC)</font>.<br/>

	|- <execute expression=""
	if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assign ZEUS first!'} else {(getAssignedCuratorLogic player) removeCuratorEditableObjects [allDead,true]; hintsilent 'Removed dead units.'};"">Remove all dead units from ZEUS</execute>.<br/>

	|- <execute expression=""
	if (isNull (getAssignedCuratorLogic player)) then {hintsilent 'Assign ZEUS first!'} else {[[player,false],'f_fnc_zeusAddObjects',false] spawn BIS_fnc_MP; [[player,false],'f_fnc_zeusAddAddons',false] spawn BIS_fnc_MP; hintsilent 'Removed powers and units.'};"">Remove all powers and objects from ZEUS</execute>.<br/>
	<br/>
	";

	// ====================================================================================

	// CREATE DIARY ENTRY

	player createDiaryRecord ["diary", ["F3 Admin Menu",_briefing]];

	// ====================================================================================

};
