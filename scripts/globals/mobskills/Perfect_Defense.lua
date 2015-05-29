---------------------------------------------
--  Perfect Defense
--  Description: Grants Shield effect for a time.
--  Type: Enhancing
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
      return 0;
end;

function onMobWeaponSkill(target, mob, skill)

   -- addEx to pervent dispel
    mob:addStatusEffectEx(EFFECT_PHYSICAL_SHIELD,0,1,0,60)
    mob:addStatusEffectEx(EFFECT_MAGIC_SHIELD,0,1,0,60)
    skill:setMsg(MSG_BUFF)
    return EFFECT_PHYSICAL_SHIELD;
end;
