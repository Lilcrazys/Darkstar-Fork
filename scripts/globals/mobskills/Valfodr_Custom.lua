---------------------------------------------
-- Odin
-- Valfodr
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobStatusEffectMove(mob, target, EFFECT_CURSE_I, 50, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_SILENCE, 10, 0, 60);

    local dmgmod = 4;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 3,ELE_DARK,dmgmod,TP_MAB_BONUS,5);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    mob:resetEnmity(target);
    return dmg;
end;
