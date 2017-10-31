-----------------------------------
-- Area: Ranguemont Pass
--  NM:  Taisaijin
-----------------------------------

require("scripts/zones/Ranguemont_Pass/MobIDs");
require("scripts/globals/titles");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(BYEBYE_TAISAI);
    if (isKiller == true) then
        if (math.random(1,100) <= 85) then
            player:addTreasure(4717, mob); -- Refresh
        else
            player:addTreasure(4850, mob); -- Refresh II
        end
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    --[[
    local phIndex = mob:getLocalVar("phIndex");
    local ph = GetMobByID(TAISAIJIN_PH[phIndex]);

    -- allow current placeholder to respawn
    DisallowRespawn(mob:getID(), true);
    DisallowRespawn(ph:getID(), false);
    ph:setRespawnTime(GetMobRespawnTime(ph:getID()));
    
    -- pick next placeholder
    phIndex = (phIndex % 3) + 1;
    ph = GetMobByID(TAISAIJIN_PH[phIndex]);
    ph:setLocalVar("timeToGrow", os.time() + math.random(86400,259200)); -- 1 to 3 days
    ph:setLocalVar("phIndex",phIndex);
    ]]

    local Taisaijin_PH = GetServerVariable("Taisaijin[PH]");
    SetServerVariable("Taisaijin[POP]", os.time() + math.random(900, 2700));
    SetServerVariable("Taisaijin[PH]", 0);
    DeterMob(mob:getID(), true);
    DeterMob(Taisaijin_PH, false);
end;
