---------------------------------------------------
-- Crab Spirit Surge
-- Used only by "The Jumping Crab" Custom HNM
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_SPIRIT_SURGE;
    mob:addStatusEffect(EFFECT_REGAIN, 10, 3, 60);
    mob:setLocalVar("J1", mob:getBattleTime()+30);
    mob:setLocalVar("J2", mob:getBattleTime()+45);
    mob:setLocalVar("J3", mob:getBattleTime()+90);
    skill:setMsg(MobBuffMove(mob, typeEffect, 0, 0, 60, 0, 50));
    return typeEffect;
end;