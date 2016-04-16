// Stuff common to all our missions!

// Because we don't want to black out in airplanes
player setVariable ["ACE_GForceCoef", 0];

// Because we want to commit suicide
murshun_easywayout_canSuicide = true;

// Because we want to start with the weapon lowered
player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";

// Start with Earbuds in
player setVariable ["ACE_hasEarPlugsIn", true, true];
