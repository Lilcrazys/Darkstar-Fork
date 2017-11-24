----------------------------------
-- Area: Labyrinth of Onzozo
--   NM: Lord of Onzozo
-----------------------------------
require("scripts/globals/groundsofvalor");
require("scripts/zones/Labyrinth_of_Onzozo/MobIDs");
require("scripts/globals/status");

function onMobSpawn(mob)
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_REGAIN,33);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

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

function onMobDespawn(mob)

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Set LoO's Window Open Time
    local wait = math.random(18000,28800);
    SetServerVariable("[POP]Lord_of_Onzozo", os.time() + wait); -- 5-8 Hours
    DisallowRespawn(mob:getID(), true);

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
