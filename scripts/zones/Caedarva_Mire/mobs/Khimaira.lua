-----------------------------------
-- Area: Caedarva Mire
--  NM:  Khimaira
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/custom_trials");


function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_REGAIN,33);
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;


function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(KHIMAIRA_CARVER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 100) then -- 10%
            player:addTreasure(10953, mob); -- Boneworker's Torque
        elseif (RND <= 300) then -- 20%
            player:addTreasure(20827, mob); -- Kerehcatl
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
    mob:setRespawnTime(math.random(12,24) * 3600); -- 12 to 24 hours, in 1-hour increments
    --[[
    mob:setRespawnTime(math.random(48,72) * 3600); -- 48 to 72 hours, in 1-hour increments
    ]]
end;
