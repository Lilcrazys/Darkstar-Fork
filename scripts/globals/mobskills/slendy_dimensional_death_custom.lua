---------------------------------------------------
-- Dimensional Death (SlenderMan's custom version)
--
-- Dark based magic dmg, damages targets TP,
-- and dispels 1 positive effect.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2.1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    target:dispelStatusEffect();
    target:addTP(-(dmg/30));

    target:delHP(dmg);
    return dmg;
end;
