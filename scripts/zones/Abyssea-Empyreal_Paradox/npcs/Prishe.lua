-----------------------------------
-- Area: Abyssea-Empyreal_Paradox
--  NPC: Prishe [A]
-- Empy 109
-----------------------------------
package.loaded["scripts/zones/Abyssea-Empyreal_Paradox/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Empyreal_Paradox/TextIDs");
require("scripts/globals/missions");
require("scripts/globals/titles");
require("scripts/globals/atma");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local title = 0;
    local PRIZE = 0;

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

    -- Empyrean Armor iLv 109 upgrade item turn in
    if (countLunars(player) == 3 and title == 10) then
        -- THF
        if (trade:hasItemQty(2967, 30) and trade:hasItemQty(11069,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26750
        elseif (trade:hasItemQty(3292, 30) and trade:hasItemQty(11089,1) and trade:getItemCount() == 31) then --  body
            PRIZE = 26908
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11109,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27062
        elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11129,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27247
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11149,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27421

        -- WAR
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11064,1) and trade:getItemCount() == 31) then -- head.
            PRIZE = 26740
        elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11084,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26898
        elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11104,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27052
        elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11124,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27237
        elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11144,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27411

        -- MNK
        elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11065,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26742
        elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11085,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26900
        elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11105,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27054
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11125,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27239
        elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11145,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27413

        -- WHM
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11066,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26744
        elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11086,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26902
        elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11106,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27056
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11126,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27241
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11146,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27415

        -- RDM
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11068,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26748
        elseif (trade:hasItemQty(3291, 30) and trade:hasItemQty(11088,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26906
        elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11108,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27060
        elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11128,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27245
        elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11148,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27419

        -- BLM
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11067,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26746
         elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11087,1) and trade:getItemCount() == 31) then  --body
            PRIZE = 26904
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11107,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27058
        elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11127,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27243
        elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11147,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27417

        -- PLD
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11070,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26752
         elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11090,1) and trade:getItemCount() == 31) then  --body
            PRIZE = 26910
        elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11110,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27064
        elseif (trade:hasItemQty(3291, 30) and trade:hasItemQty(11130,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27249
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11150,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27423

        -- DRK
        elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11071,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26754
        elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11091,1) and trade:getItemCount() == 31) then  --body
            PRIZE = 26912
        elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11111,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27066
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11131,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27251
        elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11151,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27425

        -- BST
        elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11072,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26756
        elseif (trade:hasItemQty(3291, 30) and trade:hasItemQty(11092,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26914
        elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11112,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27068
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11132,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27253
        elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11152,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27427

        -- BRD
        elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11073,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26758
        elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11093,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26916
        elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11113,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27070
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11133,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27255
        elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11153,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27429

        -- RNG
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11074,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26760
        elseif (trade:hasItemQty(3292, 30) and trade:hasItemQty(11094,1) and trade:getItemCount() == 31) then  --body
            PRIZE = 26918
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11114,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27072
        elseif (trade:hasItemQty(2962, 30) and trade:hasItemQty(11134,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27257
        elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11154,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27431

        -- SAM
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11075,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26762
        elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11095,1) and trade:getItemCount() == 31) then  --body
            PRIZE = 26920
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11115,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27074
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11135,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27259
        elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11155,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27433

        -- NIN
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11076,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26764
        elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11096,1) and trade:getItemCount() == 31) then  --body
            PRIZE = 26922
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11116,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27076
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11136,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27261
        elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11156,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27435

        -- DRG
        elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11077,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26766
        elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11097,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26924
        elseif (trade:hasItemQty(2967, 30) and trade:hasItemQty(11117,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27078
        elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11137,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27263
        elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11157,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27437

        -- SMN
        elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11078,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26768
        elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11098,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26926
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11118,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27080
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11138,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27265
        elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11158,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27439

        -- BLU
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11079,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26770
        elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11099,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26928
        elseif (trade:hasItemQty(2928, 30) and trade:hasItemQty(11119,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27082
        elseif (trade:hasItemQty(2966, 30) and trade:hasItemQty(11139,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27267
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11159,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27441

        -- COR
        elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11080,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26772
        elseif (trade:hasItemQty(3288, 30) and trade:hasItemQty(11100,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26930
        elseif (trade:hasItemQty(2930, 30) and trade:hasItemQty(11120,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27084
        elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11140,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27269
        elseif (trade:hasItemQty(2927, 30) and trade:hasItemQty(11160,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27443

        -- DNC
        elseif (trade:hasItemQty(3289, 30) and trade:hasItemQty(11082,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26776
        elseif (trade:hasItemQty(3287, 30) and trade:hasItemQty(11102,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26934
        elseif (trade:hasItemQty(2929, 30) and trade:hasItemQty(11122,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27088
        elseif (trade:hasItemQty(2964, 30) and trade:hasItemQty(11142,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27273
        elseif (trade:hasItemQty(2932, 30) and trade:hasItemQty(11162,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27447

        -- SCH
        elseif (trade:hasItemQty(2965, 30) and trade:hasItemQty(11083,1) and trade:getItemCount() == 31) then -- head
            PRIZE = 26778
        elseif (trade:hasItemQty(3290, 30) and trade:hasItemQty(11103,1) and trade:getItemCount() == 31) then -- body
            PRIZE = 26936
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11123,1) and trade:getItemCount() == 31) then -- hands
            PRIZE = 27090
        elseif (trade:hasItemQty(2963, 30) and trade:hasItemQty(11143,1) and trade:getItemCount() == 31) then -- legs
            PRIZE = 27275
        elseif (trade:hasItemQty(2931, 30) and trade:hasItemQty(11163,1) and trade:getItemCount() == 31) then -- feet
            PRIZE = 27449
        end

        if (PRIZE > 0) then
            if (player:getFreeSlotsCount() >= 1) then
                player:messageSpecial(ITEM_OBTAINED, PRIZE);
                player:tradeComplete();
                player:addItem(PRIZE, 1);
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, PRIZE);
            end
        end
    else
        player:PrintToPlayer("Not so fast... All 10 Titles and All 3 Lunars are required!");
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofChatPlayer( (string.format( "Hello %s!, I'm here to help you reforge your Empyrean Armor", player:getName() )), MESSAGE_SAY, npc:getID() );
end;