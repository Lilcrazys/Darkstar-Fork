-----------------------------------
-- Area: Arrapago Reef
--  ZNM: Zareehkl the Jubilant
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, MYTHIC, 4);
    end
end;