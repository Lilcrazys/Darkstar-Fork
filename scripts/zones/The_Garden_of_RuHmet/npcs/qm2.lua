-----------------------------------
-- Area: The_Garden_of_RuHmet
--  NPC: ??? (Ix'aern (Dark Knight) Spawn)
-- Allows players to spawn the Ix'aern (Dark Knight) by checking ??? only after killing the required mobs in the same room as the ???.
-- !pos -240 5.00 440 35
-- !pos -280 5.00 240 35
-- !pos -560 5.00 239 35
-- !pos -600 5.00 440 35
-----------------------------------
package.loaded["scripts/zones/The_Garden_of_RuHmet/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/zones/The_Garden_of_RuHmet/TextIDs");
require("scripts/zones/The_Garden_of_RuHmet/MobIDs");
-----------------------------------

function onTrade(player,npc,trade)
    -- The IDs are variablized in MobIDs.lua
    --[[ seems to be fixed in dsp now, leaving this here commented out in case it is ever needed again
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
    ]]
end;

function onTrigger(player,npc)
    local hatedPlayer = npc:getLocalVar("hatedPlayer");
    local isInTime = npc:getLocalVar("hateTimer") > os.time();

    if (hatedPlayer ~= 0 and not isInTime) then
        -- player took too long, so reset animosity
        npc:setLocalVar("hatedPlayer",0);
        npc:setLocalVar("hateTimer",0);
        player:messageSpecial(UNKNOWN_PRESENCE);

    elseif (hatedPlayer == 0) then
        -- nobody has animosity
        player:messageSpecial(UNKNOWN_PRESENCE);

    elseif (hatedPlayer ~= player:getID()) then
        -- someone else has animosity
        player:messageSpecial(NONE_HOSTILE);

    elseif (hatedPlayer == player:getID()) then
        -- this player has animosity
        -- hide the QM, set its position to a random location, and reset animosity
        npc:setStatus(STATUS_DISAPPEAR);
        local qm2position = math.random(1,4);
        npc:setLocalVar("position",qm2position);
        npc:setPos(Ix_Aern_DRK_QM_POS[qm2position][1], Ix_Aern_DRK_QM_POS[qm2position][2], Ix_Aern_DRK_QM_POS[qm2position][3]);
        npc:setLocalVar("hatedPlayer",0);
        npc:setLocalVar("hateTimer",0);

        -- spawn Ix'Aern DRK and its two minions
        player:messageSpecial(MENACING_CREATURES);
        GetMobByID(IxAernDRK):setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); -- Change MobSpawn to Players pos.
        SpawnMob(IxAernDRK):updateClaim(player);
        GetMobByID(QnAernA):setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); -- Change MobSpawn to Players pos.
        SpawnMob(QnAernA):updateClaim(player);
        GetMobByID(QnAernB):setSpawn(player:getXPos(),player:getYPos(),player:getZPos()); -- Change MobSpawn to Players pos.
        SpawnMob(QnAernB):updateClaim(player);

    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
