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

function onMobDeath(mob, player, isKiller)

    --[[ Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 2);
    end]]
end;