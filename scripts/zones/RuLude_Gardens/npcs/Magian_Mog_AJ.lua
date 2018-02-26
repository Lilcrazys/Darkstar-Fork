-----------------------------------
-- Area: Rulude Gardens
--  NPC: Custom (Empyrean) Magian Moogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/custom_trials");
require("scripts/globals/msg");
require("scripts/globals/quests"); -- Temp for RUN quest
require("scripts/globals/titles"); -- Temp for RUN quest

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local itemID = trade:getItem():getID();
    local itemCount = trade:getItemCount();
    ---------------------------------------------------
    -- Temp put RUN quest here since we have no Adoulin
    if (player:getQuestStatus(ADOULIN,CHILDREN_OF_THE_RUNE) == QUEST_ACCEPTED) then
        -- Check for Illiminink and Rusty Greatsword
        if (trade:hasItemQty(1408,1) and trade:hasItemQty(16606,1) and itemCount == 2) then
            player:PrintToPlayer("Now we bind your soul to this piece of ju..I mean fine crafted restoration! ", chatType.SAY, npc:getName());
            player:unlockJob(22); -- Add RUN to player job list.
            player:addTitle(RUNIC_ENGRAVER);
            player:completeQuest(ADOULIN,CHILDREN_OF_THE_RUNE);
            player:addItem(20781,1); -- sowilo-claymore
            player:injectActionPacket(6, 205, 0, 0, 0);
            player:PrintToPlayer("..All done, kupo! You don't have the full strength of a Rune Fencer yet, but its a start! ", chatType.SAY, npc:getName());
        else
            player:PrintToPlayer("Sorry but I can't do anything with this, kupo.. ", chatType.SAY, npc:getName());
        end
    else
    -- End of RUN quest stuff
    -------------------------
        player:PrintToPlayer("Sorry but I'm still in training, kupo.. ", chatType.SAY, npc:getName());
        player:PrintToPlayer("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", chatType.SAY, npc:getName());
    end
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:PrintToPlayer("I'm Magian Mog A.J. kupo! I'm in training to someday handle Empyrean weapon trials. ", chatType.SAY, npc:getName());
    ---------------------------------------------------
    --[[ Temp put RUN quest here since we have no Adoulin
    if (player:getQuestStatus(ADOULIN,CHILDREN_OF_THE_RUNE) == QUEST_AVAILABLE) then
        player:PrintToPlayer("I've been temporarily authorized to empower adventurers with RUNIC MAGIC kupo! ", chatType.SAY, npc:getName());
        player:PrintToPlayer("First we need a Rusty Greatsword and a Bottle of Illuminink. The blade has to be old for the magic to work.", chatType.SAY, npc:getName());
        player:PrintToPlayer("But don't worry, it won't be rusty when we're done. ", chatType.SAY, npc:getName());
    elseif (player:getQuestStatus(ADOULIN,CHILDREN_OF_THE_RUNE) == QUEST_ACCEPTED) then
        player:PrintToPlayer("we need a Rusty Greatsword and a Bottle of Illuminink, kupo. ", chatType.SAY, npc:getName());
    else
    ]]-- End of RUN quest stuff
    -------------------------
        player:PrintToPlayer("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", chatType.SAY, npc:getName());
    --end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("updateRESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;
