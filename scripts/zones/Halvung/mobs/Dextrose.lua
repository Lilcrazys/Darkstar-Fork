-----------------------------------
-- Area: Halvung
--  ZNM: Dextrose
-----------------------------------

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

function onMobDeath(mob, player, isKiller)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, MYTHIC, 5);
    end
end;