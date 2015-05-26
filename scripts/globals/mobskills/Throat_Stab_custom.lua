---------------------------------------------
-- Throat Stab (custom triple stab version)
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require("scripts/globals/magic");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    local STABBINGS = mob:getLocalVar("TripleStab");

    if (STABBINGS == 0) then
        return 1;
    else
        mob:setLocalVar("TripleStab", STABBINGS +1);

        if (STABBINGS == 3) then
            mob:setLocalVar("TripleStab", 0);
        end

        return 0;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local currentHP = target:getHP();
    local dmg = 0;

    -- If have more hp then 20%, then reduce to 5%
    if (currentHP / target:getMaxHP() > 0.2) then
        dmg = currentHP *0.95;
    else
        -- Else I expect you to die Mr. Bond!
        dmg = currentHP;
    end

    dmg = MobFinalAdjustments(dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_PIERCE,MOBPARAM_IGNORE_SHADOWS);

    -- Suddenly move mob very close to player
    mob:setPos(target:getXPos()+math.random(-0.2, 0.2), target:getYPos(), target:getZPos()+math.random(-0.2, 0.2), 0);
    -- We should actually use a teleport skill prior to this skill, but being lazy for now.

    target:delHP(dmg);
    mob:resetEnmity(target);

    if (mob:getLocalVar("TripleStab") < 3) then
        mob:useAbility(532);
    end

    return dmg;
end;
