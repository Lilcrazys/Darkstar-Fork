-----------------------------------
-- Area: The Sanctuary of ZiTah
--  NM:  Keeper of Halidom
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    --[[ Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 6);
    end]]
end;