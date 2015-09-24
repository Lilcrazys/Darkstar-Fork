-----------------------------------
-- Area: Bibiki Bay
--  NM:  Intulo
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 5);
    end
end;