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
            player:SpoofMsg("Now we bind your soul to this piece of ju..I mean fine crafted restoration! ", npc, chatType.SAY, nil);
            player:unlockJob(22); -- Add RUN to player job list.
            player:addTitle(RUNIC_ENGRAVER);
            player:completeQuest(ADOULIN,CHILDREN_OF_THE_RUNE);
            player:addItem(20781,1); -- sowilo-claymore
            player:injectActionPacket(6, 205, 0, 0, 0);
            player:SpoofMsg("..All done, kupo! You don't have the full strength of a Rune Fencer yet, but its a start! ", npc, chatType.SAY, nil);
        else
            player:SpoofMsg("Sorry but I can't do anything with this, kupo.. ", npc, chatType.SAY, nil);
        end
    else
    -- End of RUN quest stuff
    -------------------------
        player:SpoofMsg("Sorry but I'm still in training, kupo.. ", npc, chatType.SAY, nil);
        player:SpoofMsg("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", npc, chatType.SAY, nil);
    end
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofMsg("I'm Magian Mog A.J. kupo! I'm in training to someday handle Empyrean weapon trials. ", npc, chatType.SAY, nil);
    ---------------------------------------------------
    --[[ Temp put RUN quest here since we have no Adoulin
    if (player:getQuestStatus(ADOULIN,CHILDREN_OF_THE_RUNE) == QUEST_AVAILABLE) then
        player:SpoofMsg("I've been temporarily authorized to empower adventurers with RUNIC MAGIC kupo! ", npc, chatType.SAY, nil);
        player:SpoofMsg("First we need a Rusty Greatsword and a Bottle of Illuminink. The blade has to be old for the magic to work.", npc, chatType.SAY, nil);
        player:SpoofMsg("But don't worry, it won't be rusty when we're done. ", npc, chatType.SAY, nil);
    elseif (player:getQuestStatus(ADOULIN,CHILDREN_OF_THE_RUNE) == QUEST_ACCEPTED) then
        player:SpoofMsg("we need a Rusty Greatsword and a Bottle of Illuminink, kupo. ", npc, chatType.SAY, nil);
    else
    ]]-- End of RUN quest stuff
    -------------------------
        player:SpoofMsg("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", npc, chatType.SAY, nil);
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
