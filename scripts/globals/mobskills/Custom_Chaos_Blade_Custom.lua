---------------------------------------------
-- Chaos Blade (Custom Version for NM)
--
-- Deals Dark Magic damage to enemies within a fan-shaped area.
-- Ignores Shadows. Additional effect: Curse
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local dmgmod = 4;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 3,ELE_DARK,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);

    -- curse LAST so you don't die
    local typeEffect = EFFECT_CURSE_I;
    MobStatusEffectMove(mob, target, typeEffect, 25, 0, 420);

    return dmg;
end;