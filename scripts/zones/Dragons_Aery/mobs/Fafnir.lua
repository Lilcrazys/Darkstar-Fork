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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(FAFNIR_SLAYER);

    local SPELL_ID = 738;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        killer:addSpell(SPELL_ID);
    end

    -- Set server var for custom @command to check ToD
    SetServerVariable("Our_Fafnir_ToD", os.time());

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 3);
    end
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

    if (LandKingSystem_HQ ~= 1 and ToD <= os.time(t) and popNow == true) then
        -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
        if (LandKingSystem_NQ == 0) then
            DeterMob(Fafnir, true);
        end
        
        DeterMob(Nidhogg, false);
        UpdateNMSpawnPoint(Nidhogg);
        GetMobByID(Nidhogg):setRespawnTime(math.random(21600,32400));
    else
        if (LandKingSystem_NQ ~= 1) then
            UpdateNMSpawnPoint(Fafnir);
            mob:setRespawnTime(math.random(21600,32400));
            SetServerVariable("[PH]Nidhogg", kills + 1);
        end
    end
end;