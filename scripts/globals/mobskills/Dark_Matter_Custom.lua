---------------------------------------------
-- Shinryu
-- Dark Matter
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 66) then
            return 0;
        else
            return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_TERROR;

    MobStatusEffectMove(mob, target, typeEffect, 10, 0, 30);

    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
