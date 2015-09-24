-----------------------------------
-- Area: The Sanctuary of ZiTah
--  NM:  Keeper of Halidom
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 6);
    end
end;