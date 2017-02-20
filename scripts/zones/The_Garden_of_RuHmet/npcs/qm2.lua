-----------------------------------
-- Area: The_Garden_of_RuHmet
-- NPC:  ??? (Ix'aern (Dark Knight) Spawn)
-- Allows players to spawn the Ix'aern (Dark Knight) by checking ??? only after killing the required mobs in the same room as the ???.
-- @pos -560 5 239
-----------------------------------
package.loaded["scripts/zones/The_Garden_of_RuHmet/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/The_Garden_of_RuHmet/TextIDs");
require("scripts/zones/The_Garden_of_RuHmet/MobIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- The IDs are variablized in MobIDs.lua
    local ActionMobA = GetMobAction(IxAernDRK);
    local ActionMobB = GetMobAction(QnAernA);
    local ActionMobC = GetMobAction(QnAernB);
    if (ActionMobA == ACTION_NONE and ActionMobB == ACTION_NONE and ActionMobC == ACTION_NONE) then
        -- 4 full stacks of Aern Organs. KEEP IT A MULTIPLE OF 12
        if (trade:hasItemQty(1786, 48) and trade:getItemCount() == 48) then
            local RND = 0;
            if (math.random(0,1) == 1) then
                RND = 1;
            else
                RND = -1;
            end
            local X = player:getXPos()+RND;
            local Y = player:getYPos();
            local Z = player:getZPos()+RND;
            GetMobByID(IxAernDRK):setSpawn(X,Y,Z);
            GetMobByID(QnAernA):setSpawn(X,Y,Z);
            GetMobByID(QnAernB):setSpawn(X,Y,Z);
            SpawnMob(IxAernDRK,180):updateClaim(player);
            SpawnMob(QnAernA,180):updateEnmity(player);
            SpawnMob(QnAernB,180):updateEnmity(player);

            player:tradeComplete();
        end
    else
        player:PrintToPlayer("Cannot spawn mob - are you sure it isn't already up?");
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    Kills = GetServerVariable("[PH]Ix_aern_drk");
        --print(Kills)
    moba = GetMobByID(16921018);
    mobb = GetMobByID(16921019);
    mobc = GetMobByID(16921020);
    if (Kills == 0) then 
        player:messageSpecial(UNKNOWN_PRESENCE);
    elseif (Kills == 1) then
        player:messageSpecial(NONE_HOSTILE);
    elseif (Kills == 2) then
        player:messageSpecial(NONE_HOSTILE);--(SHEER_ANIMOSITY);
    elseif (Kills == 3) then 
        moba:setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); -- Change MobSpawn to Players pos.
        SpawnMob(16921018):updateClaim(player);
        mobb:setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); -- Change MobSpawn to Players pos.
        SpawnMob(16921019):updateClaim(player);
        mobc:setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); -- Change MobSpawn to Players pos.
        SpawnMob(16921020):updateClaim(player);
        GetNPCByID(16921028):hideNPC(900);
        --[[ we do this in the mob script instead
        if (math.random(0,1) == 1) then -- random do select which item do drop. Will select one item 100% of the time.
            SetDropRate(4397,1854,000);
        else
            SetDropRate(4397,1902,000);
        end
        ]]
    end

end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("onUpdate CSID: %u",csid);
--printf("onUpdate RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--printf("onFinish CSID: %u",csid);
--printf("onFinish RESULT: %u",option);
end;
