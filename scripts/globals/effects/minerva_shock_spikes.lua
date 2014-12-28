-----------------------------------
--
-- EFFECT_MINERVA_SHOCK_SPIKES
--
-- needed its own effect to be both 
-- scripted and dispelled properly
--
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_SPIKES,5);
    target:addMod(MOD_SPIKES_DMG, 10);
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
    target:delMod(MOD_SPIKES,5);
    target:delMod(MOD_SPIKES_DMG, 10);
end;