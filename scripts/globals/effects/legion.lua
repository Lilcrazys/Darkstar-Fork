-----------------------------------
--
-- EFFECT_LEGION
--
-- used in @regen
--
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_REGEN, 6);
    target:addMod(MOD_REFRESH, 4);
    target:addMod(MOD_REGAIN, 25);
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
    target:delMod(MOD_REGEN, 6);
    target:delMod(MOD_REFRESH, 4);
    target:delMod(MOD_REGAIN, 25);
end;