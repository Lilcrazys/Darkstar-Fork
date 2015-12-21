-----------------------------------
-- Area: Yuhtunga Jungle
--  NM:  Mischievous Micholas
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 4);
    end
end;