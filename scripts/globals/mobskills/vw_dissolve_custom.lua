---------------------------------------------------
-- Dissolve
-- Steals an enemy's HP. Ineffective against undead.
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    if (target:isUndead() == false) then
        target:delHP(dmg);
        mob:addHP(dmg);
        skill:setMsg(msgBasic.DRAIN_HP);
    else
        skill:setMsg(msgBasic.NO_EFFECT);
    end

    return dmg;
end;
