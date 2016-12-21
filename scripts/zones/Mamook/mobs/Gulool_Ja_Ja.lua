-----------------------------------
-- Area: Mamook
--  NM:  Gulool Ja Ja
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)

    SpawnMob(17043876):updateEnmity(target);
    SpawnMob(17043877):updateEnmity(target);
    SpawnMob(17043878):updateEnmity(target);
    SpawnMob(17043879):updateEnmity(target);

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(SHINING_SCALE_RIFLER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        if (math.random(1,1000) <= 33) then
            player:addTreasure(10955, mob); -- Cuilinarian's Torque
        elseif (RND <= 66) then
            player:addTreasure(20861, mob); -- Qalgwer
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
