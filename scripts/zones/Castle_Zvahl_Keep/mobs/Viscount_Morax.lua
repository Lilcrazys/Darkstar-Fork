-----------------------------------
-- Area: Castle Zvahl Keep (162)
--  MOB: Viscount_Morax
-----------------------------------
require("scripts/globals/titles");


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

function onMobDeath(mob, player, isKiller)
    player:addTitle(HELLSBANE);
end;

function onMobDespawn(mob)
end;
