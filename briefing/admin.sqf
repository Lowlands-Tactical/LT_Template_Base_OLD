private ["_staff"];

_staff = ["76561197972132272","76561198023151588","76561197972110272"];

// if (serverCommandAvailable "#kick" or getPlayerUID player == "76561197972132272" or getPlayerUID player == "76561198023151588" or getPlayerUID player == "76561197972110272") then
if (serverCommandAvailable "#kick" or getPlayerUID player in _staff) then
{

// Insert Magic Here!
player sideChat "Admin page loaded";

};
