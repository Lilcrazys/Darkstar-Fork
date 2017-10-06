-----------------------------------
-- Area: Dragons Aery
--  HNM: Fafnir
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

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

-----------------------------------
-- onMobDeath
-----------------------------------

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

    -- Custom Trial Check
    cTrialProgress(player, 2, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

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
