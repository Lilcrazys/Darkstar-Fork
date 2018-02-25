-----------------------------------
--
-- Zone: Castle_Oztroja (151)
--
-----------------------------------
package.loaded["scripts/zones/Castle_Oztroja/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Castle_Oztroja/TextIDs");
require("scripts/zones/Castle_Oztroja/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/quests");
require("scripts/globals/zone");
require("scripts/zones/Castle_Oztroja/TextIDs");
require("scripts/globals/msg");
-----------------------------------

function onInitialize(zone)
    zone:registerRegion(1,-78,10,-39,0,0,0); -- PLD AF2 "A boy's dream"(Spawns Odontotyrannus if the player has the item "giant shell bug".

    -- Yagudo Avatar
    UpdateNMSpawnPoint(YAGUDO_AVATAR);
    GetMobByID(YAGUDO_AVATAR):setRespawnTime(math.random(900, 10800));

    Oz_handleSet = math.random(0,8);
    Oz_passwordSet = math.random(0,8);

    UpdateTreasureSpawnPoint(OZTROJA_TREASURE_CHEST);
    UpdateTreasureSpawnPoint(OZTROJA_TREASURE_COFFER);
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-162.895,22.136,-139.923,2);
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

function onRegionEnter(player,region)
    switch (region:GetRegionID()): caseof
    {
        [1] = function (x)  -- PLD AF2 "A boy's dream".
        if (player:getQuestStatus(SANDORIA, A_BOY_S_DREAM) == QUEST_ACCEPTED) then
            if (player:hasItem(17001) == true and player:hasItem(4562) == false) then
                player:SpoofMsg("The Giant Shell Bug you posses brings a fiend out of the water!. ", nil, chatType.ECHO, nil);
                SpawnMob(17396141):updateEnmity(player);
            end
        end
    end,
    }
end;

function onGameHour(zone)
    local VanadielHour = VanadielHour();
    if (VanadielHour % 24 == 0) then -- Change handles and passwords every game day
        Oz_handleSet = math.random(0,8);
        Oz_passwordSet = math.random(0,8);
        for i,v in pairs(OZ_HANDLE_TABLE[Oz_handleSet]) do
            GetNPCByID(i):setAnimation(v);
        end
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;