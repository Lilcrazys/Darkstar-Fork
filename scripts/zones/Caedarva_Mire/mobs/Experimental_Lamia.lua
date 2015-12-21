-----------------------------------
-- Area: Caedarva Mire
--  ZNM: Experimental Lamia
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, MYTHIC, 4);
    end
end;