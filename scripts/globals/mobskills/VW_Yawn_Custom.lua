---------------------------------------------------
-- Yawn
-- 15' AoE sleep
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_SLEEP_II;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 1, 0, math.random(60, 90)));

    return typeEffect;
end;
