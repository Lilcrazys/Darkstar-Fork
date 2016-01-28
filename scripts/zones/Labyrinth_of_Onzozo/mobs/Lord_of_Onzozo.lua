----------------------------------
-- Area: Labyrinth of Onzozo
--   NM: Lord of Onzozo
-----------------------------------

require("scripts/zones/Labyrinth_of_Onzozo/MobIDs");
require("scripts/globals/status");

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_REGAIN,33);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------
function onMobFight(mob,target)
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)

    checkGoVregime(ally,mob,774,1);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------
    
    if (math.random(1,100) <= 3) then
        SetDropRate(2079,18852,1000); -- Ocatave Club
        SetDropRate(2079,17440,0); -- Kraken Club
        SetDropRate(2079,17030,0); -- Great Club
    elseif (math.random(1,100) <= 10) then
        SetDropRate(2079,18852,0); -- Ocatave Club
        SetDropRate(2079,17440,1000); -- Kraken Club
        SetDropRate(2079,17030,0); -- Great Club
    else
        SetDropRate(2079,18852,0); -- Ocatave Club
        SetDropRate(2079,17440,0); -- Kraken Club
        SetDropRate(2079,17030,1000); -- Great Club
    end

    -- Set LoO's Window Open Time
    local wait = math.random(18000,28800);
    SetServerVariable("[POP]Lord_of_Onzozo", os.time(t) + wait); -- 5-8 Hours
    DeterMob(mob:getID(), true);

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------
    
    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Lord_of_Onzozo");
    SetServerVariable("[PH]Lord_of_Onzozo", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;