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

function onMobDeath(mob, killer, ally)
    local CHANCE = 25;
    local HAS_RESTORAL = ally:hasSpell(711);
    local HAS_RAIL_CANNON = ally:hasSpell(712);
    local isBLU = (ally:getMainJob() == JOB_BLU);

    if (math.random(0,99) < CHANCE and isBLU and HAS_RESTORAL == false) then
        ally:addSpell(711);
    end

    if (math.random(0,99) < CHANCE and isBLU and HAS_RAIL_CANNON == false) then
        ally:addSpell(712);
    end

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, MYTHIC, 2);
    end
end;