-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: Behemoth
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addTitle(BEHEMOTHS_BANE);

    -- Set server var for custom @command to check ToD
    SetServerVariable("Our_Behemoth_ToD", os.time());

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, RELIC, 2);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local Behemoth = mob:getID();
    local King_Behemoth = mob:getID()+1;
    local ToD = GetServerVariable("[POP]King_Behemoth");
    local kills = GetServerVariable("[PH]King_Behemoth");
    local popNow = (math.random(1,5) == 3 or kills > 6);

    if (LandKingSystem_HQ ~= 1 and ToD <= os.time(t) and popNow == true) then
        -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
        if (LandKingSystem_NQ == 0) then
            DeterMob(Behemoth, true);
        end

        DeterMob(King_Behemoth, false);
        UpdateNMSpawnPoint(King_Behemoth);
        GetMobByID(King_Behemoth):setRespawnTime(math.random(21600,32400));
    else
        if (LandKingSystem_NQ ~= 1) then
            UpdateNMSpawnPoint(Behemoth);
            mob:setRespawnTime(math.random(21600,32400));
            SetServerVariable("[PH]King_Behemoth", kills + 1);
        end
    end
end;