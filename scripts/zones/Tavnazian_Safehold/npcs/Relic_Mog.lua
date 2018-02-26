-----------------------------------
-- Area: Tavnazian_Safehold
--  NPC: Relic Reforge Moogle
--
-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tavnazian_Safehold/TextIDs");
require("scripts/globals/missions");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- Relic Armor 109 Trials
    local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS);
    local Chains_clear = player:hasCompletedMission(COP,GARDEN_OF_ANTIQUITY);
    local itemID;

    if (Zilart_clear == false or Chains_clear == false) then
        player:PrintToPlayer("Not so fast.. CoP and ZM Clears are required before beginning these trials!");
    else
        -- WAR
        if (trade:hasItemQty(2812,20) and trade:hasItemQty(10650,1) and trade:getItemCount() == 21) then     -- Head
            itemID = 26624;
        elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(10670,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26800;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10690,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26976;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10710,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27152;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10730,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27328;

        -- MNK
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10651,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26626;
        elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(10671,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26802;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10691,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26978;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10711,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27154;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10731,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27330;

        -- WHM
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10652,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26628;
        elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(10672,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26804;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10692,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26980;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10712,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27156;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10732,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27332;

        -- RDM
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10654,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26632;
        elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(10674,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26808;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10694,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26984;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10714,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27160;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10734,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27336;

        -- THF
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10655,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26634;
        elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(10675,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26810;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10695,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26986;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10715,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27162;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10735,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27338;

        -- BLM
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10653,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26630;
        elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(10673,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26806;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10693,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26982;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10713,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27158;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10733,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27334;

        -- PLD
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10656,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26636;
        elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(10676,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26812;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10696,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26988;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10716,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27164;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10736,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27340;

        -- DRK
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10657,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26638;
        elseif (trade:hasItemQty(2812,25) and trade:hasItemQty(10677,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26814;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10697,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26990;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10717,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27166;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10737,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27342;

        -- BST
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10658,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26640;
        elseif (trade:hasItemQty(2820,25) and trade:hasItemQty(10678,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26816;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10698,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26992;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10718,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27168;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10738,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27344;

        -- BRD
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10659,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26642;
        elseif (trade:hasItemQty(2822,25) and trade:hasItemQty(10679,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26818;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10699,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26994;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10719,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27170;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10739,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27346;

        -- RNG
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10660,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26644;
        elseif (trade:hasItemQty(2813,25) and trade:hasItemQty(10680,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26820;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10700,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26996;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10720,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27172;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10740,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27348;

        -- SAM
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10661,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26646;
        elseif (trade:hasItemQty(2817,25) and trade:hasItemQty(10681,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26822;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10701,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 26998;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10721,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27174;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10741,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27350;

        -- NIN
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10662,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26648;
        elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(10682,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26824;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10702,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27000;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10722,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27176;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10742,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27352;

        -- DRG
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10663,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26650;
        elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(10683,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26826;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10703,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27002;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10723,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27178;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10743,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27354;

        -- SMN
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10664,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26652;
        elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(10684,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26828;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10704,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27004;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10724,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27180;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10744,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27356;

        -- BLU
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10665,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26654;
        elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(10685,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26830;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10705,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27006;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10725,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27182;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10745,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27358;

        -- COR
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10666,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26656;
        elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(10686,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26832;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10706,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27008;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10726,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27184;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10746,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27360;

        -- DNC
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10668,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26660;
        elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(10688,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26836;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10708,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27012;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10728,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27188;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10748,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27364;

        -- SCH
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10669,1) and trade:getItemCount() == 21) then -- Head
            itemID = 26662;
        elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(10689,1) and trade:getItemCount() == 26) then -- Body
            itemID = 26838;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10709,1) and trade:getItemCount() == 21) then -- Hands
            itemID = 27014;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10729,1) and trade:getItemCount() == 21) then -- Legs
            itemID = 27190;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10749,1) and trade:getItemCount() == 21) then -- Feet
            itemID = 27366;
        end

        if (itemID ~= nil) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,itemID);
            else
                player:addItem(itemID);
                player:tradeComplete();
                player:messageSpecial(ITEM_OBTAINED,itemID);
            end
        else
            print(string.format("Player %s triggered nil trade result in NPC %d %s ! \n", player:getName(), npc:getID(), npc:getName()));
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:PrintToPlayer((string.format( "Hello %s!, I'm here to help you reforge your Relic Armor", player:getName() )), chatType.SAY, npc:getName());
end;
