---------------------------------------------------
-- Remporal Shift
-- Aoe Stun
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local typeEffect = EFFECT_STUN;
    local power = 30;
    local duration = 30;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, power, 0, duration));
    return typeEffect;

end