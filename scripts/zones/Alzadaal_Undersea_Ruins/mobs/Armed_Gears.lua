-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  ZNM: Armed Gears
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

function onMobDeath(mob,killer)
    local CHANCE = 25;
    local HAS_RESTORAL = killer:hasSpell(711);
    local HAS_RAIL_CANNON = killer:hasSpell(712);
    local isBLU = (killer:getMainJob() == JOB_BLU);

    if (math.random(0,99) < CHANCE and isBLU and HAS_RESTORAL == false) then
        killer:addSpell(711);
    end

    if (math.random(0,99) < CHANCE and isBLU and HAS_RAIL_CANNON == false) then
        killer:addSpell(712);
    end

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, MYTHIC, 2);
    end
end;