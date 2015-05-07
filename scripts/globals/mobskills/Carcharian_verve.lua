---------------------------------------------
--  Carcharian_verve
--  Rockfin
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
   return 0;
end;

function onMobWeaponSkill(target, mob, skill)

   mob:addStatusEffectEx(EFFECT_DEFENSE_BOOST,75,0,90);
   mob:addStatusEffectEx(EFFECT_MAGIC_DEF_BOOST,75,0,90);
   mob:addStatusEffectEx(EFFECT_ATTACK_BOOST,75,0,90);    
   skill:setMsg(MSG_BUFF)
   return effect;
end;
