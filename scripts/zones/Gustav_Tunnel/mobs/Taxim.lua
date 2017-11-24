----------------------------------
-- Area: Gustav Tunnel
--   NM: Taxim
-----------------------------------

require("scripts/globals/status");

function onMobInitialize(mob)
    mob:addMod(MOD_MATT,40);
    mob:addMod(MOD_MACC,400);
end;

function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(3441,4748,100);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 2) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,100);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 3) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,100);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 4) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,100);
        SetDropRate(3441,6061,0);
    elseif (RND1 == 5) then
        SetDropRate(3441,4748,0);
        SetDropRate(3441,4771,0);
        SetDropRate(3441,5503,0);
        SetDropRate(3441,5504,0);
        SetDropRate(3441,6061,100);
    end
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
end;
