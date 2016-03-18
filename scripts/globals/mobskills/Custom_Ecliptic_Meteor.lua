---------------------------------------------
-- Ecliptic Meteor
--
-- Description: Hardcore non-elemental damage
-- Type: Magical
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)

    --[[ broken code WHATS WRONG WITH YOU
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*6,-1,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    local typeEffect = EFFECT_BIO
    local typeEffect = EFFECT_POISON
    return dmg;
    ]]
end;
