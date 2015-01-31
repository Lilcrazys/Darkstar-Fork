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
    local critlvl = effect:getSubPower();
    target:addMod(MOD_CRITHITRATE, 100);
    target:addMod(MOD_CRIT_DMG_INCREASE, critlvl);
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
    local critlvl = effect:getSubPower();
	target:delMod(MOD_CRITHITRATE, 100);
    target:delMod(MOD_CRIT_DMG_INCREASE, critlvl);
end;