-----------------------------------
-- Area: Mamook
--  ZNM: Iriri Samariri
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
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
        cTrialProgress(killer, MYTHIC, 6);
    end
end;