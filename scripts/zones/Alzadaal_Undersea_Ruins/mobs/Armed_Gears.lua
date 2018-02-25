-----------------------------------
-- Area: Alzadaal Undersea Ruins (72)
--  MOB: Armed Gears (Tier-III ZNM)
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
require("scripts/globals/custom_trials");
require("scripts/globals/status");

function onMobSpawn(mob)
end;

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