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

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 2);
    end
end;