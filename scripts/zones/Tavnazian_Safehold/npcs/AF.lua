-----------------------------------
-- Area: Tavnazian_Safehold
-- NPC: AF Reforege Moogle
--
-----------------------------------
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/missions");
require("scripts/zones/Tavnazian_Safehold/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

    -------------------------------AF 109 Trials----------------------------------------------------
function onTrade(player,npc,trade)

    -- local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS);
    -- local Chains_clear = player:hasCompletedMission(COP,DAWN);

    -- if (Zilart_clear == false or Chains_clear == false) then
        -- player:PrintToPlayer( "Not so fast... CoP and ZM Clears are required before beginning these trials!" );
        -- return
    -- end

           ------------------WAR-------------------------------------
    if  (trade:hasItemQty(2812,20) and trade:hasItemQty(15225,1) and trade:getItemCount() == 21) then        --head 2812
        player:addItem(27663);
        player:messageSpecial(ITEM_OBTAINED,27663);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(14473,1) and trade:getItemCount() == 26) then         --body 2815
        player:addItem(27807);
        player:messageSpecial(ITEM_OBTAINED,27807);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(14890,1) and trade:getItemCount() == 21) then        --hands 2814
        player:addItem(27943);
        player:messageSpecial(ITEM_OBTAINED,27943);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15561,1) and trade:getItemCount() == 21) then        --legs 2813
        player:addItem(28090);
        player:messageSpecial(ITEM_OBTAINED,28090);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15352,1) and trade:getItemCount() == 21) then        --feet 2819
        player:addItem(28223);
        player:messageSpecial(ITEM_OBTAINED,28223);
        player:tradeComplete();
          ----------------------------MNK-------------------------------------
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15226,1) and trade:getItemCount() == 21) then        --head 2820
        player:addItem(27664);
        player:messageSpecial(ITEM_OBTAINED,27664);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(14474,1) and trade:getItemCount() == 26) then        --body 2821
        player:addItem(27808);
        player:messageSpecial(ITEM_OBTAINED,27808);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(14891,1) and trade:getItemCount() == 21) then         --hands 2818
        player:addItem(27944);
        player:messageSpecial(ITEM_OBTAINED,27944);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15562,1) and trade:getItemCount() == 21) then          --legs 2817
        player:addItem(28091);
        player:messageSpecial(ITEM_OBTAINED,28091);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15353,1) and trade:getItemCount() == 21) then           --feet 2811
        player:addItem(28224);
        player:messageSpecial(ITEM_OBTAINED,28224);
        player:tradeComplete();
          ----------------------------WHM-------------------------------------
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15227,1) and trade:getItemCount() == 21) then           --head 2822
        player:addItem(27665);
        player:messageSpecial(ITEM_OBTAINED,27665);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(14475,1) and trade:getItemCount() == 26) then            --body 2816
        player:addItem(27809);
        player:messageSpecial(ITEM_OBTAINED,27809);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(14892,1) and trade:getItemCount() == 21) then          --hands 2812
        player:addItem(27945);
        player:messageSpecial(ITEM_OBTAINED,27945);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15563,1) and trade:getItemCount() == 21) then            --legs 2815
        player:addItem(28092);
        player:messageSpecial(ITEM_OBTAINED,28092);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15354,1) and trade:getItemCount() == 21) then             --feet 2814
        player:addItem(28225);
        player:messageSpecial(ITEM_OBTAINED,28225);
        player:tradeComplete();
          ----------------------------RDM-------------------------------------
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15229,1) and trade:getItemCount() == 21) then             --head 2813
        player:addItem(27667);
        player:messageSpecial(ITEM_OBTAINED,27667);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(14477,1) and trade:getItemCount() == 26) then              --body 2819
        player:addItem(27811);
        player:messageSpecial(ITEM_OBTAINED,27811);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(14894,1) and trade:getItemCount() == 21) then              --hands 2820
        player:addItem(27947);
        player:messageSpecial(ITEM_OBTAINED,27947);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(15565,1) and trade:getItemCount() == 21) then               --legs 2821
        player:addItem(28094);
        player:messageSpecial(ITEM_OBTAINED,28094);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(15356,1) and trade:getItemCount() == 21) then               --feet 2818
        player:addItem(27336);
        player:messageSpecial(ITEM_OBTAINED,27336);
        player:tradeComplete();
    ----------------------------THF-------------------------------------
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15230,1) and trade:getItemCount() == 21) then                -- head 2817
        player:addItem(27668);
        player:messageSpecial(ITEM_OBTAINED,27668);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(14478,1) and trade:getItemCount() == 26) then              -- body 2811
        player:addItem(27812);
        player:messageSpecial(ITEM_OBTAINED,27812);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(14895,1) and trade:getItemCount() == 21) then                 --hands 2822
        player:addItem(27948);
        player:messageSpecial(ITEM_OBTAINED,27948);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(15566,1) and trade:getItemCount() == 21) then                   --legs
        player:addItem(28095);
        player:messageSpecial(ITEM_OBTAINED,28095);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(15357,1) and trade:getItemCount() == 21) then                   --feet
        player:addItem(28228);
        player:messageSpecial(ITEM_OBTAINED,28228);
        player:tradeComplete();
      -------------------------BLM-------------------------------------
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15228,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27666);
        player:messageSpecial(ITEM_OBTAINED,27666);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(14476,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27810);
        player:messageSpecial(ITEM_OBTAINED,27810);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(14893,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27946);
        player:messageSpecial(ITEM_OBTAINED,27946);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15564,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28093);
        player:messageSpecial(ITEM_OBTAINED,28093);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15355,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28226);
        player:messageSpecial(ITEM_OBTAINED,28226);
        player:tradeComplete();
          --------------------------PLD-------------------------------------
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(15231,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27669);
        player:messageSpecial(ITEM_OBTAINED,27669);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(14479,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27813);
        player:messageSpecial(ITEM_OBTAINED,27813);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(14896,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27949);
        player:messageSpecial(ITEM_OBTAINED,27949);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15567,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28096);
        player:messageSpecial(ITEM_OBTAINED,28096);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15358,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28229);
        player:messageSpecial(ITEM_OBTAINED,28229);
        player:tradeComplete();
      ----------------------DRK-------------------------------------
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(15232,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27670);
        player:messageSpecial(ITEM_OBTAINED,27670);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,25) and trade:hasItemQty(14480,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27814);
        player:messageSpecial(ITEM_OBTAINED,27814);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(14897,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27950);
        player:messageSpecial(ITEM_OBTAINED,27950);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15568,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28097);
        player:messageSpecial(ITEM_OBTAINED,28097);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15359,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28230);
        player:messageSpecial(ITEM_OBTAINED,28230);
        player:tradeComplete();
          ----------------------------BST-------------------------------------
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15233,1) and trade:getItemCount() == 21) then                    --head
        player:addItem(27671);
        player:messageSpecial(ITEM_OBTAINED,27671);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,25) and trade:hasItemQty(14481,1) and trade:getItemCount() == 26) then                    --body
        player:addItem(27815);
        player:messageSpecial(ITEM_OBTAINED,27815);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(14898,1) and trade:getItemCount() == 21) then                    --hands
        player:addItem(27951);
        player:messageSpecial(ITEM_OBTAINED,27951);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(15569,1) and trade:getItemCount() == 21) then                    --legs
        player:addItem(28098);
        player:messageSpecial(ITEM_OBTAINED,28098);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15360,1) and trade:getItemCount() == 21) then                    --feet
        player:addItem(28231);
        player:messageSpecial(ITEM_OBTAINED,28231);
        player:tradeComplete();
          ----------------------------BRD-------------------------------------
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15234,1) and trade:getItemCount() == 21) then                    --head
        player:addItem(27672);
        player:messageSpecial(ITEM_OBTAINED,27672);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,25) and trade:hasItemQty(14482,1) and trade:getItemCount() == 26) then                    --body
        player:addItem(27816);
        player:messageSpecial(ITEM_OBTAINED,27816);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(14899,1) and trade:getItemCount() == 21) then                    --hands
        player:addItem(27952);
        player:messageSpecial(ITEM_OBTAINED,27952);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(15570,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28099);
        player:messageSpecial(ITEM_OBTAINED,28099);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15361,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28232);
        player:messageSpecial(ITEM_OBTAINED,28232);
        player:tradeComplete();
           ----------------------------RNG-------------------------------------
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15335,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27673);
        player:messageSpecial(ITEM_OBTAINED,27673);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,25) and trade:hasItemQty(14483,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27817);
        player:messageSpecial(ITEM_OBTAINED,27817);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(14900,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27953);
        player:messageSpecial(ITEM_OBTAINED,27953);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15571,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28100);
        player:messageSpecial(ITEM_OBTAINED,28100);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(15362,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28233);
        player:messageSpecial(ITEM_OBTAINED,28233);
        player:tradeComplete();
          ----------------------------SAM-------------------------------------
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(15336,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27674);
        player:messageSpecial(ITEM_OBTAINED,27674);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,25) and trade:hasItemQty(14484,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27818);
        player:messageSpecial(ITEM_OBTAINED,27818);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(14901,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27954);
        player:messageSpecial(ITEM_OBTAINED,27954);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15572,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28101);
        player:messageSpecial(ITEM_OBTAINED,28101);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(15363,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28234);
        player:messageSpecial(ITEM_OBTAINED,28234);
        player:tradeComplete();
          ----------------------------NIN-------------------------------------
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(15337,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27675);
        player:messageSpecial(ITEM_OBTAINED,27675);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(14485,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27819);
        player:messageSpecial(ITEM_OBTAINED,27819);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(14902,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27955);
        player:messageSpecial(ITEM_OBTAINED,27955);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15573,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28102);
        player:messageSpecial(ITEM_OBTAINED,28102);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(15364,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28235);
        player:messageSpecial(ITEM_OBTAINED,28235);
        player:tradeComplete();
           ----------------------------DRG-------------------------------------
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15338,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27676);
        player:messageSpecial(ITEM_OBTAINED,27676);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(14486,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27820);
        player:messageSpecial(ITEM_OBTAINED,27820);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(14903,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27956);
        player:messageSpecial(ITEM_OBTAINED,27956);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15574,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(28103);
        player:messageSpecial(ITEM_OBTAINED,28103);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(15365,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28236);
        player:messageSpecial(ITEM_OBTAINED,28236);
        player:tradeComplete();
           ----------------------------SMN-------------------------------------
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15339,1) and trade:getItemCount() == 21) then                --head
        player:addItem(27677);
        player:messageSpecial(ITEM_OBTAINED,27677);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(14487,1) and trade:getItemCount() == 26) then                --body
        player:addItem(27821);
        player:messageSpecial(ITEM_OBTAINED,27821);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(14904,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27957);
        player:messageSpecial(ITEM_OBTAINED,27957);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(15575,1) and trade:getItemCount() == 21) then                 --legs
        player:addItem(28104);
        player:messageSpecial(ITEM_OBTAINED,28104);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(15366,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(28237);
        player:messageSpecial(ITEM_OBTAINED,28237);
        player:tradeComplete();
          ----------------------------BLU-------------------------------------
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(11464,1) and trade:getItemCount() == 21) then            --head
        player:addItem(27678);
        player:messageSpecial(ITEM_OBTAINED,27678);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(11291,1) and trade:getItemCount() == 26) then            --body
        player:addItem(27822);
        player:messageSpecial(ITEM_OBTAINED,27822);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(15024,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27958);
        player:messageSpecial(ITEM_OBTAINED,27958);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(16345,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(28105);
        player:messageSpecial(ITEM_OBTAINED,28105);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(11381,1) and trade:getItemCount() == 21) then            --feet
        player:addItem(28238);
        player:messageSpecial(ITEM_OBTAINED,28238);
        player:tradeComplete();
           ----------------------------COR-------------------------------------
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(11467,1) and trade:getItemCount() == 21) then            --head
        player:addItem(27679);
        player:messageSpecial(ITEM_OBTAINED,27679);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(11294,1) and trade:getItemCount() == 26) then            --body
        player:addItem(27823);
        player:messageSpecial(ITEM_OBTAINED,27823);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(15027,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27959);
        player:messageSpecial(ITEM_OBTAINED,27959);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(16348,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(28106);
        player:messageSpecial(ITEM_OBTAINED,28106);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(11384,1) and trade:getItemCount() == 21) then            --feet
        player:addItem(28239);
        player:messageSpecial(ITEM_OBTAINED,28239);
        player:tradeComplete();
          ----------------------------DNC-------------------------------------
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(11476,1) and trade:getItemCount() == 21) then            --head
        player:addItem(27681);
        player:messageSpecial(ITEM_OBTAINED,27681);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(11303,1) and trade:getItemCount() == 26) then            --body
        player:addItem(27825);
        player:messageSpecial(ITEM_OBTAINED,27825);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(15036,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27961);
        player:messageSpecial(ITEM_OBTAINED,27961);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(16358,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(28108);
        player:messageSpecial(ITEM_OBTAINED,28108);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(11394,1) and trade:getItemCount() == 21) then            --feet
        player:addItem(28241);
        player:messageSpecial(ITEM_OBTAINED,28241);
        player:tradeComplete();
           ----------------------------SCH-------------------------------------
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(11477,1) and trade:getItemCount() == 21) then            --head
        player:addItem(27683);
        player:messageSpecial(ITEM_OBTAINED,27683);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(11304,1) and trade:getItemCount() == 26) then            --body
        player:addItem(27827);
        player:messageSpecial(ITEM_OBTAINED,27827);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(15037,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27963);
        player:messageSpecial(ITEM_OBTAINED,27963);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(16359,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(28110);
        player:messageSpecial(ITEM_OBTAINED,28110);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(11395,1) and trade:getItemCount() == 21) then             --feet
        player:addItem(28243);
        player:messageSpecial(ITEM_OBTAINED,28243);
        player:tradeComplete();
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofChatPlayer( (string.format( "Hello %s!, I'm here to help you reforge your Artifact Armor", player:getName() )), MESSAGE_SAY, npc:getID() );
end;