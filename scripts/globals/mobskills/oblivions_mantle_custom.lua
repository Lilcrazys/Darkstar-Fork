---------------------------------------------
-- Oblivion Mantle
-- Gallu
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2.5;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_WIPE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_DOOM, 10, 3, 10);

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 20, 0, 60);
    return dmg;
end;
