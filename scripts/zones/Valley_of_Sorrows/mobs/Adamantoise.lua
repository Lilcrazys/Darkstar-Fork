-----------------------------------
-- Area: Valley of Sorrows
--  HNM: Adamantoise
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    --addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_ACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(TORTOISE_TORTURER);

    local Adamantoise  = mob:getID();
    local Aspidochelone = 17301538;
    local ToD     = GetServerVariable("[POP]Aspidochelone");
    local kills   = GetServerVariable("[PH]Aspidochelone");
    if (LandKingSystem_HQ == 0 or LandKingSystem_HQ == 2) then
        if (ToD <= os.time(t) and GetMobAction(Aspidochelone) == 0) then
            if (math.random((1),(5)) == 3 or kills > 6) then
                DeterMob(Adamantoise, true);
                DeterMob(Aspidochelone, false);
                UpdateNMSpawnPoint(Aspidochelone);
                GetMobByID(Aspidochelone):setRespawnTime(math.random((21600),(32400)));
            elseif (LandKingSystem_NQ == 0 or LandKingSystem_NQ == 2) then
                UpdateNMSpawnPoint(Adamantoise);
                mob:setRespawnTime(math.random((21600),(32400)));
                SetServerVariable("[PH]Aspidochelone", kills + 1);
            end
        end
    elseif (LandKingSystem_NQ == 0 or LandKingSystem_NQ == 2) then
        UpdateNMSpawnPoint(Adamantoise);
        mob:setRespawnTime(math.random((21600),(32400)));
        SetServerVariable("[PH]Aspidochelone", kills + 1);
    end

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_1");
        if (KILLED < 7) then
            killer:setVar("C_TRIAL_OBJ_1", KILLED + 1);
        end
        cTrialProgress(killer,RELIC);
    end

end;