-----------------------------------
-- Area: Seas Serpent Grotto
--  NM:  Seww the Squidlimbed
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 1);
    end
end;