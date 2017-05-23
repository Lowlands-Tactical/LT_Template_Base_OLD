// Define variables in the private scope
private ["_markers","_sides","_logic","_units","_activated","_unit","_marker","_side"];

// Fetch basic things from the editor
_logic = param [0,objNull,[objNull]];
_units = param [1,[],[[]]];
_activated = param [2,true,[true]];

// Main loop.
if (_activated) then { // Fire off once a synced trigger gets triggered
  if (isServer) then { // Fire off if server

    _markers = _logic getVariable "Defense_Markers"; // Fetch more data from the game
    _sides  = _logic getVariable "Defence_Sides"; // Dito

    // Turn a csv string into an array with some whitespace cleaning
    _markers  = _markers splitString " " joinstring "" splitstring ",";
    _sides    = _sides splitString " " joinstring "" splitstring ",";

    /// Do workhorse stuff. Check per marker per side if a unit belongs to it and is in the trigger area. If so: delete them
    {
      _unit = _x;
      diag_log format["LT Template Debug::CleanUp: _unit=%1 _x=%2",_unit,_x];
      {
          _marker = _x;
          diag_log format["LT Template Debug::CleanUp: _marker=%1 _x=%2",_marker,_x];
          {
              _side = _x;
              diag_log format["LT Template Debug::CleanUp: _side=%1 _x=%2",_side,_x];
              diag_log format["LT Template Debug::CleanUp: _unit=%1 _marker=%2 _side=%3 side _unit=%4",_unit,_marker,_side,side _unit];
              if ( str (side _unit) == _side && (getPos _unit) inArea _marker ) then {
                  deleteVehicle (vehicle _unit);
                  deleteVehicle _unit;
              };
          } forEach _sides;
      } forEach _markers;
    } forEach allUnits;

  }; // isServer
}; // if _activated

true
