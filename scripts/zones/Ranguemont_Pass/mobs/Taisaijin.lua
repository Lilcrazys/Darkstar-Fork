-----------------------------------
-- Area: Ranguemont Pass
--  NM:  Taisaijin
-----------------------------------

require("scripts/globals/titles");
local MobIDs = require("scripts/zones/Ranguemont_Pass/MobIDs");

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
    local ph = GetServerVariable("Taisaijin_PH");

    -- time to spawn
    local tts = os.time() + math.random(86400, 259200);
    SetServerVariable("Taisaijin_TTS", tts);

    -- reset ph and nm
    SetServerVariable("Taisaijin_PH", 0);
    DisallowRespawn(ph, false);

    DisallowRespawn(MobIDs.Taisaijin, true);
    SpawnMob(ph, "", GetMobRespawnTime(ph));
    ]]

    local Taisaijin_PH = GetServerVariable("Taisaijin[PH]");
    SetServerVariable("Taisaijin[POP]", os.time() + math.random(900, 2700));
    SetServerVariable("Taisaijin[PH]", 0);
    DeterMob(mob:getID(), true);
    DeterMob(Taisaijin_PH, false);
end;
