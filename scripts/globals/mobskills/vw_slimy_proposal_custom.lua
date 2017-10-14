---------------------------------------------
-- Slimy Proposal
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_LIGHT,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_LIGHT,MOBPARAM_WIPE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_DIA, 75, 3, 90);

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 1, 0, 30);
    return dmg;
end;