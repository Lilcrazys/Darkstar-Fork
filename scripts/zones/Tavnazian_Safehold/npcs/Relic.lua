-----------------------------------
-- Area: Tavnazian_Safehold
-- NPC: Relic Reforege Moogle
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

    -------------------------------Relic 109 Trials----------------------------------------------------
function onTrade(player,npc,trade)

    local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS);
    local Chains_clear = player:hasCompletedMission(COP,DAWN);

    if (Zilart_clear == false or Chains_clear == false) then
        player:PrintToPlayer( "Not so fast... CoP and ZM Clears are required before beginning these trials!" );
        return
    end

           ------------------WAR-------------------------------------
    if  (trade:hasItemQty(2812,20) and trade:hasItemQty(10630,1) and trade:getItemCount() == 21) then        --head 2812
        player:addItem(26624);
        player:messageSpecial(ITEM_OBTAINED,26624);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(10670,1) and trade:getItemCount() == 26) then         --body 2815
        player:addItem(26800);
        player:messageSpecial(ITEM_OBTAINED,26800);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10690,1) and trade:getItemCount() == 21) then        --hands 2814
        player:addItem(26976);
        player:messageSpecial(ITEM_OBTAINED,26976);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10710,1) and trade:getItemCount() == 21) then        --legs 2813
        player:addItem(27152);
        player:messageSpecial(ITEM_OBTAINED,27152);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10730,1) and trade:getItemCount() == 21) then        --feet 2819
        player:addItem(27328);
        player:messageSpecial(ITEM_OBTAINED,27328);
        player:tradeComplete();
          ----------------------------MNK-------------------------------------
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10631,1) and trade:getItemCount() == 21) then        --head 2820
        player:addItem(26626);
        player:messageSpecial(ITEM_OBTAINED,26626);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(10671,1) and trade:getItemCount() == 26) then        --body 2821
        player:addItem(26802);
        player:messageSpecial(ITEM_OBTAINED,26802);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10691,1) and trade:getItemCount() == 21) then         --hands 2818
        player:addItem(26978);
        player:messageSpecial(ITEM_OBTAINED,26978);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10711,1) and trade:getItemCount() == 21) then          --legs 2817
        player:addItem(27154);
        player:messageSpecial(ITEM_OBTAINED,27154);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10731,1) and trade:getItemCount() == 21) then           --feet 2811
        player:addItem(27330);
        player:messageSpecial(ITEM_OBTAINED,27330);
        player:tradeComplete();
          ----------------------------WHM-------------------------------------
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10652,1) and trade:getItemCount() == 21) then           --head 2822
        player:addItem(26628);
        player:messageSpecial(ITEM_OBTAINED,26628);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(10682,1) and trade:getItemCount() == 26) then            --body 2816
        player:addItem(26804);
        player:messageSpecial(ITEM_OBTAINED,26804);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10692,1) and trade:getItemCount() == 21) then          --hands 2812
        player:addItem(26980);
        player:messageSpecial(ITEM_OBTAINED,26980);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10712,1) and trade:getItemCount() == 21) then            --legs 2815
        player:addItem(27156);
        player:messageSpecial(ITEM_OBTAINED,27156);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10732,1) and trade:getItemCount() == 21) then             --feet 2814
        player:addItem(27332);
        player:messageSpecial(ITEM_OBTAINED,27332);
        player:tradeComplete();
          ----------------------------RDM-------------------------------------
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10654,1) and trade:getItemCount() == 21) then             --head 2813
        player:addItem(26632);
        player:messageSpecial(ITEM_OBTAINED,26632);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(10674,1) and trade:getItemCount() == 26) then              --body 2819
        player:addItem(26808);
        player:messageSpecial(ITEM_OBTAINED,26808);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10694,1) and trade:getItemCount() == 21) then              --hands 2820
        player:addItem(26984);
        player:messageSpecial(ITEM_OBTAINED,26984);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10714,1) and trade:getItemCount() == 21) then               --legs 2821
        player:addItem(27160);
        player:messageSpecial(ITEM_OBTAINED,27160);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10734,1) and trade:getItemCount() == 21) then               --feet 2818
        player:addItem(27336);
        player:messageSpecial(ITEM_OBTAINED,27336);
        player:tradeComplete();
    ----------------------------THF-------------------------------------
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10664,1) and trade:getItemCount() == 21) then                -- head 2817
        player:addItem(26634);
        player:messageSpecial(ITEM_OBTAINED,26634);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(10675,1) and trade:getItemCount() == 26) then              -- body 2811
        player:addItem(26810);
        player:messageSpecial(ITEM_OBTAINED,26810);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10695,1) and trade:getItemCount() == 21) then                 --hands 2822
        player:addItem(26986);
        player:messageSpecial(ITEM_OBTAINED,26986);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10715,1) and trade:getItemCount() == 21) then                   --legs
        player:addItem(27162);
        player:messageSpecial(ITEM_OBTAINED,27162);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10735,1) and trade:getItemCount() == 21) then                   --feet
        player:addItem(27338);
        player:messageSpecial(ITEM_OBTAINED,27338);
        player:tradeComplete();
      -------------------------BLM-------------------------------------
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10653,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26630);
        player:messageSpecial(ITEM_OBTAINED,26630);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(10673,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26806);
        player:messageSpecial(ITEM_OBTAINED,26806);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10693,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(26982);
        player:messageSpecial(ITEM_OBTAINED,26982);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10713,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27158);
        player:messageSpecial(ITEM_OBTAINED,27158);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10733,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27334);
        player:messageSpecial(ITEM_OBTAINED,27334);
        player:tradeComplete();
          --------------------------PLD-------------------------------------
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10656,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26636);
        player:messageSpecial(ITEM_OBTAINED,26636);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(10676,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26812);
        player:messageSpecial(ITEM_OBTAINED,26812);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10698,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(26988);
        player:messageSpecial(ITEM_OBTAINED,26988);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10716,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27164);
        player:messageSpecial(ITEM_OBTAINED,27164);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10736,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27340);
        player:messageSpecial(ITEM_OBTAINED,27340);
        player:tradeComplete();
      ----------------------DRK-------------------------------------
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10657,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26638);
        player:messageSpecial(ITEM_OBTAINED,26638);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,25) and trade:hasItemQty(10677,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26814);
        player:messageSpecial(ITEM_OBTAINED,26814);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10697,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(26990);
        player:messageSpecial(ITEM_OBTAINED,26990);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10717,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27166);
        player:messageSpecial(ITEM_OBTAINED,27166);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10737,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27342);
        player:messageSpecial(ITEM_OBTAINED,27342);
        player:tradeComplete();
          ----------------------------BST-------------------------------------
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10658,1) and trade:getItemCount() == 21) then                    --head
        player:addItem(26640);
        player:messageSpecial(ITEM_OBTAINED,26640);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,25) and trade:hasItemQty(10678,1) and trade:getItemCount() == 26) then                    --body
        player:addItem(26816);
        player:messageSpecial(ITEM_OBTAINED,26816);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10698,1) and trade:getItemCount() == 21) then                    --hands
        player:addItem(26992);
        player:messageSpecial(ITEM_OBTAINED,26992);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10718,1) and trade:getItemCount() == 21) then                    --legs
        player:addItem(27168);
        player:messageSpecial(ITEM_OBTAINED,27168);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10738,1) and trade:getItemCount() == 21) then                    --feet
        player:addItem(27344);
        player:messageSpecial(ITEM_OBTAINED,27344);
        player:tradeComplete();
          ----------------------------BRD-------------------------------------
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10659,1) and trade:getItemCount() == 21) then                    --head
        player:addItem(26642);
        player:messageSpecial(ITEM_OBTAINED,26642);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,25) and trade:hasItemQty(10679,1) and trade:getItemCount() == 26) then                    --body
        player:addItem(26818);
        player:messageSpecial(ITEM_OBTAINED,26818);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10699,1) and trade:getItemCount() == 21) then                    --hands
        player:addItem(26994);
        player:messageSpecial(ITEM_OBTAINED,26994);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10719,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27170);
        player:messageSpecial(ITEM_OBTAINED,27170);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10739,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27346);
        player:messageSpecial(ITEM_OBTAINED,27346);
        player:tradeComplete();
           ----------------------------RNG-------------------------------------
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10660,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26644);
        player:messageSpecial(ITEM_OBTAINED,26644);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,25) and trade:hasItemQty(10680,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26820);
        player:messageSpecial(ITEM_OBTAINED,26820);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10700,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(26996);
        player:messageSpecial(ITEM_OBTAINED,26996);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10720,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27172);
        player:messageSpecial(ITEM_OBTAINED,27172);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10740,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27348);
        player:messageSpecial(ITEM_OBTAINED,27348);
        player:tradeComplete();
          ----------------------------SAM-------------------------------------
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10661,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26646);
        player:messageSpecial(ITEM_OBTAINED,26646);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,25) and trade:hasItemQty(10681,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26822);
        player:messageSpecial(ITEM_OBTAINED,26822);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10701,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(26998);
        player:messageSpecial(ITEM_OBTAINED,26998);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10721,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27174);
        player:messageSpecial(ITEM_OBTAINED,27174);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10741,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27350);
        player:messageSpecial(ITEM_OBTAINED,27350);
        player:tradeComplete();
          ----------------------------NIN-------------------------------------
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10662,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26648);
        player:messageSpecial(ITEM_OBTAINED,26648);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,25) and trade:hasItemQty(10682,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26824);
        player:messageSpecial(ITEM_OBTAINED,26824);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10702,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27000);
        player:messageSpecial(ITEM_OBTAINED,27000);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10722,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27176);
        player:messageSpecial(ITEM_OBTAINED,27176);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10742,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27352);
        player:messageSpecial(ITEM_OBTAINED,27352);
        player:tradeComplete();
           ----------------------------DRG-------------------------------------
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10663,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26650);
        player:messageSpecial(ITEM_OBTAINED,26650);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,25) and trade:hasItemQty(10683,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26826);
        player:messageSpecial(ITEM_OBTAINED,26826);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10703,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27002);
        player:messageSpecial(ITEM_OBTAINED,27002);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10723,1) and trade:getItemCount() == 21) then                --legs
        player:addItem(27178);
        player:messageSpecial(ITEM_OBTAINED,27178);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10743,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27354);
        player:messageSpecial(ITEM_OBTAINED,27354);
        player:tradeComplete();
           ----------------------------SMN-------------------------------------
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10664,1) and trade:getItemCount() == 21) then                --head
        player:addItem(26652);
        player:messageSpecial(ITEM_OBTAINED,26652);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,25) and trade:hasItemQty(10684,1) and trade:getItemCount() == 26) then                --body
        player:addItem(26828);
        player:messageSpecial(ITEM_OBTAINED,26828);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10704,1) and trade:getItemCount() == 21) then                --hands
        player:addItem(27004);
        player:messageSpecial(ITEM_OBTAINED,27004);
        player:tradeComplete();
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10724,1) and trade:getItemCount() == 21) then                 --legs
        player:addItem(27180);
        player:messageSpecial(ITEM_OBTAINED,27180);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,20) and trade:hasItemQty(10744,1) and trade:getItemCount() == 21) then                --feet
        player:addItem(27356);
        player:messageSpecial(ITEM_OBTAINED,27356);
        player:tradeComplete();
          ----------------------------BLU-------------------------------------
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10665,1) and trade:getItemCount() == 21) then            --head
        player:addItem(26654);
        player:messageSpecial(ITEM_OBTAINED,26654);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,25) and trade:hasItemQty(10685,1) and trade:getItemCount() == 26) then            --body
        player:addItem(26830);
        player:messageSpecial(ITEM_OBTAINED,26830);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10705,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27006);
        player:messageSpecial(ITEM_OBTAINED,27006);
        player:tradeComplete();
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10725,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(27182);
        player:messageSpecial(ITEM_OBTAINED,27182);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,20) and trade:hasItemQty(10745,1) and trade:getItemCount() == 21) then            --feet
        player:addItem(27358);
        player:messageSpecial(ITEM_OBTAINED,27358);
        player:tradeComplete();
           ----------------------------COR-------------------------------------
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10666,1) and trade:getItemCount() == 21) then            --head
        player:addItem(26656);
        player:messageSpecial(ITEM_OBTAINED,26656);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,25) and trade:hasItemQty(10686,1) and trade:getItemCount() == 26) then            --body
        player:addItem(26832);
        player:messageSpecial(ITEM_OBTAINED,26832);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10706,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27008);
        player:messageSpecial(ITEM_OBTAINED,27008);
        player:tradeComplete();
    elseif (trade:hasItemQty(2816,20) and trade:hasItemQty(10726,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(27184);
        player:messageSpecial(ITEM_OBTAINED,27184);
        player:tradeComplete();
    elseif (trade:hasItemQty(2812,20) and trade:hasItemQty(10746,1) and trade:getItemCount() == 21) then            --feet
        player:addItem(27360);
        player:messageSpecial(ITEM_OBTAINED,27360);
        player:tradeComplete();
          ----------------------------DNC-------------------------------------
    elseif (trade:hasItemQty(2815,20) and trade:hasItemQty(10668,1) and trade:getItemCount() == 21) then            --head
        player:addItem(26660);
        player:messageSpecial(ITEM_OBTAINED,26660);
        player:tradeComplete();
    elseif (trade:hasItemQty(2814,25) and trade:hasItemQty(10688,1) and trade:getItemCount() == 26) then            --body
        player:addItem(26836);
        player:messageSpecial(ITEM_OBTAINED,26836);
        player:tradeComplete();
    elseif (trade:hasItemQty(2813,20) and trade:hasItemQty(10708,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27012);
        player:messageSpecial(ITEM_OBTAINED,27012);
        player:tradeComplete();
    elseif (trade:hasItemQty(2819,20) and trade:hasItemQty(10728,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(27188);
        player:messageSpecial(ITEM_OBTAINED,27188);
        player:tradeComplete();
    elseif (trade:hasItemQty(2820,20) and trade:hasItemQty(10748,1) and trade:getItemCount() == 21) then            --feet
        player:addItem(27364);
        player:messageSpecial(ITEM_OBTAINED,27364);
        player:tradeComplete();
           ----------------------------SCH-------------------------------------
    elseif (trade:hasItemQty(2821,20) and trade:hasItemQty(10669,1) and trade:getItemCount() == 21) then            --head
        player:addItem(26662);
        player:messageSpecial(ITEM_OBTAINED,26662);
        player:tradeComplete();
    elseif (trade:hasItemQty(2818,25) and trade:hasItemQty(10689,1) and trade:getItemCount() == 26) then            --body
        player:addItem(26838);
        player:messageSpecial(ITEM_OBTAINED,26838);
        player:tradeComplete();
    elseif (trade:hasItemQty(2817,20) and trade:hasItemQty(10709,1) and trade:getItemCount() == 21) then            --hands
        player:addItem(27014);
        player:messageSpecial(ITEM_OBTAINED,27014);
        player:tradeComplete();
    elseif (trade:hasItemQty(2811,20) and trade:hasItemQty(10729,1) and trade:getItemCount() == 21) then            --legs
        player:addItem(27190);
        player:messageSpecial(ITEM_OBTAINED,27190);
        player:tradeComplete();
    elseif (trade:hasItemQty(2822,20) and trade:hasItemQty(10749,1) and trade:getItemCount() == 21) then             --feet
        player:addItem(27366);
        player:messageSpecial(ITEM_OBTAINED,27366);
        player:tradeComplete();
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofChatPlayer( (string.format( "Hello %s!, I'm here to help you reforge your Relic Armor", player:getName() )), MESSAGE_SAY, npc:getID() );
end;
