---------------------------------------------------
-- Eradicator
-- Iron Giants
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;


function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_LIGHT,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_LIGHT,MOBPARAM_IGNORE_SHADOWS);

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_WEAKNESS, 10, 0, 30);
    return dmg;
end
