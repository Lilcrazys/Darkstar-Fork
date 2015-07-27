-----------------------------------
-- Area: Rolanberry Fields (110)
--  NPC: Legion Moogle
-- Type: Legion +1 Helper
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Rolanberry_Fields/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local PRIZE = 0;
    -------------------------------Legion Gear +1---------------------------------------------------

    if (player:getCurrency("legion_point") >= 2500) then
        ----------------------------Gorney +1 -------------------------------------
        if (trade:hasItemQty(3925, 25) and trade:hasItemQty(27761,1) and trade:getItemCount() == 26) then -- head
            PRIZE = 27711
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(27907,1) and trade:getItemCount() == 26) then -- body
            PRIZE = 27863
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28046,1) and trade:getItemCount() == 26) then -- hands
            PRIZE = 28010
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28188,1) and trade:getItemCount() == 26) then -- legs
            PRIZE = 28152
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28327,1) and trade:getItemCount() == 26) then -- feet
            PRIZE = 28289
        -------------------------Shneddick +1-------------------------------------
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(27762,1) and trade:getItemCount() == 26) then -- head
            PRIZE = 27712
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(27908,1) and trade:getItemCount() == 26) then -- body
            PRIZE = 27864
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28047,1) and trade:getItemCount() == 26) then -- hands
            PRIZE = 28011
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28189,1) and trade:getItemCount() == 26) then -- legs
            PRIZE = 28153
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28328,1) and trade:getItemCount() == 26) then -- feet
            PRIZE = 28290
        ----------------------------Weatherspoon +1------------------------------------
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(27763,1) and trade:getItemCount() == 26) then -- head
            PRIZE = 27713
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(27909,1) and trade:getItemCount() == 26) then -- body
            PRIZE = 27865
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28048,1) and trade:getItemCount() == 26) then -- hands
            PRIZE = 28012
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28190,1) and trade:getItemCount() == 26) then -- legs
            PRIZE = 28154
        elseif (trade:hasItemQty(3925, 25) and trade:hasItemQty(28329,1) and trade:getItemCount() == 26) then -- feet
            PRIZE = 28291

        ----------------------------Karieyh-------------------------------------
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(27785,1) and trade:getItemCount() == 11) then -- head
            PRIZE = 27752
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(27925,1) and trade:getItemCount() == 11) then -- body
            PRIZE = 27895
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28065,1) and trade:getItemCount() == 11) then -- hands
            PRIZE = 28042
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28205,1) and trade:getItemCount() == 11) then -- legs
            PRIZE = 28182
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28345,1) and trade:getItemCount() == 11) then -- feet
            PRIZE = 28320
        -------------------------Thurandaunts-------------------------------------
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(27784,1) and trade:getItemCount() == 11) then -- head
            PRIZE = 27753
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(27924,1) and trade:getItemCount() == 11) then -- body
            PRIZE = 27896
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28064,1) and trade:getItemCount() == 11) then -- hands
            PRIZE = 28043
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28204,1) and trade:getItemCount() == 11) then -- legs
            PRIZE = 28183
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28344,1) and trade:getItemCount() == 11) then -- feet
            PRIZE = 28321
        ----------------------------Orvail------------------------------------
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(27782,1) and trade:getItemCount() == 11) then -- head
            PRIZE = 27754
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(27922,1) and trade:getItemCount() == 11) then -- body
            PRIZE = 27897
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28061,1) and trade:getItemCount() == 11) then -- hands
            PRIZE = 28044
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28203,1) and trade:getItemCount() == 11) then -- legs
            PRIZE = 28184
        elseif (trade:hasItemQty(3925, 10) and trade:hasItemQty(28342,1) and trade:getItemCount() == 11) then -- feet
            PRIZE = 28322
        end

        if (PRIZE > 0) then
            if (player:getFreeSlotsCount() >= 1) then
                player:delCurrency("legion_point", 2500);
                player:messageSpecial(ITEM_OBTAINED, PRIZE);
                player:tradeComplete();
                player:addItem(PRIZE, 1);
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, PRIZE);
            end
        end
    else
        player:PrintToPlayer( "You do not have enough legion points for the upgrade!" );
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local MSG1 = string.format("Hello %s! I'm here to help you upgrade your Legion Armor.", player:getName());
    local MSG2 = "This service will cost Legion points and Tanzanite Jewels, Kupo!";
    player:SpoofChatPlayer(MSG1, MESSAGE_SAY, npc:getID());
    player:SpoofChatPlayer(MSG2, MESSAGE_SAY, npc:getID());
end;