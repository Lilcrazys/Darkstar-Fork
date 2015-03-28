----------------------------------	
-- Area: Valkurm Dunes	
--   NM: Charybdis
-----------------------------------	
	
-----------------------------------	
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob,killer)	
  
    -- Set Charybdis Window Open Time
    wait = math.random(3600,5800) -- 1-2 hours 
    SetServerVariable("[POP]Charybdis", os.time(t) + wait ); 
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    PH = GetServerVariable("[PH]Charybdis");
    SetServerVariable("[PH]Charybdis", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));
  
end;