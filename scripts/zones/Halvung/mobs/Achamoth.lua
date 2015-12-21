-----------------------------------
-- Area: Halvung
--  ZNM: Achamoth
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

function onMobDeath(mob, killer, ally)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, MYTHIC, 1);
    end
end;