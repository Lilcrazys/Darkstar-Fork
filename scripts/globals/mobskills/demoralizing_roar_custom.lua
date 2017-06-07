---------------------------------------------------
-- Demoralizing Roar
--
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_ATTACK_DOWN;
    skill:setMsg(MobBuffMove(mob, typeEffect, 1, 0, 180));
    return typeEffect;
end;
