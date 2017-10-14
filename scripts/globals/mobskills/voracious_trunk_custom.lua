---------------------------------------------
-- Voracious Trunk
-- Steal one effect
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    -- try to drain buff
    local effect = target:stealStatusEffect();
    local count = 0;

    if (effect ~= nil) then
        if (mob:hasStatusEffect(effect:getType()) == false) then
            -- add to myself
            mob:addStatusEffect(effect:getType(), effect:getPower(), effect:getTickCount(), effect:getDuration());
        end
        -- msg
        skill:setMsg(msgBasic.EFFECT_DRAINED);

        count = 1;
    else
        skill:setMsg(msgBasic.NO_EFFECT);
    end

    return count;
end;
