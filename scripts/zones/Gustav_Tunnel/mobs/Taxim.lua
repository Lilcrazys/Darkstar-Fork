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
-- onMobDeath	
-----------------------------------	
	
function onMobDeath(mob,killer,ally))	
  
    -- Set Taxim's Window Open Time
    SetServerVariable("[POP]Taxim", os.time(t) + 7200); -- 2 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Taxim");
    SetServerVariable("[PH]Taxim", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;