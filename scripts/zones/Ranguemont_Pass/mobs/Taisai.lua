-----------------------------------
-- Area: Ranguemont Pass
--  MOB: Taisai
-----------------------------------
require("scripts/zones/Ranguemont_Pass/MobIDs");

function disturbMob(mob)
    local phIndex = mob:getLocalVar("phIndex");
    if (phIndex > 0) then
        mob:setLocalVar("timeToGrow", os.time() + math.random(86400,259200)); -- 1 to 3 days
    end
end

function onMobSpawn(mob)
    --[[
    disturbMob(mob);
    ]
end;

function onMobEngaged(mob, target)
    --[[
    disturbMob(mob);
    ]]
end;

function onMobFight(mob, target)
    --[[
    disturbMob(mob);
    ]]
end;

function onMobRoam(mob)
    --[[
    -- if PH hasn't been disturbed, spawn NM
    local phIndex = mob:getLocalVar("phIndex");
    if (phIndex > 0 and os.time() > mob:getLocalVar("timeToGrow")) then
        mob:setLocalVar("phIndex", 0);
        local nm = GetMobByID(TAISAIJIN);
        DisallowRespawn(mob:getID(), true);
        DespawnMob(mob:getID());
        DisallowRespawn(nm:getID(), false);
        SpawnMob(nm:getID());
        nm:setLocalVar("phIndex", phIndex);
    end
    ]]
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    local Taisai = mob:getID();
    local Taisaijin = 17457216;
    local Taisaijin_PH_Table =
    {
        [17457213] = '1',
        [17457214] = '1',
        [17457215] = '1'
    };
    if (Taisaijin_PH_Table[Taisai] ~= nil) then
        local Taisaijin_ToD = GetServerVariable("Taisaijin[POP]");
        if (Taisaijin_ToD <= os.time(t) and GetMobAction(Taisaijin) == 0) then
            if (math.random(1,15) == 5) then
                DisallowRespawn(Taisai, true);
                DisallowRespawn(Taisaijin, false);
                UpdateNMSpawnPoint(Taisaijin);
                GetMobByID(Taisaijin):setRespawnTime(300);
                SetServerVariable("Taisaijin[PH]", Taisai);
            end
        end
    end
end;
