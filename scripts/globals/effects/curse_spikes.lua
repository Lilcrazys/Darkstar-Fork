-----------------------------------
--
-- EFFECT_CURSE_SPIKES
--
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_SPIKES,4);
    -- May require work in core to make proc rate adjustable..
    -- Will be using effects SUB power if so.
    -- (power would cause damage, which curse spikes do not do!)
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
    target:delMod(MOD_SPIKES,4);
end;