---------------------------------------------------
--
-- Mighty Guard
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    mob:addStatusEffectEx(EFFECT_PHYSICAL_SHIELD,0,1,0,60);
    mob:addStatusEffect(EFFECT_REGAIN,10,3,60);
    skill:setMsg(msgBasic.SELF_HEAL);
    return MobHealMove(mob, mob:getMaxHP() * 0.075);
end;
