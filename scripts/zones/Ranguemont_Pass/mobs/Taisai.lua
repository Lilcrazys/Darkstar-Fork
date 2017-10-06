-----------------------------------
-- Area: Ranguemont Pass
-- MOB:  Taisai
-----------------------------------

require("scripts/globals/status");
local MobIDs = require("scripts/zones/Ranguemont_Pass/MobIDs");

function onMobRoam(mob)

    --[[
    local tts = GetServerVariable("Taisaijin_TTS");
    if (tts > 0 and tts <= os.time() and GetMobAction(MobIDs.Taisaijin) == ACTION_NONE) then
        -- choose a new PH
        local Taisaijin_PH_Array = {};
        local numPHs = 0;
        for k,v in pairs(MobIDs.Taisaijin_PH) do
            numPHs = numPHs + 1;
            table.insert(Taisaijin_PH_Array, k);
        end
        local idx = math.random(1, numPHs);
        local ph = Taisaijin_PH_Array[idx];
        -- print("New jin ph: " .. ph); -- debug
        SetServerVariable("Taisaijin_PH", ph);

        -- despawn ph, spawn nm
        DisallowRespawn(ph, true);
        DespawnMob(ph);
        DisallowRespawn(MobIDs.Taisaijin, false);
        SpawnMob(MobIDs.Taisaijin);

        -- reset
        -- print("Resetting jin tts"); -- debug
        SetServerVariable("Taisaijin_TTS", 0);
    end
    ]]

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    --[[
    if (MobIDs.Taisaijin_PH[mob:getID()] and GetServerVariable("Taisaijin_PH") > 0) then
        -- time to spawn
        local tts = os.time() + math.random(86400, 259200);
        SetServerVariable("Taisaijin_TTS", tts);
    end
    ]]

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
                DeterMob(Taisai, true);
                DeterMob(Taisaijin, false);
                UpdateNMSpawnPoint(Taisaijin);
                GetMobByID(Taisaijin):setRespawnTime(300);
                SetServerVariable("Taisaijin[PH]", Taisai);
            end
        end
    end
end;
