---------------------------------------------
-- Raksha Vengence
-- Naraka
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 1 and mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 10, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MUTE, 10, 0, 60);

    target:delHP(dmg);
    return dmg;
end;