-----------------------------------
-- Area: Tavnazian_Safehold
--  NPC: AF Reforge Moogle
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
    -- Artifact Armor 109 Trials
    local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS);
    local Chains_clear = player:hasCompletedMission(COP,GARDEN_OF_ANTIQUITY);
    local itemID;

    if (Zilart_clear == false or Chains_clear == false) then
        player:PrintToPlayer("Not so fast.. CoP and ZM Clears are required before beginning these trials!");
    else
        -- WAR
        if (trade:hasItemQty(2812,20) and trade:hasItemQty(15225,1) and trade:getItemCount() == 21) then     -- head
            itemID = 27663;
        elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(14473,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27807;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(14890,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27943;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15561,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28090;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15352,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28223;

        -- MNK
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15226,1) and trade:getItemCount() == 21) then -- head
            itemID = 27664;
        elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(14474,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27808;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(14891,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27944;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15562,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28091;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15353,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28224;

        -- WHM
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15227,1) and trade:getItemCount() == 21) then -- head 2822
            itemID = 27665;
        elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(14475,1) and trade:getItemCount() == 26) then -- Body 2816
            itemID = 27809;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(14892,1) and trade:getItemCount() == 21) then -- hands 2812
            itemID = 27945;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15563,1) and trade:getItemCount() == 21) then -- legs 2815
            itemID = 28092;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15354,1) and trade:getItemCount() == 21) then -- legs 2814
            itemID = 28225;

        -- RDM
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15229,1) and trade:getItemCount() == 21) then -- head 2813
            itemID = 27667;
        elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(14477,1) and trade:getItemCount() == 26) then -- Body 2819
            itemID = 27811;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(14894,1) and trade:getItemCount() == 21) then -- hands 2820
            itemID = 27947;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(15565,1) and trade:getItemCount() == 21) then -- legs 2821
            itemID = 28094;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(15356,1) and trade:getItemCount() == 21) then -- legs 2818
            itemID = 28227;

        -- THF
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15230,1) and trade:getItemCount() == 21) then -- head 2817
            itemID = 27668;
        elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(14478,1) and trade:getItemCount() == 26) then -- Body 2811
            itemID = 27812;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(14895,1) and trade:getItemCount() == 21) then -- hands 2822
            itemID = 27948;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(15566,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28095;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(15357,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28228;

        -- BLM
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15228,1) and trade:getItemCount() == 21) then -- head
            itemID = 27666;
        elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(14476,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27810;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(14893,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27946;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15564,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28093;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15355,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28226;

        -- PLD
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(15231,1) and trade:getItemCount() == 21) then -- head
            itemID = 27669;
        elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(14479,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27813;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(14896,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27949;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15567,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28096;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15358,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28229;

        -- DRK
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(15232,1) and trade:getItemCount() == 21) then -- head
            itemID = 27670;
        elseif (trade:hasItemQty(2812,25) and trade:hasItemQty(14480,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27814;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(14897,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27950;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15568,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28097;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15359,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28230;

        -- BST
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15233,1) and trade:getItemCount() == 21) then -- head
            itemID = 27671;
        elseif (trade:hasItemQty(2820,25) and trade:hasItemQty(14481,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27815;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(14898,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27951;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(15569,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28098;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15360,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28231;

        -- BRD
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15234,1) and trade:getItemCount() == 21) then -- head
            itemID = 27672;
        elseif (trade:hasItemQty(2822,25) and trade:hasItemQty(14482,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27816;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(14899,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27952;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(15570,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28099;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15361,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28232;

        -- RNG
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15235,1) and trade:getItemCount() == 21) then -- head
            itemID = 27673;
        elseif (trade:hasItemQty(2813,25) and trade:hasItemQty(14483,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27817;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(14900,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27953;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15571,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28100;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(15362,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28233;

        -- SAM
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(15236,1) and trade:getItemCount() == 21) then -- head
            itemID = 27674;
        elseif (trade:hasItemQty(2817,25) and trade:hasItemQty(14484,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27818;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(14901,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27954;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15572,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28101;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(15363,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28234;

        -- NIN
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(15237,1) and trade:getItemCount() == 21) then -- head
            itemID = 27675;
        elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(14485,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27819;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(14902,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27955;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15573,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28102;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15364,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28235;

        -- DRG
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15238,1) and trade:getItemCount() == 21) then -- head
            itemID = 27676;
        elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(14486,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27820;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(14903,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27956;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15574,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28103;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15365,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28236;

        -- SMN
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15239,1) and trade:getItemCount() == 21) then -- head
            itemID = 27677;
        elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(14487,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27821;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(14904,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27957;
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15575,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28104;
        elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15366,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28237;

        -- BLU
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(11464,1) and trade:getItemCount() == 21) then -- head
            itemID = 27678;
        elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(11291,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27822;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15024,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27958;
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(16345,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28105;
        elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(11381,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28238;

        -- COR
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(11467,1) and trade:getItemCount() == 21) then -- head
            itemID = 27679;
        elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(11294,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27823;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15027,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27959;
        elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(16348,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28106;
        elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(11384,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28239;

        -- DNC FEMALE
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(11476,1) and trade:getItemCount() == 21) then -- head
            itemID = 27682;
        elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(11303,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27826;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15036,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27962;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(16358,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28109;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(11394,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28242;

        -- DNC MALE
        elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(11475,1) and trade:getItemCount() == 21) then -- head
            itemID = 27681;
        elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(11302,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27825;
        elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15035,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27961;
        elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(16357,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28108;
        elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(11393,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28241;

        -- SCH
        elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(11477,1) and trade:getItemCount() == 21) then -- head
            itemID = 27683;
        elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(11304,1) and trade:getItemCount() == 26) then -- Body
            itemID = 27827;
        elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15037,1) and trade:getItemCount() == 21) then -- hands
            itemID = 27963;
        elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(16359,1) and trade:getItemCount() == 21) then -- legs
            itemID = 28110;
        elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(11395,1) and trade:getItemCount() == 21) then -- feet
            itemID = 28243;
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

-- -------
-- onTrigger Action
-- -------

function onTrigger(player,npc)
    player:SpoofMsg((string.format( "Hello %s!, I'm here to help you reforge your Artifact Armor", player:getName() )), npc, MESSAGE_SAY, nil);
end;
