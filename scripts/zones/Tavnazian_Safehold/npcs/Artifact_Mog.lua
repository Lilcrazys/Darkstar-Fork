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
        if (trade:confirmItem(2812,20) and trade:confirmItem(15225,1)) then     -- head
            itemID == 27663;
        elseif (trade:confirmItem(2815,25) and trade:confirmItem(14473,1)) then -- body
            itemID == 27807;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(14890,1)) then -- hands
            itemID == 27943;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(15561,1)) then -- legs
            itemID == 28090;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(15352,1)) then -- legs
            itemID == 28223;

        -- MNK
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(15226,1)) then -- head
            itemID == 27664;
        elseif (trade:confirmItem(2821,25) and trade:confirmItem(14474,1)) then -- body
            itemID == 27808;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(14891,1)) then -- hands
            itemID == 27944;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(15562,1)) then -- legs
            itemID == 28091;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(15353,1)) then -- legs
            itemID == 28224;

        -- WHM
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(15227,1)) then -- head 2822
            itemID == 27665;
        elseif (trade:confirmItem(2816,25) and trade:confirmItem(14475,1)) then -- body 2816
            itemID == 27809;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(14892,1)) then -- hands 2812
            itemID == 27945;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(15563,1)) then -- legs 2815
            itemID == 28092;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(15354,1)) then -- legs 2814
            itemID == 28225;

        -- RDM
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(15229,1)) then -- head 2813
            itemID == 27667;
        elseif (trade:confirmItem(2819,25) and trade:confirmItem(14477,1)) then -- body 2819
            itemID == 27811;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(14894,1)) then -- hands 2820
            itemID == 27947;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(15565,1)) then -- legs 2821
            itemID == 28094;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(15356,1)) then -- legs 2818
            itemID == 27336;

        -- THF
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(15230,1)) then -- head 2817
            itemID == 27668;
        elseif (trade:confirmItem(2811,25) and trade:confirmItem(14478,1)) then -- body 2811
            itemID == 27812;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(14895,1)) then -- hands 2822
            itemID == 27948;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(15566,1)) then -- legs
            itemID == 28095;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(15357,1)) then -- legs
            itemID == 28228;

        -- BLM
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(15228,1)) then -- head
            itemID == 27666;
        elseif (trade:confirmItem(2814,25) and trade:confirmItem(14476,1)) then -- body
            itemID == 27810;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(14893,1)) then -- hands
            itemID == 27946;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(15564,1)) then -- legs
            itemID == 28093;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(15355,1)) then -- legs
            itemID == 28226;

        -- PLD
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(15231,1)) then -- head
            itemID == 27669;
        elseif (trade:confirmItem(2818,25) and trade:confirmItem(14479,1)) then -- body
            itemID == 27813;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(14896,1)) then -- hands
            itemID == 27949;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(15567,1)) then -- legs
            itemID == 28096;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(15358,1)) then -- feet
            itemID == 28229;

        -- DRK
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(15232,1)) then -- head
            itemID == 27670;
        elseif (trade:confirmItem(2812,25) and trade:confirmItem(14480,1)) then -- body
            itemID == 27814;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(14897,1)) then -- hands
            itemID == 27950;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(15568,1)) then -- legs
            itemID == 28097;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(15359,1)) then -- feet
            itemID == 28230;

        -- BST
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(15233,1)) then -- head
            itemID == 27671;
        elseif (trade:confirmItem(2820,25) and trade:confirmItem(14481,1)) then -- body
            itemID == 27815;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(14898,1)) then -- hands
            itemID == 27951;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(15569,1)) then -- legs
            itemID == 28098;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(15360,1)) then -- feet
            itemID == 28231;

        -- BRD
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(15234,1)) then -- head
            itemID == 27672;
        elseif (trade:confirmItem(2822,25) and trade:confirmItem(14482,1)) then -- body
            itemID == 27816;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(14899,1)) then -- hands
            itemID == 27952;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(15570,1)) then -- legs
            itemID == 28099;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(15361,1)) then -- feet
            itemID == 28232;

        -- RNG
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(15235,1)) then -- head
            itemID == 27673;
        elseif (trade:confirmItem(2813,25) and trade:confirmItem(14483,1)) then -- body
            itemID == 27817;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(14900,1)) then -- hands
            itemID == 27953;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(15571,1)) then -- legs
            itemID == 28100;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(15362,1)) then -- feet
            itemID == 28233;

        -- SAM
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(15236,1)) then -- head
            itemID == 27674;
        elseif (trade:confirmItem(2817,25) and trade:confirmItem(14484,1)) then -- body
            itemID == 27818;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(14901,1)) then -- hands
            itemID == 27954;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(15572,1)) then -- legs
            itemID == 28101;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(15363,1)) then -- feet
            itemID == 28234;

        -- NIN
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(15237,1)) then -- head
            itemID == 27675;
        elseif (trade:confirmItem(2815,25) and trade:confirmItem(14485,1)) then -- body
            itemID == 27819;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(14902,1)) then -- hands
            itemID == 27955;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(15573,1)) then -- legs
            itemID == 28102;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(15364,1)) then -- feet
            itemID == 28235;

        -- DRG
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(15238,1)) then -- head
            itemID == 27676;
        elseif (trade:confirmItem(2821,25) and trade:confirmItem(14486,1)) then -- body
            itemID == 27820;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(14903,1)) then -- hands
            itemID == 27956;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(15574,1)) then -- legs
            itemID == 28103;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(15365,1)) then -- feet
            itemID == 28236;

        -- SMN
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(15239,1)) then -- head
            itemID == 27677;
        elseif (trade:confirmItem(2816,25) and trade:confirmItem(14487,1)) then -- body
            itemID == 27821;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(14904,1)) then -- hands
            itemID == 27957;
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(15575,1)) then -- legs
            itemID == 28104;
        elseif (trade:confirmItem(2814,20) and trade:confirmItem(15366,1)) then -- feet
            itemID == 28237;

        -- BLU
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(11464,1)) then -- head
            itemID == 27678;
        elseif (trade:confirmItem(2819,25) and trade:confirmItem(11291,1)) then -- body
            itemID == 27822;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(15024,1)) then -- hands
            itemID == 27958;
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(16345,1)) then -- legs
            itemID == 28105;
        elseif (trade:confirmItem(2818,20) and trade:confirmItem(11381,1)) then -- feet
            itemID == 28238;

        -- COR
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(11467,1)) then -- head
            itemID == 27679;
        elseif (trade:confirmItem(2811,25) and trade:confirmItem(11294,1)) then -- body
            itemID == 27823;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(15027,1)) then -- hands
            itemID == 27959;
        elseif (trade:confirmItem(2816,20) and trade:confirmItem(16348,1)) then -- legs
            itemID == 28106;
        elseif (trade:confirmItem(2812,20) and trade:confirmItem(11384,1)) then -- feet
            itemID == 28239;

        -- DNC FEMALE
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(11476,1)) then -- head
            itemID == 27682;
        elseif (trade:confirmItem(2814,25) and trade:confirmItem(11303,1)) then -- body
            itemID == 27826;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(15036,1)) then -- hands
            itemID == 27962;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(16358,1)) then -- legs
            itemID == 28109;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(11394,1)) then -- feet
            itemID == 28242;

        -- DNC MALE
        elseif (trade:confirmItem(2815,20) and trade:confirmItem(11475,1)) then -- head
            itemID == 27681;
        elseif (trade:confirmItem(2814,25) and trade:confirmItem(11302,1)) then -- body
            itemID == 27825;
        elseif (trade:confirmItem(2813,20) and trade:confirmItem(15035,1)) then -- hands
            itemID == 27961;
        elseif (trade:confirmItem(2819,20) and trade:confirmItem(16357,1)) then -- legs
            itemID == 28108;
        elseif (trade:confirmItem(2820,20) and trade:confirmItem(11393,1)) then -- feet
            itemID == 28241;

        -- SCH
        elseif (trade:confirmItem(2821,20) and trade:confirmItem(11477,1)) then -- head
            itemID == 27683);
        elseif (trade:confirmItem(2818,25) and trade:confirmItem(11304,1)) then -- body
            itemID == 27827;
        elseif (trade:confirmItem(2817,20) and trade:confirmItem(15037,1)) then -- hands
            itemID == 27963;
        elseif (trade:confirmItem(2811,20) and trade:confirmItem(16359,1)) then -- legs
            itemID == 28110;
        elseif (trade:confirmItem(2822,20) and trade:confirmItem(11395,1)) then -- feet
            itemID == 28243;
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

-- -------
-- onTrigger Action
-- -------

function onTrigger(player,npc)
    player:SpoofChatPlayer( (string.format( "Hello %s!, I'm here to help you reforge your Artifact Armor", player:getName() )), MESSAGE_SAY, npc:getID() );
end;
