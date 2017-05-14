---------------------------------------------
--  Raksha Vengence
--  Naraka

---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 1) then
        if (mob:getHPP() < 50) then
            return 0;
        end
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.2;

    MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 10, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MUTE, 10, 0, 60);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
