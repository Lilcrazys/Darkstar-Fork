-----------------------------------
-- Area: Seas Serpent Grotto
--  NM:  Seww the Squidlimbed
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 1);
    end
end;