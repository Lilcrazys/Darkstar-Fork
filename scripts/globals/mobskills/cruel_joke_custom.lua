---------------------------------------------
-- 
-- 
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_CHARM_I;

    if (target:isPC()) then
        target:addStatusEffect(EFFECT_COSTUME,578,0,60);
    end

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 1, 0, 60));
    mob:resetEnmity(target);

    return typeEffect;
end;
