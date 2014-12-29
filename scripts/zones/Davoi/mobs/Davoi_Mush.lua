-----------------------------------
-- Area: Davoi
--  NM:  Davoi Mush
-----------------------------------

require("scripts/globals/settings");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    -- Didn't bother with a cooldown timer, with low % pop rate and 12 min repops,
    -- the odds of seeing multiples in a short time are mega slim.
    if (mob:getID() == 17387919) then
        if (math.random(0,99) > 15) then -- Guesstimated 15% chance of pop.
            local BlubberyBulge = 17387920;
            UpdateNMSpawnPoint(BlubberyBulge);
            GetMobByID(BlubberyBulge):setRespawnTime(GetMobRespawnTime(mob));
            SetServerVariable("[PH]Blubbery_Bulge", mob);
            DeterMob(mob, true);
        end
    end
end;