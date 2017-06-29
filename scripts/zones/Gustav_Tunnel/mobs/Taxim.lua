----------------------------------
-- Area: Gustav Tunnel
--   NM: Taxim
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_MATT,40);
    mob:addMod(MOD_MACC,400);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(3441,4748,100);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 2) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,100);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 3) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,100);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 4) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,100);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 5) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,100);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Taxim's Window Open Time
    SetServerVariable("[POP]Taxim", os.time() + 7200); -- 2 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Taxim");
    SetServerVariable("[PH]Taxim", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;