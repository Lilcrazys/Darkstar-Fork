---------------------------------------------
-- Besieger's Bane (DSP version doesn't exist yet)
--
-- Description: Inflicts Bio, Zombie, and Terror
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: area of effect
-- Notes:
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 25 and mob:getPool() == 4400) then -- Yaanei only uses when HP is 25% or less
        return 1;
    end
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local zombieCurse = 25;
    local dot = 25;
    local attackDown = 25;
    MobStatusEffectMove(mob, target, EFFECT_TERROR, 1, 0, 30);
    target:addStatusEffect(EFFECT_BIO, dot, 3, 60, attackDown); -- MobStatusEffectMove doesn't have a subpower field, and Bio effect doesn't get resisted anyway..
    skill:setMsg(MobStatusEffectMove(mob, target, EFFECT_CURSE_I, zombieCurse, 0, 60)); -- Using wrong effect because EFFECT_CURSE_II aka "zombie" doesn't exist yet.

    return typeEffect;
end;
