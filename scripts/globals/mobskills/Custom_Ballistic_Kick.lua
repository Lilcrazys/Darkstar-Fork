---------------------------------------------
--  Balistic Kick
--  Iron Giant
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local currentHP = target:getHP();
    local damage = 0;

    if (currentHP / target:getMaxHP() > 0.2) then
        damage = currentHP * .85;
    else
        -- else you die
        damage = currentHP;
    end

    local dmg = MobFinalAdjustments(damage,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_PIERCE,MOBPARAM_IGNORE_SHADOWS);

    -- MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_ENCUMBRANCE_II, 10, 0, 30);

    target:delHP(dmg);
    mob:resetEnmity(target);
    return dmg;
end;

