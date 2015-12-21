-----------------------------------
-- Area: Bibiki Bay
--  NM:  Intulo
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 5);
    end
end;