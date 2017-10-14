---------------------------------------------
-- Perfect Defense
-- Description: Grants Shield effect for a time.
-- Type: Enhancing
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 25) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
   -- addEx to prevent dispel
    mob:addStatusEffectEx(EFFECT_PHYSICAL_SHIELD,0,1,0,60)
    mob:addStatusEffectEx(EFFECT_MAGIC_SHIELD,0,1,0,60)
    skill:setMsg(msgBasic.BUFF)
    return EFFECT_PHYSICAL_SHIELD;
end;
