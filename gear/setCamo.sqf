if (lt_camo_var != "None" and player getVariable 'LT_camo_exclude' == 0 ) then {

  private ["_camo","_vest","_helm","_backpack"];

  _camo = lt_camo_var;
  _vest = lt_camo_var;
  _helm = lt_camo_var;
  _backpack = lt_camo_var;

  // Assign exceptions
  if ( lt_camo_var == "UN" ) then {
    _camo = "NLD_WLD_Camo";
    _backpack = "NLD_WLD_Carryall_B";
  };

  if ( lt_camo_var == "UND" ) then {
    _camo = "NLD_DST_Camo";
    _vest = "NLD_UN_Vest";
    _helm = "NLD_UN_Helmet";
    _backpack = "NLD_DST_Carryall_B";
  };

  if ( lt_camo_var == "KM" ) then {
    _vest = "V_I_G_resistanceLeader_F";
  };

  if ( lt_camo_var == "SFMTP" ) then {
    _camo = "NLD_MTP_Camo";
    _vest = "NLD_MTP_PlateCarrier";
    _helm = "NLD_MTP_ECH";
    _backpack = "NLD_MTP_Carryall_B";
  };

  // Unless a variable is diffent, use the default action, otherwise use the variable.
  if ( _camo == lt_camo_var ) then {
    [player,format["NLD_%1_Camo",_camo]] call lt_fnc_changeUniform;
  } else {
    [player,_camo] call lt_fnc_changeUniform;
  };

  if ( _vest == lt_camo_var) then {
    [player,format["NLD_%1_Vest",_vest]] call lt_fnc_changeVest;
  } else {
    [player,_vest] call lt_fnc_changeVest;
  };

  if ( _helm == lt_camo_var ) then {
    [player,format["NLD_%1_Carryall_Empty", _backpack]] call lt_fnc_changeBackpack;
  } else {
    [player,_backpack] call lt_fnc_changeBackpack;
  };
  if ( _helm == lt_camo_var ) then {
  removeHeadgear player;
  player addHeadgear format["NLD_%1_Helmet",_helm];
  } else {
    removeHeadgear player;
    player addHeadgear _helm;
  };

};
