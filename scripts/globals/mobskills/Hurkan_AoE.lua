---------------------------------------------
--  Rockfin Melee
--  Rockfin
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.5,ELE_THUNDER,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_2_SHADOW);

    MobStatusEffectMove(mob, target, EFFECT_BLINDNESS, 30, 0, 10);
    target:addTP(-1);
    mob:addTP(1);

    target:delHP(dmg);
    skill:setMsg(1);

    return dmg;
end;