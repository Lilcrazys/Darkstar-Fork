---------------------------------------------------
-- Incisive Apotheosis
-- Colkhab
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local targetcurrentHP = target:getHP();
    local hpset = target:getMaxHP()*0.5;

    if (targetcurrentHP > hpset)then
        dmg = targetcurrentHP -hpset;
    else
        dmg = 0;
    end

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 1, 0, 30);
    return dmg;
end;
