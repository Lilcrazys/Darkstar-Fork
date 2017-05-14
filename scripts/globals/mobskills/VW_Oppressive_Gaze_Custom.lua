---------------------------------------------------
-- Oppressive Gaze
-- Causes Terror, Poison
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local typeEffect = EFFECT_TERROR;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 30, 0, 30));
    MobStatusEffectMove(mob, target, EFFECT_POISON, 100, 3, 60);
    return typeEffect;
end;