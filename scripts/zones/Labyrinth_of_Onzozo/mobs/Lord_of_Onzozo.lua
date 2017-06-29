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

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,774,1);

    if (isKiller == true) then
        if (math.random(1,100) <= 3) then
            player:addTreasure(18852, mob); -- Ocatave Club
        elseif (math.random(1,100) <= 10) then
            player:addTreasure(17440, mob); -- Kraken Club
        else
            player:addTreasure(17030, mob); -- Great Club
        end
    end

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Set LoO's Window Open Time
    local wait = math.random(18000,28800);
    SetServerVariable("[POP]Lord_of_Onzozo", os.time() + wait); -- 5-8 Hours
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
