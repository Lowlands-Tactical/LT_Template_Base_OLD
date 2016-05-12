if (lt_camo_var != "None" and player getVariable 'LT_camo_exclude' == 0 ) then {
  removeUniform player;
  removeHeadgear player;
  removeVest player;

  player forceAddUniform format["NLD_%1_Camo",lt_camo_var];
  player addHeadgear format["NLD_%1_Helmet",lt_camo_var];
  player addVest format["NLD_%1_Vest",lt_camo_var];
  [player,format["NLD_%1_Carryall_Empty", lt_camo_var]] call lt_fnc_changeBackpack;
};
