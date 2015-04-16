---------------------------------------------------
--  Catharsis
--
--  Description: Restores HP.
--
---------------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
end;

function onMobWeaponSkill(target, mob, skill)

    local potency = skill:getParam();
    local mobhp = mob:getHPP();

    if mobhp > 50 then
        return 0;
    else

    if(potency == 0) then
        potency = 05;
    end


    skill:setMsg(MSG_SELF_HEAL);

    return MobHealMove(mob, mob:getMaxHP() * potency / 05);
    end;
end;
