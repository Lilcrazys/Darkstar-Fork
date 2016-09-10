-----------------------------------
-- Area: Tavnazian_Safehold
--  NPC: Relic Reforge Moogle
--
-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tavnazian_Safehold/TextIDs";
require("scripts/globals/missions";

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- Relic Armor 109 Trials
    local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS;
    local Chains_clear = player:hasCompletedMission(COP,GARDEN_OF_ANTIQUITY;
    local itemID;

    if (Zilart_clear == false or Chains_clear == false) then
        player:PrintToPlayer("Not so fast.. CoP and ZM Clears are required before beginning these trials!");
    else
        -- WAR
        if (trade:confirmItem(2812,20) and trade:confirmItem(10650,1)) then     -- Head
            itemID == 26624;
        elseif (trade:confirmItem(2815,25) and trade:confirmItem(10670,1)) then -- Body
            itemID == 26800;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(10690,1)) then -- Hands
            itemID == 26976;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10710,1)) then -- Legs
            itemID == 27152;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(10730,1)) then -- Feet
            itemID == 27328;

        -- MNK
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10651,1)) then -- Head
            itemID == 26626;
        elseif (trade:confirmItem(2821,25) and trade:confirmItem(10671,1)) then -- Body
            itemID == 26802;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(10691,1)) then -- Hands
            itemID == 26978;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10711,1)) then -- Legs
            itemID == 27154;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(10731,1)) then -- Feet
            itemID == 27330;

        -- WHM
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10652,1)) then -- Head
            itemID == 26628;
        elseif (trade:confirmItem(2816,25) and trade:confirmItem(10672,1)) then -- Body
            itemID == 26804;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(10692,1)) then -- Hands
            itemID == 26980;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(10712,1)) then -- Legs
            itemID == 27156;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(10732,1)) then -- Feet
            itemID == 27332;

        -- RDM
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10654,1)) then -- Head
            itemID == 26632;
        elseif (trade:confirmItem(2819,25) and trade:confirmItem(10674,1)) then -- Body
            itemID == 26808;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10694,1)) then -- Hands
            itemID == 26984;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(10714,1)) then -- Legs
            itemID == 27160;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(10734,1)) then -- Feet
            itemID == 27336;

        -- THF
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10655,1)) then -- Head
            itemID == 26634;
        elseif (trade:confirmItem(2811,25) and trade:confirmItem(10675,1)) then -- Body
            itemID == 26810;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10695,1)) then -- Hands
            itemID == 26986;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(10715,1)) then -- Legs
            itemID == 27162;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(10735,1)) then -- Feet
            itemID == 27338;

        -- BLM
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(10653,1)) then -- Head
            itemID == 26630;
        elseif (trade:confirmItem(2814,25) and trade:confirmItem(10673,1)) then -- Body
            itemID == 26806;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10693,1)) then -- Hands
            itemID == 26982;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(10713,1)) then -- Legs
            itemID == 27158;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10733,1)) then -- Feet
            itemID == 27334;

        -- PLD
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(10656,1)) then -- Head
            itemID == 26636;
        elseif (trade:confirmItem(2818,25) and trade:confirmItem(10676,1)) then -- Body
            itemID == 26812;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10696,1)) then -- Hands
            itemID == 26988;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(10716,1)) then -- Legs
            itemID == 27164;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10736,1)) then -- Feet
            itemID == 27340;

        -- DRK
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(10657,1)) then -- Head
            itemID == 26638;
        elseif (trade:confirmItem(2812,25) and trade:confirmItem(10677,1)) then -- Body
            itemID == 26814;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(10697,1)) then -- Hands
            itemID == 26990;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(10717,1)) then -- Legs
            itemID == 27166;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10737,1)) then -- Feet
            itemID == 27342;

        -- BST
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(10658,1)) then -- Head
            itemID == 26640;
        elseif (trade:confirmItem(2820,25) and trade:confirmItem(10678,1)) then -- Body
            itemID == 26816;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(10698,1)) then -- Hands
            itemID == 26992;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(10718,1)) then -- Legs
            itemID == 27168;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10738,1)) then -- Feet
            itemID == 27344;

        -- BRD
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(10659,1)) then -- Head
            itemID == 26642;
        elseif (trade:confirmItem(2822,25) and trade:confirmItem(10679,1)) then -- Body
            itemID == 26818;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(10699,1)) then -- Hands
            itemID == 26994;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(10719,1)) then -- Legs
            itemID == 27170;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(10739,1)) then -- Feet
            itemID == 27346;

        -- RNG
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(10660,1)) then -- Head
            itemID == 26644;
        elseif (trade:confirmItem(2813,25) and trade:confirmItem(10680,1)) then -- Body
            itemID == 26820;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(10700,1)) then -- Hands
            itemID == 26996;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10720,1)) then -- Legs
            itemID == 27172;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(10740,1)) then -- Feet
            itemID == 27348;

        -- SAM
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(10661,1)) then -- Head
            itemID == 26646;
        elseif (trade:confirmItem(2817,25) and trade:confirmItem(10681,1)) then -- Body
            itemID == 26822;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(10701,1)) then -- Hands
            itemID == 26998;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10721,1)) then -- Legs
            itemID == 27174;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(10741,1)) then -- Feet
            itemID == 27350;

        -- NIN
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(10662,1)) then -- Head
            itemID == 26648;
        elseif (trade:confirmItem(2815,25) and trade:confirmItem(10682,1)) then -- Body
            itemID == 26824;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(10702,1)) then -- Hands
            itemID == 27000;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10722,1)) then -- Legs
            itemID == 27176;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(10742,1)) then -- Feet
            itemID == 27352;

        -- DRG
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10663,1)) then -- Head
            itemID == 26650;
        elseif (trade:confirmItem(2821,25) and trade:confirmItem(10683,1)) then -- Body
            itemID == 26826;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(10703,1)) then -- Hands
            itemID == 27002;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10723,1)) then -- Legs
            itemID == 27178;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(10743,1)) then -- Feet
            itemID == 27354;

        -- SMN
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10664,1)) then -- Head
            itemID == 26652;
        elseif (trade:confirmItem(2816,25) and trade:confirmItem(10684,1)) then -- Body
            itemID == 26828;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(10704,1)) then -- Hands
            itemID == 27004;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(10724,1)) then -- Legs
            itemID == 27180;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(10744,1)) then -- Feet
            itemID == 27356;

        -- BLU
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10665,1)) then -- Head
            itemID == 26654;
        elseif (trade:confirmItem(2819,25) and trade:confirmItem(10685,1)) then -- Body
            itemID == 26830;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10705,1)) then -- Hands
            itemID == 27006;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(10725,1)) then -- Legs
            itemID == 27182;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(10745,1)) then -- Feet
            itemID == 27358;

        -- COR
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10666,1)) then -- Head
            itemID == 26656;
        elseif (trade:confirmItem(2811,25) and trade:confirmItem(10686,1)) then -- Body
            itemID == 26832;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10706,1)) then -- Hands
            itemID == 27008;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(10726,1)) then -- Legs
            itemID == 27184;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(10746,1)) then -- Feet
            itemID == 27360;

        -- DNC
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(10668,1)) then -- Head
            itemID == 26660;
        elseif (trade:confirmItem(2814,25) and trade:confirmItem(10688,1)) then -- Body
            itemID == 26836;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(10708,1)) then -- Hands
            itemID == 27012;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(10728,1)) then -- Legs
            itemID == 27188;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(10748,1)) then -- Feet
            itemID == 27364;

        -- SCH
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(10669,1)) then -- Head
            itemID == 26662;
        elseif (trade:confirmItem(2818,25) and trade:confirmItem(10689,1)) then -- Body
            itemID == 26838;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(10709,1)) then -- Hands
            itemID == 27014;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(10729,1)) then -- Legs
            itemID == 27190;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(10749,1)) then -- Feet
            itemID == 27366;
        end

        if (itemID ~= nil)
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,itemID);
            else
                player:addItem(itemID);
                player:confirmTrade();
                player:messageSpecial(ITEM_OBTAINED,itemID);
            end
        else
            print(string.format("Player %s triggered nil trade result in NPC %s %d ! \n", player:getName(), npc:getName(), npc:getID()));
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofChatPlayer( (string.format( "Hello %s!, I'm here to help you reforge your Relic Armor", player:getName() )), MESSAGE_SAY, npc:getID() );
end;
