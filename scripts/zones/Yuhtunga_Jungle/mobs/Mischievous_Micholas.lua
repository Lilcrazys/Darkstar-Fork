-----------------------------------
-- Area: Yuhtunga Jungle
--  NM:  Mischievous Micholas
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 4);
    end
end;