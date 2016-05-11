-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    if (target:getPet()) then
        target:getPet():addStatusEffect(effect);
    end
   -- local allegiance = target:getAllegiance();
   -- local ALLEGIANCE_CAMPAIGN_PLAYER = 9;
   -- target:setStatus(STATUS_UPDATE,ALLEGIANCE_CAMPAIGN_PLAYER);
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
    if (target:getPet()) then
        target:getPet():delStatusEffect(EFFECT_ALLIED_TAGS);
    end
   -- local allegiance = target:getAllegiance();
   -- local ALLEGIANCE_PLAYER = 1;
   -- target:setFlag(ALLEGIANCE_PLAYER);
end;