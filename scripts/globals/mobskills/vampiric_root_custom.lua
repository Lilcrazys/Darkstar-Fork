---------------------------------------------
-- Vampiric Root
-- Deals dark damage to a single target. Additional effect: Drain
-- Type: Magical
-- Utsusemi/Blink absorb: 1 shadow
-- Range: Melee
-- Notes: If used against undead, it will simply do damage and not drain HP.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_1_SHADOW);

    if (target:isUndead() == false) then
        mob:addHP(dmg*.5);
        skill:setMsg(msgBasic.DRAIN_HP);
    end

    target:delHP(dmg);

    return dmg;
end;
