-----------------------------------
-- Area: Seas Serpent Grotto
--  NM:  Seww the Squidlimbed
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 1);
    end
end;