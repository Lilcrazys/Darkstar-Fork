-----------------------------------
-- Area: Dragons Aery
--  HNM: Fafnir
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/spoofchat");
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

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_3");
        if (KILLED < 7) then
            killer:setVar("C_TRIAL_OBJ_3", KILLED + 1);
        end
        cTrialProgress(killer,RELIC);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local Fafnir  = mob:getID();
    local Nidhogg = 17408019;
    local ToD     = GetServerVariable("[POP]Nidhogg");
    local kills   = GetServerVariable("[PH]Nidhogg");
    if (LandKingSystem_HQ == 0 or LandKingSystem_HQ == 2) then
        if (ToD <= os.time(t) and GetMobAction(Nidhogg) == 0) then
            if (math.random((1),(5)) == 3 or kills > 6) then
                DeterMob(Fafnir, true);
                DeterMob(Nidhogg, false);
                UpdateNMSpawnPoint(Nidhogg);
                GetMobByID(Nidhogg):setRespawnTime(math.random((21600),(32400)));
            elseif (LandKingSystem_NQ == 0 or LandKingSystem_NQ == 2) then
                UpdateNMSpawnPoint(Fafnir);
                mob:setRespawnTime(math.random((21600),(32400)));
                SetServerVariable("[PH]Nidhogg", kills + 1);
                GetMobByID(Nidhogg):setRespawnTime(math.random((21600),(32400)));
            end
        end
    elseif (LandKingSystem_NQ == 0 or LandKingSystem_NQ == 2) then
        UpdateNMSpawnPoint(Fafnir);
        mob:setRespawnTime(math.random((21600),(32400)));
        SetServerVariable("[PH]Nidhogg", kills + 1);
    end
end;