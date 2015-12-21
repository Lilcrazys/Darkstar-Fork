-----------------------------------
-- Area: Lufaise Meadows
--  NM:  Megalobugard
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- OnMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end; 

-----------------------------------
-- OnMobDeath Action
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 2);
    end
end;