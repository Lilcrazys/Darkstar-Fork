-----------------------------------
--
-- EFFECT_SIGIL
--
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    if (effect:getPower() >= 4 and effect:getPower() <= 7) then
        -- target:addMod(MOD_FOOD_DURATION), ????);
        -- food duration not implemented.
    elseif (effect:getPower() >= 8 and effect:getPower() <= 11) then
        -- target:addMod(MOD_EXPLOSS_REDUCTION), ????);
        -- exp loss reduction not implemented.
    elseif (effect:getPower() >= 12) then
        -- target:addMod(MOD_FOOD_DURATION), ????);
        -- food duration not implemented.
        -- target:addMod(MOD_EXPLOSS_REDUCTION), ???);
        -- exp loss reduction not implemented.
    end
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
    local HPP = target:getHP()/target:getMaxHP();
    local MPP = target:getMP()/target:getMaxMP();
    local power = effect:getPower();
    local subPower = effect:getSubPower();
    -- subPower sets % required to trigger regen/refersh.
    -- Campaign Area's controlled sets subPower at time of effect gain.

    if (target:getCurrentRegion() >= 33 and target:getCurrentRegion() <= 40) then -- Only works in WotG zones
        if (HPP < subPower) then
            if (power == 1 or power == 3 or power == 5 or power == 7 or power == 9 or power == 11 or power == 13 or power == 15) then
                target:addHP(1);
            end
        end

        if (MPP < subPower) then
            if (power == 2 or power == 3 or power == 6 or power == 7 or power == 10 or power == 11 or power >= 14) then
                target:addMP(1);
            end
        end
    end
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    if (effect:getPower() >= 4 and effect:getPower() <= 7) then
        -- target:delMod(MOD_FOOD_DURATION), ????);
        -- food duration not implemented.
    elseif (effect:getPower() >= 8 and effect:getPower() <= 11) then
        -- target:delMod(MOD_EXPLOSS_REDUCTION), ???);
        -- exp loss reduction not implemented.
    elseif (effect:getPower() >= 12) then
        -- target:delMod(MOD_FOOD_DURATION), ????);
        -- food duration not implemented.
        -- target:delMod(MOD_EXPLOSS_REDUCTION), ???);
        -- exp loss reduction not implemented.
    end
end;