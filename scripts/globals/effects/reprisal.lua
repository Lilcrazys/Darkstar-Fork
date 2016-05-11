-----------------------------------
--
--
--
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_SPIKES,6);
    if (target:isMob()) then
        target:addMod(MOD_SPIKES_DMG, effect:getPower());
    else
         -- Spike damage is calculated on hit in battleutils::TakePhysicalDamage
        target:setMod(MOD_SPIKES_DMG, 0);
        target:addMod(MOD_SHIELDBLOCKRATE, 50);
    end
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_SPIKES,6);
    if (target:isMob()) then
        target:delMod(MOD_SPIKES_DMG, effect:getPower());
    else
        target:setMod(MOD_SPIKES_DMG, 0);
        target:delMod(MOD_SHIELDBLOCKRATE, 50);
    end
end;