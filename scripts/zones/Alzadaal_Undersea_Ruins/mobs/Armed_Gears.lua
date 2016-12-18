-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  ZNM: Armed Gears
-----------------------------------
require("scripts/globals/custom_trials");
require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 25;
    local HAS_RESTORAL = player:hasSpell(711);
    local HAS_RAIL_CANNON = player:hasSpell(712);
    local isBLU = (player:getMainJob() == JOBS.BLU);

    if (math.random(0,99) < CHANCE and isBLU and HAS_RESTORAL == false) then
        player:addSpell(711);
    end

    if (math.random(0,99) < CHANCE and isBLU and HAS_RAIL_CANNON == false) then
        player:addSpell(712);
    end

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 2, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------
end;