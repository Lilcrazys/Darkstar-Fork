-----------------------------------
-- Area: The Sanctuary of ZiTah
--  NM:  Keeper of Halidom
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 6);
    end
end;