-----------------------------------
-- Area: Dragons Aery
--  HNM: Fafnir
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_STUNRES, 50);
    mob:setMod(MOD_TERRORRES, 100);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17408033):setStatus(STATUS_DISAPPEAR);
    end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(FAFNIR_SLAYER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    local SPELL_ID = 738;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end

    -- Set server var for custom @command to check ToD
    SetServerVariable("Our_Fafnir_ToD", os.time());

    -- Customized lootdrop scripting
    if (isKiller == true) then
        local group_1 = math.random(1,4); -- Guaranteed drop: 25% of any one item
        if (group2 == 1) then
            player:addTreasure(1133, mob); -- Dragon Blood
        elseif (group_1 == 2) then
            player:addTreasure(4272, mob); -- Dragon Meat
        elseif (group_1 == 3) then
            player:addTreasure(867, mob); -- Dragon Scales
        elseif (group_1 == 4) then
            player:addTreasure(903, mob); -- Dragon Talon
        end

        local group_2 = math.random(1,9); -- Guaranteed drop: 3/3/2/1 of 9 chance
        if (group_2 > 6) then -- Rolled 7, 8, or 9
            player:addTreasure(13914, mob); -- Aegishjalmr
        elseif (group_2 > 3) then -- Rolled 4, 5, or 6
            player:addTreasure(14075, mob); -- Andvaranauts
        elseif (group_2 > 1) then -- Rolled 2 or 3
            player:addTreasure(16942, mob); -- Balmung
        else -- Rolled a 1
            player:addTreasure(4486, mob); -- Dragon Heart
        end

        local group_3 = math.random(1,4); -- Guaranteed drop: 25% of any one abjur
        if (group_3 == 1) then
            player:addTreasure(1321, mob); -- Earthen Abjuration: Hands
        elseif (group_3 == 2) then
            player:addTreasure(1326, mob); -- Aquarian Abjuration: Hands
        elseif (group_3 == 3) then
            player:addTreasure(1328, mob); -- Aquarian Abjuration: Feet
        elseif (group_3 == 4) then
            player:addTreasure(1339, mob); -- Neptunal Abjuration: Head
        end

        local group_4 = math.random(1,100); -- 64% chance of no drop
        if (group_4 >= 94) then -- 6%
            player:addTreasure(16555, mob); -- Ridill
        elseif (group_4 >= 70) then -- 30%
            player:addTreasure(17653, mob); -- Hrotti
        end
    end

    -- Custom Trial Check
    cTrialProgress(player, 2, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

function onMobDespawn(mob)
    local Fafnir = mob:getID();
    local Nidhogg = mob:getID()+1;
    local ToD = GetServerVariable("[POP]Nidhogg");
    local kills = GetServerVariable("[PH]Nidhogg");
    local popNow = (math.random(1,5) == 3 or kills > 6);

    if (LandKingSystem_HQ ~= 1 and ToD <= os.time() and popNow == true) then
        -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
        if (LandKingSystem_NQ == 0) then
            DisallowRespawn(Fafnir, true);
        end

        DisallowRespawn(Nidhogg, false);
        UpdateNMSpawnPoint(Nidhogg);
        GetMobByID(Nidhogg):setRespawnTime(math.random(21600,32400));
    else
        if (LandKingSystem_NQ ~= 1) then
            UpdateNMSpawnPoint(Fafnir);
            mob:setRespawnTime(math.random(21600,32400));
            SetServerVariable("[PH]Nidhogg", kills + 1);
        end
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17408033):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;
