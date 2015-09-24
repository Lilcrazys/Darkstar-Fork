-----------------------------------
-- Area: Yuhtunga Jungle
--  NM:  Mischievous Micholas
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 4);
    end
end;