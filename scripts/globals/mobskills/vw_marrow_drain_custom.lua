---------------------------------------------------
-- Marrow Drain
-- Steals an enemy's MP. Ineffective against undead.
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:isMobType(MOBTYPE_NOTORIOUS)) then
        return 0;
    end
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.3,ELE_DARK,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);


    if (target:isUndead() == false) then
        target:delMP(dmg);
        mob:addMP(dmg);
        skill:setMsg(msgBasic.DRAIN_MP);
    else
        skill:setMsg(msgBasic.NO_EFFECT);
    end

    return dmg;
end;
