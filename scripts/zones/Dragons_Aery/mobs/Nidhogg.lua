-----------------------------------
-- Area: Dragons Aery
--  HNM: Nidhogg
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_DRAW_IN, 2);

    -- addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_STUNRES, 50);
    mob:setMod(MOD_TERRORRES, 100);

    --[[
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17408033):setStatus(STATUS_DISAPPEAR);
    end
    ]]
end;

function onMobFight(mob, target)
    local battletime = mob:getBattleTime();
    local twohourTime = mob:getLocalVar("twohourTime");

    if (twohourTime == 0) then
        mob:setLocalVar("twohourTime",math.random(30,90));
    end

    if (battletime >= twohourTime) then
        mob:useMobAbility(956);
        -- technically aerial hurricane wing, but I'm using 700 for his two hour
        --(since I have no inclination to spend millions on a PI to cap one name you never see)
        mob:setLocalVar("twohourTime",battletime + math.random(60,120));
    end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(NIDHOGG_SLAYER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    local SPELL_ID = 738;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end

    -- Customized lootdrop scripting
    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 100) then -- 10%
            player:addTreasure(10949, mob); -- Smithy's Torque
            SetServerVariable("Smithys_Torque_dropped",GetServerVariable("Smithys_Torque_dropped")+1);
        elseif (RND <= 300) then -- 20%
            player:addTreasure(20738, mob); -- Buramenk'ah
            SetServerVariable("Buramenkah_dropped",GetServerVariable("Buramenkah_dropped")+1);
        else
            player:addTreasure(4486, mob); -- Dragon Heart
            player:addTreasure(4272, mob); -- Dragon Meat
            player:addTreasure(903, mob); -- Dragon Meat
        end
    end

    -- Custom Trial Check
    cTrialProgress(player, 3, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

function onMobDespawn(mob)
    -- Set Nidhogg's Window Open Time
    if (LandKingSystem_HQ ~= 1) then
        local wait = 72 * 360;
        SetServerVariable("[POP]Nidhogg", os.time() + wait); -- 3 days
        if (LandKingSystem_HQ == 0) then -- Is time spawn only
            DisallowRespawn(mob:getID(), true);
        end
    end

    -- Set Fafnir's spawnpoint and respawn time (5-8 hours)
    if (LandKingSystem_NQ ~= 1) then
        local Fafnir = mob:getID()-1;
        SetServerVariable("[PH]Nidhogg", 0);
        DisallowRespawn(Fafnir, false);
        UpdateNMSpawnPoint(Fafnir);
        GetMobByID(Fafnir):setRespawnTime(math.random(21600,32400));
    end

    --[[
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17408033):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
    ]]
end;
