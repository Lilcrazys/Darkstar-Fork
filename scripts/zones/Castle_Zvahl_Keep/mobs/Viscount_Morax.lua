-----------------------------------
-- Area:
--  MOB: Viscount_Morax
-----------------------------------
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(4019,4776,100); 
        SetDropRate(4019,5105,0);
        SetDropRate(4019,4705,0);
        SetDropRate(4019,5499,0);
        SetDropRate(4019,6059,0);
    elseif (RND1 == 2) then
        SetDropRate(4019,4776,0);
        SetDropRate(4019,5105,100);
        SetDropRate(4019,4705,0); 
        SetDropRate(4019,5499,0); 
        SetDropRate(4019,6059,0); 
    elseif (RND1 == 3) then
        SetDropRate(4019,4776,0); 
        SetDropRate(4019,5105,0); 
        SetDropRate(4019,4705,100); 
        SetDropRate(4019,5499,0); 
        SetDropRate(4019,6059,0); 
    elseif (RND1 == 4) then
        SetDropRate(4019,4776,0); 
        SetDropRate(4019,5105,0); 
        SetDropRate(4019,4705,0); 
        SetDropRate(4019,5499,100); 
        SetDropRate(4019,6059,0); 
    elseif (RND1 == 5) then
        SetDropRate(4019,4776,0); 
        SetDropRate(4019,5105,0); 
        SetDropRate(4019,4705,0); 
        SetDropRate(4019,5499,0); 
        SetDropRate(4019,6059,100);   
    end    

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(HELLSBANE);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Viscount_Morax's Window Open Time
    local wait = math.random((3600),(28800));
    SetServerVariable("[POP]Viscount_Morax", os.time() + wait); -- 1-8 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Viscount_Morax");
    SetServerVariable("[PH]Viscount_Morax", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
