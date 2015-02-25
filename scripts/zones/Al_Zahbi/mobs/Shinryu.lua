




require("scripts/globals/weather");
require("scripts/globals/settings");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Set respawn time (9-12 hours)
    mob:setRespawnTime(math.random((32400),(43200)));

end;


-----------------------------------
-- OnMobRoam
-----------------------------------

function onMobRoam(mob)

	mob:addHP( 250000 );
end;


-----------------------------------
-- OnMobDisengage
-----------------------------------

function onMobDisengage(mob)

	mob:addHP( 250000 );
end;
