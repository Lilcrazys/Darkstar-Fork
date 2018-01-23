-----------------------------------
-- Area: Upper Jeuno
--  NPC: Renik
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Upper_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Upper_Jeuno/TextIDs");
require("scripts/globals/quests");
-----------------------------------

    -------------------------------Empy 119 Trials----------------------------------------------------
function onTrade(player,npc,trade)
    if (player:getFreeSlotsCount() == 0) then
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, PRIZE);
    else
        if (player:getCurrency("bayld") < 5000) then
            player:SpoofMsg("Not enough Bayld. 5000 is required. ", npc, MESSAGE_ECHO, nil);
        else
            local PRIZE = 0;
    ---------------------------------------Empy 119----------------------------------------------------------
    ----------------------------THF-------------------------------------
            if (trade:hasItemQty(4067, 5) and trade:hasItemQty(26750,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26751
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26908,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26909
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27062,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27063
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27247,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27248
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27421,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27422
    ----------------------------WAR-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26740,1) and trade:getItemCount() == 6) then -- head.
                PRIZE = 26741
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26898,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26899
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27052,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27053
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27237,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27238
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27411,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27412
    ----------------------------MNK-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26742,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26743
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26900,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26901
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27054,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27055
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27239,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27240
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27413,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27414
    ----------------------------WHM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26744,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26745
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26902,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26903
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27056,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27057
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27241,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27242
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27415,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27416
    ----    ------------------------RDM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26748,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26749
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26906,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26907
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27060,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27061
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27245,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27246
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27419,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27420
    ----    ------------------------BLM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26746,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26747
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26904,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26905
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27058,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27059
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27243,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27244
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27417,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27418
    ----    ------------------------PLD-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26752,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26753
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26910,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26911
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27064,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27065
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27249,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27250
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27423,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27424
    ----    ------------------------DRK-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26754,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26755
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26912,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26913
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27066,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27067
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27251,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27252
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27425,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27426
    ----    ------------------------BST-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26756,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26757
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26914,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26915
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27068,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27069
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27253,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27254
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27427,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27428
    ----    ------------------------BRD-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26758,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26759
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26916,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26917
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27070,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27071
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27255,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27256
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27429,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27430
    ----    ------------------------RNG-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26760,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26761
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26918,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26919
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27072,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27073
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27257,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27258
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27431,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27432
    ----    ------------------------SAM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26762,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26763
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26920,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26921
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27074,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27075
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27259,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27260
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27433,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27434
    ----    ------------------------NIN-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26764,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26765
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26922,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26923
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27076,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27077
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27261,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27262
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27435,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27436
    ----    ------------------------DRG-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26766,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26767
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26924,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26925
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27078,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27079
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27263,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27264
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27437,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27438
    ----    ------------------------SMN-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26768,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26769
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26926,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26927
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27080,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27081
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27265,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27266
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27439,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27440
    ----    ------------------------BLU-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26770,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26771
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26928,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26929
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27082,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27083
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27267,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27268
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27441,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27442
    ----    ------------------------COR-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26772,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26773
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26930,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26931
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27084,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27085
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27269,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27270
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27443,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27444
    ----    ------------------------DNC-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26776,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26777
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26934,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26935
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27088,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27089
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27273,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27274
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27447,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27448
    ----    ------------------------SCH-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26778,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26779
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26936,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26937
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27090,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27091
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27275,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27276
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27449,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27450
    ----    --------------------------------AF 119-------------------------------------------------------------------
    ----    ------------------------THF-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27668,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27689
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27812,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27833
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27948,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27969
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28095,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28116
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28228,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28249
    ----    ------------------------WAR-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27663,1) and trade:getItemCount() == 6) then -- head.
                PRIZE = 27684
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27807,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27828
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27943,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27964
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28090,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28111
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28223,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28244
    ----    ------------------------MNK-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27664,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27685
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27808,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27829
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27944,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27965
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28091,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28112
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28224,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28245
    ----    ------------------------WHM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27665,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27686
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27809,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27830
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27945,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27966
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28092,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28113
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28225,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28246
    ----    ------------------------RDM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27667,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27688
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27811,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27832
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27947,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27968
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28094,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28115
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28227,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28248
    ----    ------------------------BLM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27666,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27687
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27810,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27831
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27946,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27967
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28093,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28114
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28226,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28247
    ----    ------------------------PLD-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27669,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27690
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27813,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27834
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27949,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27970
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28096,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28117
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28229,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28250
    ----    ------------------------DRK-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27670,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27691
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27814,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27835
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27950,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27971
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28097,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28118
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28230,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28251
    ----    ------------------------BST-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27671,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27692
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27815,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27836
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27951,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27972
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28098,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28119
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28231,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28252
    ----    ------------------------BRD-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27672,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27693
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27816,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27837
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27952,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27973
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28099,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28120
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28232,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28253
    ----    ------------------------RNG-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27673,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27694
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27817,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27838
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27953,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27974
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28100,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28121
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28233,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28254
    ----    ------------------------SAM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27674,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27695
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27818,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27839
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27954,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27975
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28101,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28122
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28234,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28255
    ----    ------------------------NIN-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27675,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27696
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27819,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27840
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27955,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27976
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28102,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28123
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28235,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28256
    ----    ------------------------DRG-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27676,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27697
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27820,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27841
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27956,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27977
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28103,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28124
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28236,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28257
    ----    ------------------------SMN-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27677,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27698
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27821,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27842
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27957,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27978
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28104,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28125
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28237,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28258
    ----    ------------------------BLU-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27678,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27699
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27822,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27843
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27958,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27979
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28105,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28126
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28238,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28259
    ----    ------------------------COR-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27679,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27700
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27823,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27844
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27959,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27980
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28106,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28127
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28239,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28260
    ----    ------------------------DNC-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27681,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27702
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27825,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27846
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27961,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27982
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28108,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28129
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28241,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28262
    ----    ------------------------SCH-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(27683,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 27704
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(27827,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 27848
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27963,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27984
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(28110,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 28131
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(28243,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 28264
    ----    ---------------- Relic 119------------------------------------------------------
    ----    ------------------------THF-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26634,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26635
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26810,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26811
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26986,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26987
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27162,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27163
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27338,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27339
    ----    ------------------------WAR-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26624,1) and trade:getItemCount() == 6) then -- head.
                PRIZE = 26625
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26800,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26801
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26976,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26977
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27152,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27153
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27328,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27329
    ----    ------------------------MNK-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26626,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26627
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26802,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26803
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26978,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26979
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27154,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27155
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27330,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27331
    ----    ------------------------WHM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26628,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26629
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26804,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26805
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26980,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26981
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27156,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27157
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27332,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27333
    ----    ------------------------RDM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26632,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26633
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26808,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26809
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26984,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26985
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27160,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27161
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27336,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27337
    ----    ------------------------BLM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26630,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26631
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26806,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26807
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26982,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26983
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27158,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27159
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27334,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27335
    ----    ------------------------PLD-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26636,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26637
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26812,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26813
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26988,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26989
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27164,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27165
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27340,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27341
    ----    ------------------------DRK-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26638,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26639
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26814,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26815
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26990,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26991
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27166,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27167
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27342,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27343
    ----    ------------------------BST-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26640,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26641
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26816,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26817
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26992,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26993
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27168,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27169
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27344,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27345
    ----    ------------------------BRD-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26642,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26643
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26818,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26819
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26994,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26995
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27170,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27171
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27346,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27347
    ----    ------------------------RNG-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26644,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26645
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26820,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26821
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26996,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26997
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27172,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27173
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27348,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27349
    ----    ------------------------SAM-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26646,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26647
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26822,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26823
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(26998,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 26999
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27174,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27175
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27350,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27351
    ----    ------------------------NIN-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26648,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26649
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26824,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26825
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27000,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27001
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27176,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27177
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27352,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27353
    ----    ------------------------DRG-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26650,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26651
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26826,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26827
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27002,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27003
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27178,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27179
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27354,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27355
    ----    ------------------------SMN-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26652,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26653
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26828,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26829
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27004,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27005
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27180,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27181
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27356,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27357
    ----    ------------------------BLU-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26654,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26655
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26830,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26831
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27006,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27007
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27182,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27183
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27358,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27359
    ----    ------------------------COR-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26656,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26657
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26832,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26833
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27008,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27009
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27184,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27185
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27360,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27361
    ----    ------------------------DNC-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26660,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26661
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26836,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26837
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27012,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27013
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27188,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27189
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27364,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27365
    ----    ------------------------SCH-------------------------------------
            elseif (trade:hasItemQty(4067, 5) and trade:hasItemQty(26662,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26663
            elseif (trade:hasItemQty(4068, 5) and trade:hasItemQty(26838,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26839
            elseif (trade:hasItemQty(4066, 5) and trade:hasItemQty(27014,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27015
            elseif (trade:hasItemQty(4065, 5) and trade:hasItemQty(27190,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27191
            elseif (trade:hasItemQty(4064, 5) and trade:hasItemQty(27366,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27367
    ----    ------------------------Yorium-------------------------------------
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12420,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26733
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12548,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26891
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12676,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27045
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12804,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27232
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12932,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27402
    ----    ------------------------Acro-------------------------------------
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12431,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26734
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12559,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26892
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12687,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27046
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(27188,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27233
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12943,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27403
    ----    ------------------------Taeon-------------------------------------
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12467,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26735
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12595,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26893
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12723,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27047
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12851,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27234
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(12979,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27404
    ----    ------------------------Telchine-------------------------------------
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(15207,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26736
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(14446,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26894
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(14053,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27048
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(15404,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27235
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(15343,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27405
    ----    ------------------------Helios-------------------------------------
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(13929,1) and trade:getItemCount() == 6) then -- head
                PRIZE = 26737
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(14380,1) and trade:getItemCount() == 6) then -- body
                PRIZE = 26895
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(14078,1) and trade:getItemCount() == 6) then -- hands
                PRIZE = 27049
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(14301,1) and trade:getItemCount() == 6) then -- legs
                PRIZE = 27236
            elseif (trade:hasItemQty(4049, 5) and trade:hasItemQty(14182,1) and trade:getItemCount() == 6) then -- feet
                PRIZE = 27406
            end

            if (PRIZE > 0) then
                player:delCurrency("bayld", 5000);
                player:addItem(PRIZE, 1);
                player:tradeComplete();
                player:messageSpecial(ITEM_OBTAINED, PRIZE);
            end
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local WildcatJeuno = player:getVar("WildcatJeuno");
    if (player:getQuestStatus(JEUNO,LURE_OF_THE_WILDCAT_JEUNO) == QUEST_ACCEPTED and player:getMaskBit(WildcatJeuno,8) == false) then
        player:startEvent(10086);
    else
        --[[
        player:startEvent(168);
        ]]
        player:SpoofMsg((string.format( "Hello %s!, I'm here to help you reforge your Empyrian Armor", player:getName() )), npc, MESSAGE_SAY, nil);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (csid == 10086) then
        player:setMaskBit(player:getVar("WildcatJeuno"),"WildcatJeuno",8,true);
    end
end;

