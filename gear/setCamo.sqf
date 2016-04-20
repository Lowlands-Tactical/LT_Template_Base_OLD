removeUniform player;
removeHeadgear player;
removeVest player;

if (lt_camo_var != "None") then {
  player forceAddUniform format["NLD_%1_Camo",lt_camo_var];
  player addHeadgear format["NLD_%1_Helmet",lt_camo_var];
  player addVest format["NLD_%1_Vest",lt_camo_var];
};
