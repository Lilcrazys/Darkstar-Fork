-----------------------------------
-- EFFECT_CUSTOM_ENSPELL
--
-- Used to grant a dispellable non retail enspell effect
-- for NM to use with addStatusEffectEx and onAdditionalEffect scripts.
-- Otherwise, either can't script them or can't dispell them..
-- Normal enspell can be dispelled, but cannot be altered by onAdditionalEffect.
-- Effects in onAdditionalEffect can be customized in script, but not dispelled.
--
-- Set power match to subeffect
-- SUBEFFECT_FIRE_DAMAGE       = 1;
-- SUBEFFECT_ICE_DAMAGE        = 2;
-- SUBEFFECT_WIND_DAMAGE       = 3;
-- SUBEFFECT_EARTH_DAMAGE      = 4;
-- SUBEFFECT_LIGHTNING_DAMAGE  = 5;
-- SUBEFFECT_WATER_DAMAGE      = 6;
-- SUBEFFECT_LIGHT_DAMAGE      = 7;
-- SUBEFFECT_DARKNESS_DAMAGE   = 8;
--
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
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
end;