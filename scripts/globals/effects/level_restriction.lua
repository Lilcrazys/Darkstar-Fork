-----------------------------------
--  
--     EFFECT_LEVEL_RESTRICTION
--     
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:levelRestriction(effect:getPower());
    target:delStatusEffect(EFFECT_LEGION);
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
    target:levelRestriction(0);
    target:delStatusEffect(EFFECT_LEGION);
end;