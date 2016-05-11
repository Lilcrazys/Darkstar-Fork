-----------------------------------
-- Area: Fei'Yin
--  NM:  Northern Shadow
-----------------------------------
require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    -- Set Northern Shadow's ToD
    SetServerVariable("[POP]Northern_Shadow", os.time(t) + 57600); -- 16 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Northern_Shadow");
    SetServerVariable("[PH]Northern_Shadow", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

    local CHANCE = 40;  
    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(699) == false) then
        ally:addSpell(699);
    end
end;
