-----------------------------------
-- Area: Arrapago Reef
--  NM:  Medusa
-- @pos -458 -20 458
-- TODO: resists, attack/def boosts
-----------------------------------
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SUPERLINK, mob:getShortID());

    -- addMod
    mob:addMod(MOD_REGAIN,1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setLocalVar("eeshpp", math.random(5,99)); -- Uses EES randomly during the fight
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    local mobID = mob:getID();
    mob:showText(mob, MEDUSA_ENGAGE);
    SpawnMob(mobID+1):updateEnmity(target);
    SpawnMob(mobID+2):updateEnmity(target);
    SpawnMob(mobID+3):updateEnmity(target);
    SpawnMob(mobID+4):updateEnmity(target);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local HPP = mob:getHPP();
    if (mob:getLocalVar("usedees") == 0) then
        if (HPP <= mob:getLocalVar("eeshpp")) then
            mob:useMobAbility(1931); -- Eagle Eye Shot
            mob:setLocalVar("usedees", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    mob:showText(mob, MEDUSA_DEATH);
    player:addTitle(GORGONSTONE_SUNDERER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 33) then
            player:addTreasure(10951, mob); -- Weaver's Torque
        elseif (RND <= 66) then
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

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    mob:setRespawnTime(math.random(75600,86400));   -- 21 to 24 hours
end;

