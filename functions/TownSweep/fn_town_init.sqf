if (isServer) then {
  // Starting Position of the AO marker
  town_pos = [0,0];

  // Starting Size of the AO marker
  town_size = 500;

  // Create the "ao" marker
  _marker = createMarker ["ao",town_pos];
  "ao" setMarkerColor "ColorRed";
  "ao" setMarkerAlpha 0.5;
  "ao" setMarkerShape "ELLIPSE";
  "ao" setMarkerSize [town_size,town_size];
};
