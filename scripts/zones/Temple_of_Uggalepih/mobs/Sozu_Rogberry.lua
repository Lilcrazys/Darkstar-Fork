-----------------------------------
-- Area: Temple of Uggalepih
--  NM:  Sozu Rogberry
-----------------------------------
mixins = {require("scripts/mixins/families/tonberry")}
require("scripts/zones/Temple_of_Uggalepih/MobIDs");
require("scripts/globals/settings");


function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_ATT,150);
    mob:addMod(MOD_EVA,-150);
    mob:addMod(MOD_TRIPLE_ATTACK,15);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(3287,4748,100);
        SetDropRate(3287,4761,0);
        SetDropRate(3287,4863,0);
        SetDropRate(3287,5078,0);
        SetDropRate(3287,5479,0);
    elseif (RND1 == 2) then
        SetDropRate(3287,4748,0);
        SetDropRate(3287,4761,100);
        SetDropRate(3287,4863,0);
        SetDropRate(3287,5078,0);
        SetDropRate(3287,5479,0);
    elseif (RND1 == 3) then
        SetDropRate(3287,4748,0);
        SetDropRate(3287,4761,0);
        SetDropRate(3287,4863,100);
        SetDropRate(3287,5078,0);
        SetDropRate(3287,5479,0);
    elseif (RND1 == 4) then
        SetDropRate(3287,4748,0);
        SetDropRate(3287,4761,0);
        SetDropRate(3287,4863,0);
        SetDropRate(3287,5078,100);
        SetDropRate(3287,5479,0);
    elseif (RND1 == 5) then
        SetDropRate(3287,4748,0);
        SetDropRate(3287,4761,0);
        SetDropRate(3287,4863,0);
        SetDropRate(3287,5078,0);
        SetDropRate(3287,5479,100);
    end

end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    GetNPCByID(SOZU_ROGBERRY_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end;