---------------------------------------------
-- Sandworms
-- Aeolin Void
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 2;
    local dmgmod = 3;
    MobStatusEffectMove(mob, target, EFFECT_SILENCE, 10, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_BIND, 10, 0, 30);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3.5,ELE_EARTH,dmgmod,TP_MAB_BONUS);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
