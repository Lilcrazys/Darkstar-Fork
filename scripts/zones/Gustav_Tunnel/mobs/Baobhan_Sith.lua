----------------------------------
-- Area: Gustav Tunnel
--   NM: Baobhan Sith
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_MATT,20);
    mob:addMod(MOD_MACC,400);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(241,4781,100);
        SetDropRate(241,5501,0);
        SetDropRate(241,5502,0);
        SetDropRate(241,6060,0);
        SetDropRate(241,5078,0);
    elseif (RND1 == 2) then
        SetDropRate(241,4781,0);
        SetDropRate(241,5501,100);
        SetDropRate(241,5502,0);
        SetDropRate(241,6060,0);
        SetDropRate(241,5078,0);
    elseif (RND1 == 3) then
        SetDropRate(241,4781,0);
        SetDropRate(241,5501,0);
        SetDropRate(241,5502,100);
        SetDropRate(241,6060,0);
        SetDropRate(241,5078,0);
    elseif (RND1 == 4) then
        SetDropRate(241,4781,0);
        SetDropRate(241,5501,0);
        SetDropRate(241,5502,0);
        SetDropRate(241,6060,100);
        SetDropRate(241,5078,0);
    elseif (RND1 == 5) then
        SetDropRate(241,4781,0);
        SetDropRate(241,5501,0);
        SetDropRate(241,5502,0);
        SetDropRate(241,6060,0);
        SetDropRate(241,5078,100);
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

    -- Set Baobhan Sith's Window Open Time
    local wait = math.random(4,8) * 3600;
    SetServerVariable("[POP]Baobhan_Sith", os.time() + wait); -- 4-8 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Baobhan_Sith");
    SetServerVariable("[PH]Baobhan_Sith", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;