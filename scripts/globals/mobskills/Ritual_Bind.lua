---------------------------------------------------
-- Ritual Bind
-- Additional effect: Bind and Paralyze
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect1 = EFFECT_PARALYSIS;
    local typeEffect2 = EFFECT_BIND;

    MobStatusEffectMove(mob, target, typeEffect1, 15, 0, 30);
    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect2, 10, 0, 30));
    mob:setLocalVar("TripleStab", 1);

    return typeEffect2;
end;