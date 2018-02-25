-----------------------------------
-- Area: Arrapago Reef
--  MOB: Medusa
-- !pos -458 -20 458
-- TODO: resists, attack/def boosts
-----------------------------------
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
    mob:setLocalVar("mainSpec", jobSpec.EES_LAMIA);
    mob:setLocalVar("useSpecAtHpMin", 5);
    mob:setLocalVar("useSpecAtHpMax", 99);
    mob:setLocalVar("useMainSpecAtHPP", math.random(5,99));
end;

function onMobEngaged(mob, target)
    local mobID = mob:getID();
    target:showText(mob, MEDUSA_ENGAGE);
    SpawnMob(mobID+1, 180):updateEnmity(target);
    SpawnMob(mobID+2, 180):updateEnmity(target);
    SpawnMob(mobID+3, 180):updateEnmity(target);
    SpawnMob(mobID+4, 180):updateEnmity(target);
end;

function onMobDeath(mob, player, isKiller)
    --[[
    player:showText(mob, MEDUSA_DEATH);
    ]]
    mob:showText(mob, MEDUSA_DEATH);
    player:addTitle(GORGONSTONE_SUNDERER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 100) then -- 10%
            player:addTreasure(10951, mob); -- Weaver's Torque
        elseif (RND <= 300) then -- 20%
            player:addTreasure(20905, mob); -- Tajabit
        else
            player:addTreasure(4023, mob); -- Snowsteel Ore
            player:addTreasure(4023, mob); -- Snowsteel Ore
        end
    end

    -- Custom Trial Check
    cTrialProgress(player, 3, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(75600,86400));   -- 21 to 24 hours
end;

