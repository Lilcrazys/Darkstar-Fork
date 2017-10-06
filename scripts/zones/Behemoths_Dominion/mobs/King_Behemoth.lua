-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: King Behemoth
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_COUNTER, 15);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 10)
    mob:addMod(MOD_STUNRES, 50);
    mob:addMod(MOD_TERRORRES, 100);

    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_MAGIC_COOL, 60);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- Todo: move this to SQL after drop slots are a thing
    if (math.random(1,100) <= 5) then -- Hardcoded "this or this item" drop rate until implemented.
        SetDropRate(1936,13566,1000); -- Defending Ring
        SetDropRate(1936,13415,0);
    else
        SetDropRate(1936,13566,0);
        SetDropRate(1936,13415,1000); -- Pixie Earring
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17297459):setStatus(STATUS_DISAPPEAR);
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(BEHEMOTH_DETHRONER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 200) then -- 20%
            player:addTreasure(20963, mob); -- Falubeza
            SetServerVariable("Falubeza_dropped",GetServerVariable("Falubeza_dropped")+1);
        else
            player:addTreasure(860, mob); -- Behemoth Hide
            player:addTreasure(860, mob); -- Behemoth Hide
            player:addTreasure(883, mob); -- Behemoth Horn
        end
    end

    -- Custom Trial Check
    cTrialProgress(player, 3, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    -- Set King_Behemoth's Window Open Time
    if (LandKingSystem_HQ ~= 1) then
        local wait = 72 * 360;
        SetServerVariable("[POP]King_Behemoth", os.time() + wait); -- 3 days
        if (LandKingSystem_HQ == 0) then -- Is time spawn only
            DisallowRespawn(mob:getID(), true);
        end
    end

    -- Set Behemoth's spawnpoint and respawn time (21-24 hours)
    if (LandKingSystem_NQ ~= 1) then
        SetServerVariable("[PH]King_Behemoth", 0);
        local Behemoth = mob:getID()-1;
        DisallowRespawn(Behemoth, false);
        UpdateNMSpawnPoint(Behemoth);
        GetMobByID(Behemoth):setRespawnTime(math.random(21600,32400));
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17297459):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;
