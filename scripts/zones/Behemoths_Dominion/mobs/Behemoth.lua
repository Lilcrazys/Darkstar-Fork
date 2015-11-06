-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: Behemoth
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(BEHEMOTHS_BANE);

    -- Set server var for custom @command to check ToD
    SetServerVariable("Our_Behemoth_ToD", os.time());

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 2);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local Behemoth      = mob:getID();
    local King_Behemoth = 17297441;
    local ToD     = GetServerVariable("[POP]King_Behemoth");
    local kills   = GetServerVariable("[PH]King_Behemoth");
    if (LandKingSystem_HQ == 0 or LandKingSystem_HQ == 2) then
        if (ToD <= os.time(t) and GetMobAction(King_Behemoth) == 0) then
            if (math.random((1),(5)) == 3 or kills > 6) then
                DeterMob(Behemoth, true);
                DeterMob(King_Behemoth, false);
                UpdateNMSpawnPoint(King_Behemoth);
                GetMobByID(King_Behemoth):setRespawnTime(math.random((21600),(32400)));
            elseif (LandKingSystem_NQ == 0 or LandKingSystem_NQ == 2) then
                UpdateNMSpawnPoint(Behemoth);
                mob:setRespawnTime(math.random((21600),(32400)));
                SetServerVariable("[PH]King_Behemoth", kills + 1);
            end
        end
    elseif (LandKingSystem_NQ == 0 or LandKingSystem_NQ == 2) then
        UpdateNMSpawnPoint(Behemoth);
        mob:setRespawnTime(math.random((21600),(32400)));
        SetServerVariable("[PH]King_Behemoth", kills + 1);
    end
end;