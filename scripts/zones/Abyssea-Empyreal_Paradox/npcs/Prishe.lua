d-----------------------------------
-- Area: Abyssea-Empyreal_Paradox
-- NPC: Empy 109 
--
-----------------------------------
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/atma");
require("scripts/globals/settings");
require("scripts/globals/missions");
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");
require("scripts/globals/titles");
-----------------------------------
-- onTrade Action
-----------------------------------

    -------------------------------AF 109 Trials----------------------------------------------------
function onTrade(player,npc,trade)
    local title = 0;

    if (player:hasTitle(BRIAREUS_FELLER)) then 
        title = title+1;
    end
    if (player:hasTitle(KUKULKAN_DEFANGER)) then 
        title = title+1;
    end        
    if (player:hasTitle(GLAVOID_STAMPEDER)) then 
        title = title+1;
    end
    if (player:hasTitle(ITZPAPALOTL_DECLAWER)) then 
        title = title+1;
    end
    if (player:hasTitle(CIREINCROIN_HARPOONER)) then 
        title = title+1;
    end
    if (player:hasTitle(SEDNA_TUSKBREAKER)) then 
        title = title+1;
    end
    if (player:hasTitle(BENNU_DEPLUMER)) then 
        title = title+1;
    end
    if (player:hasTitle(RESHEPH_ERADICATOR)) then 
        title = title+1;
    end
    if (player:hasTitle(AMPHITRITE_SHUCKER)) then 
        title = title+1;
    end
    if (player:hasTitle(WYRM_GOD_DEFIER)) then 
        title = title+1;
    end
    return title;  

    if (countLunars(player) == 3 and title == 10) then
        if (player:getFreeSlotsCount() >= 1) then
        player:PrintToPlayer( "Please trade your +2 armor along with all 30 upgrade items for your reforge!" );


----------------------------THF-------------------------------------
			if (trade:hasItemQty(2967, 30) and trade:hasItemQty(11069,1) and trade:getItemCount() == 31) then      --head
				player:addItem(26750);
				player:messageSpecial(ITEM_OBTAINED,26750);
				player:tradeComplete();
			elseif (trade:hasItemQty(3292, 30) and trade:hasItemQty(11089,1) and trade:getItemCount() == 31) then     -- body
				player:addItem(26908);
				player:messageSpecial(ITEM_OBTAINED,26908);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11109,1) and trade:getItemCount() == 31) then      --hands
				player:addItem(27062);
				player:messageSpecial(ITEM_OBTAINED,27062);
				player:tradeComplete();
			elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11129,1) and trade:getItemCount() == 31) then      --legs
				player:addItem(27247);
				player:messageSpecial(ITEM_OBTAINED,27247);
				player:tradeComplete();
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11149,1) and trade:getItemCount() == 31) then      --feet
				player:addItem(27421);
				player:messageSpecial(ITEM_OBTAINED,27421);
				player:tradeComplete();
		----------------------------WAR-------------------------------------
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11064,1) and trade:getItemCount() == 31) then      --head
				player:addItem(26740);
				player:messageSpecial(ITEM_OBTAINED,26740);
				player:tradeComplete();
			elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11084,1) and trade:getItemCount() == 31) then      --body
				player:addItem(26898);
				player:messageSpecial(ITEM_OBTAINED,26898);
				player:tradeComplete();
			elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11104,1) and trade:getItemCount() == 31) then      --hands
				player:addItem(27052);
				player:messageSpecial(ITEM_OBTAINED,27052);
				player:tradeComplete();
			elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11124,1) and trade:getItemCount() == 31) then      --legs
				player:addItem(27237);
				player:messageSpecial(ITEM_OBTAINED,27237);
				player:tradeComplete();
			elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11144,1) and trade:getItemCount() == 31) then      --feet
				player:addItem(27411);
				player:messageSpecial(ITEM_OBTAINED,27411);
				player:tradeComplete();
		----------------------------MNK-------------------------------------
			elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11065,1) and trade:getItemCount() == 31) then      --head
				player:addItem(26742);
				player:messageSpecial(ITEM_OBTAINED,26742);
				player:tradeComplete();
			elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11085,1) and trade:getItemCount() == 31) then       --body
				player:addItem(26900);
				player:messageSpecial(ITEM_OBTAINED,26900);
				player:tradeComplete();
			elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11105,1) and trade:getItemCount() == 31) then                  --hands
				player:addItem(27054);
				player:messageSpecial(ITEM_OBTAINED,27054);
				player:tradeComplete();
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11125,1) and trade:getItemCount() == 31) then                  --legs
				player:addItem(27239);
				player:messageSpecial(ITEM_OBTAINED,27239);
				player:tradeComplete();
			elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11145,1) and trade:getItemCount() == 31) then                  --feet
				player:addItem(27413);
				player:messageSpecial(ITEM_OBTAINED,27413);
				player:tradeComplete();
		----------------------------WHM-------------------------------------
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11066,1) and trade:getItemCount() == 31) then                  --head
				player:addItem(26744);
				player:messageSpecial(ITEM_OBTAINED,26744);
				player:tradeComplete();
			elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11086,1) and trade:getItemCount() == 31) then                 --body
				player:addItem(26902);
				player:messageSpecial(ITEM_OBTAINED,26902);
				player:tradeComplete();
			elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11106,1) and trade:getItemCount() == 31) then                  --hands
				player:addItem(27056);
				player:messageSpecial(ITEM_OBTAINED,27056);
				player:tradeComplete();
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11126,1) and trade:getItemCount() == 31) then                  --legs
				player:addItem(27241);
				player:messageSpecial(ITEM_OBTAINED,27241);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11146,1) and trade:getItemCount() == 31) then                  --feet
				player:addItem(27415);
				player:messageSpecial(ITEM_OBTAINED,27415);
				player:tradeComplete();
		----------------------------RDM-------------------------------------
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11068,1) and trade:getItemCount() == 31) then                  --head
				player:addItem(26748);
				player:messageSpecial(ITEM_OBTAINED,26748);
				player:tradeComplete();
			elseif (trade:hasItemQty(3291, 30) and trade:hasItemQty(11088,1) and trade:getItemCount() == 31) then                  --body
				player:addItem(26906);
				player:messageSpecial(ITEM_OBTAINED,26906);
				player:tradeComplete();
			elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11108,1) and trade:getItemCount() == 31) then                  --hands
				player:addItem(27060);
				player:messageSpecial(ITEM_OBTAINED,27060);
				player:tradeComplete();
			elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11128,1) and trade:getItemCount() == 31) then                  --legs
				player:addItem(27245);
				player:messageSpecial(ITEM_OBTAINED,27245);
				player:tradeComplete();
			elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11148,1) and trade:getItemCount() == 31) then                  --feet
				player:addItem(27419);
				player:messageSpecial(ITEM_OBTAINED,27419);
				player:tradeComplete();
		----------------------------BLM-------------------------------------
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11067,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26746);
				player:messageSpecial(ITEM_OBTAINED,26746);
				player:tradeComplete();
			 elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11087,1) and trade:getItemCount() == 31) then             --body
				player:addItem(26904);
				player:messageSpecial(ITEM_OBTAINED,26904);
				player:tradeComplete();
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11107,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27058);
				player:messageSpecial(ITEM_OBTAINED,27058);
				player:tradeComplete();
			elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11127,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27243);
				player:messageSpecial(ITEM_OBTAINED,27243);
				player:tradeComplete();
			elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11147,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27417);
				player:messageSpecial(ITEM_OBTAINED,27417);
				player:tradeComplete();
		----------------------------PLD-------------------------------------
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11070,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26752);
				player:messageSpecial(ITEM_OBTAINED,26752);
				player:tradeComplete();
			 elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11090,1) and trade:getItemCount() == 31) then             --body
				player:addItem(26910);
				player:messageSpecial(ITEM_OBTAINED,26910);
				player:tradeComplete();
			elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11110,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27064);
				player:messageSpecial(ITEM_OBTAINED,27064);
				player:tradeComplete();
			elseif (trade:hasItemQty(3291, 30) and trade:hasItemQty(11130,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27249);
				player:messageSpecial(ITEM_OBTAINED,27249);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11150,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27423);
				player:messageSpecial(ITEM_OBTAINED,27423);
				player:tradeComplete();
		----------------------------DRK-------------------------------------
			elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11071,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26754);
				player:messageSpecial(ITEM_OBTAINED,26754);
				player:tradeComplete();
			elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11091,1) and trade:getItemCount() == 31) then             --body
				player:addItem(26912);
				player:messageSpecial(ITEM_OBTAINED,26912);
				player:tradeComplete();
			elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11111,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27066);
				player:messageSpecial(ITEM_OBTAINED,27066);
				player:tradeComplete();
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11131,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27251);
				player:messageSpecial(ITEM_OBTAINED,27251);
				player:tradeComplete();
			elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11151,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27425);
				player:messageSpecial(ITEM_OBTAINED,27425);
				player:tradeComplete();
		----------------------------BST-------------------------------------
			elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11072,1) and trade:getItemCount() == 31) then                  --head
				player:addItem(26756);
				player:messageSpecial(ITEM_OBTAINED,26756);
				player:tradeComplete();
			elseif (trade:hasItemQty(3291, 30) and trade:hasItemQty(11092,1) and trade:getItemCount() == 31) then                 --body
				player:addItem(26914);
				player:messageSpecial(ITEM_OBTAINED,26914);
				player:tradeComplete();
			elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11112,1) and trade:getItemCount() == 31) then                  --hands
				player:addItem(27068);
				player:messageSpecial(ITEM_OBTAINED,27068);
				player:tradeComplete();
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11132,1) and trade:getItemCount() == 31) then                  --legs
				player:addItem(27253);
				player:messageSpecial(ITEM_OBTAINED,27253);
				player:tradeComplete();
			elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11152,1) and trade:getItemCount() == 31) then                  --feet
				player:addItem(27427);
				player:messageSpecial(ITEM_OBTAINED,27427);
				player:tradeComplete();
		----------------------------BRD-------------------------------------
			elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11073,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26758);
				player:messageSpecial(ITEM_OBTAINED,26758);
				player:tradeComplete();
			elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11093,1) and trade:getItemCount() == 31) then              --body
				player:addItem(26916);
				player:messageSpecial(ITEM_OBTAINED,26916);
				player:tradeComplete();
			elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11113,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27070);
				player:messageSpecial(ITEM_OBTAINED,27070);
				player:tradeComplete();
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11133,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27255);
				player:messageSpecial(ITEM_OBTAINED,27255);
				player:tradeComplete();
			elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11153,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27429);
				player:messageSpecial(ITEM_OBTAINED,27429);
				player:tradeComplete();
		----------------------------RNG-------------------------------------
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11074,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26760);
				player:messageSpecial(ITEM_OBTAINED,26760);
				player:tradeComplete();
			elseif (trade:hasItemQty(3292, 30) and trade:hasItemQty(11094,1) and trade:getItemCount() == 31) then             --body
				player:addItem(26918);
				player:messageSpecial(ITEM_OBTAINED,26918);
				player:tradeComplete();
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11114,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27072);
				player:messageSpecial(ITEM_OBTAINED,27072);
				player:tradeComplete();
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11134,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27257);
				player:messageSpecial(ITEM_OBTAINED,27257);
				player:tradeComplete();
			elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11154,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27341);
				player:messageSpecial(ITEM_OBTAINED,27341);
				player:tradeComplete();
		----------------------------SAM-------------------------------------
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11075,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26762);
				player:messageSpecial(ITEM_OBTAINED,26762);
				player:tradeComplete();
			elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11095,1) and trade:getItemCount() == 31) then             --body
				player:addItem(26920);
				player:messageSpecial(ITEM_OBTAINED,26920);
				player:tradeComplete();
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11115,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27074);
				player:messageSpecial(ITEM_OBTAINED,27074);
				player:tradeComplete();
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11135,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27259);
				player:messageSpecial(ITEM_OBTAINED,27259);
				player:tradeComplete();
			elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11155,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27433);
				player:messageSpecial(ITEM_OBTAINED,27433);
				player:tradeComplete();
		----------------------------NIN-------------------------------------
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11076,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26764);
				player:messageSpecial(ITEM_OBTAINED,26764);
				player:tradeComplete();
			elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11096,1) and trade:getItemCount() == 31) then             --body
				player:addItem(26922);
				player:messageSpecial(ITEM_OBTAINED,26922);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11116,1) and trade:getItemCount() == 31) then              --hands
				player:addItem(27076);
				player:messageSpecial(ITEM_OBTAINED,27076);
				player:tradeComplete();
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11136,1) and trade:getItemCount() == 31) then              --legs
				player:addItem(27261);
				player:messageSpecial(ITEM_OBTAINED,27261);
				player:tradeComplete();
			elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11156,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27435);
				player:messageSpecial(ITEM_OBTAINED,27435);
				player:tradeComplete();
		----------------------------DRG-------------------------------------
			elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11077,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26766);
				player:messageSpecial(ITEM_OBTAINED,26766);
				player:tradeComplete();
			elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11097,1) and trade:getItemCount() == 31) then            --body
				player:addItem(26924);
				player:messageSpecial(ITEM_OBTAINED,26924);
				player:tradeComplete();
			elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11117,1) and trade:getItemCount() == 31) then           --hands
				player:addItem(27078);
				player:messageSpecial(ITEM_OBTAINED,27078);
				player:tradeComplete();
			elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11137,1) and trade:getItemCount() == 31) then          --legs
				player:addItem(27263);
				player:messageSpecial(ITEM_OBTAINED,27263);
				player:tradeComplete();
			elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11157,1) and trade:getItemCount() == 31) then          --feet
				player:addItem(27437);
				player:messageSpecial(ITEM_OBTAINED,27437);
				player:tradeComplete();
		----------------------------SMN-------------------------------------
			elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11078,1) and trade:getItemCount() == 31) then          --head
				player:addItem(26768);
				player:messageSpecial(ITEM_OBTAINED,26768);
				player:tradeComplete();
			elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11098,1) and trade:getItemCount() == 31) then         --body
				player:addItem(26926);
				player:messageSpecial(ITEM_OBTAINED,26926);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11118,1) and trade:getItemCount() == 31) then          --hands
				player:addItem(27080);
				player:messageSpecial(ITEM_OBTAINED,27080);
				player:tradeComplete();
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11138,1) and trade:getItemCount() == 31) then          --legs
				player:addItem(27265);
				player:messageSpecial(ITEM_OBTAINED,27265);
				player:tradeComplete();
			elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11158,1) and trade:getItemCount() == 31) then          --feet
				player:addItem(27439);
				player:messageSpecial(ITEM_OBTAINED,27439);
				player:tradeComplete();
		----------------------------BLU-------------------------------------
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11079,1) and trade:getItemCount() == 31) then          --head
				player:addItem(26770);
				player:messageSpecial(ITEM_OBTAINED,26770);
				player:tradeComplete();
			elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11099,1) and trade:getItemCount() == 31) then         --body
				player:addItem(26928);
				player:messageSpecial(ITEM_OBTAINED,26928);
				player:tradeComplete();
			elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11119,1) and trade:getItemCount() == 31) then          --hands
				player:addItem(27082);
				player:messageSpecial(ITEM_OBTAINED,27082);
				player:tradeComplete();
			elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11139,1) and trade:getItemCount() == 31) then          --legs
				player:addItem(27267);
				player:messageSpecial(ITEM_OBTAINED,27267);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11159,1) and trade:getItemCount() == 31) then          --feet
				player:addItem(27441);
				player:messageSpecial(ITEM_OBTAINED,27441);
				player:tradeComplete();
		----------------------------COR-------------------------------------
			elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11080,1) and trade:getItemCount() == 31) then         --head
				player:addItem(26772);
				player:messageSpecial(ITEM_OBTAINED,26772);
				player:tradeComplete();
			elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11100,1) and trade:getItemCount() == 31) then         --body
				player:addItem(26930);
				player:messageSpecial(ITEM_OBTAINED,26930);
				player:tradeComplete();
			elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11120,1) and trade:getItemCount() == 31) then          --hands
				player:addItem(27084);
				player:messageSpecial(ITEM_OBTAINED,27084);
				player:tradeComplete();
			elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11140,1) and trade:getItemCount() == 31) then          --legs
				player:addItem(27269);
				player:messageSpecial(ITEM_OBTAINED,27269);
				player:tradeComplete();
			elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11160,1) and trade:getItemCount() == 31) then          --feet
				player:addItem(27443);
				player:messageSpecial(ITEM_OBTAINED,27443);
				player:tradeComplete();
		----------------------------DNC-------------------------------------
			elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11082,1) and trade:getItemCount() == 31) then          --head
				player:addItem(26776);
				player:messageSpecial(ITEM_OBTAINED,26776);
				player:tradeComplete();
			elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11102,1) and trade:getItemCount() == 31) then         --body
				player:addItem(26934);
				player:messageSpecial(ITEM_OBTAINED,26934);
				player:tradeComplete();
			elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11122,1) and trade:getItemCount() == 31) then          --hands
				player:addItem(27088);
				player:messageSpecial(ITEM_OBTAINED,27088);
				player:tradeComplete();
			elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11142,1) and trade:getItemCount() == 31) then          --legs
				player:addItem(27273);
				player:messageSpecial(ITEM_OBTAINED,27273);
				player:tradeComplete();
			elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11162,1) and trade:getItemCount() == 31) then          --feet
				player:addItem(27447);
				player:messageSpecial(ITEM_OBTAINED,27447);
				player:tradeComplete();
		----------------------------SCH-------------------------------------
			elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11083,1) and trade:getItemCount() == 31) then              --head
				player:addItem(26778);
				player:messageSpecial(ITEM_OBTAINED,26778);
				player:tradeComplete();
			elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11103,1) and trade:getItemCount() == 31) then         --body
				player:addItem(26936);
				player:messageSpecial(ITEM_OBTAINED,26936);
				player:tradeComplete();
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11123,1) and trade:getItemCount() == 31) then          --hands
				player:addItem(27090);
				player:messageSpecial(ITEM_OBTAINED,27090);
				player:tradeComplete();
			elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11143,1) and trade:getItemCount() == 31) then          --legs
				player:addItem(27275);
				player:messageSpecial(ITEM_OBTAINED,27275);
				player:tradeComplete();
			elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11163,1) and trade:getItemCount() == 31) then              --feet
				player:addItem(27449);
				player:messageSpecial(ITEM_OBTAINED,27449);
				player:tradeComplete();
			else
			    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED);

			end
		end
	else
		player:PrintToPlayer( "Not so fast... All 10 Titles and All 3 Lunars are required!" );
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofChatPlayer( (string.format( "Hello %s!, I'm here to help you reforge your Empyrian Armor", player:getName() )), MESSAGE_SAY, npc:getID() );
end;