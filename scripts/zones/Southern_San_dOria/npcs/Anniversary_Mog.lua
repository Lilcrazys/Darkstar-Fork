-- Southern Sandy Anniversary Moogle
-- anniversary band every day if not in inventory and free slot
-- Random effect applied once an hour when player talks to moogle
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:getItemCount() == 1) then
        if (player:getFreeSlotsCount() == 0) then
            player:SpoofMsg("Hey, you don't have inventory space, kupo! ", npc, chatType.SAY, nil);
        else
            -- Note: most complete trade first because item is rare flagged!
            if (trade:hasItemQty(13216, 1)) then -- Gold Mog Belt
                player:tradeComplete(trade);
                player:addItem(13216, 1, 551, 2, 37, 1); -- STR+3, VIT+3, Mag.Evasion+2
                player:SpoofMsg("A Gold Mog belt!!! Here, let me unlock its latent powers.. ", npc, chatType.SAY, nil);
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:messageSpecial(ITEM_OBTAINED, 13216);
            elseif (trade:hasItemQty(13217, 1)) then -- Silver Mog Belt
                player:tradeComplete(trade);
                player:addItem(13217, 1, 554, 2, 1806, 1); -- INT+3, MND+3, Pet: STR+2 DEX+2 VIT+2
                player:SpoofMsg("A Silver Mog belt!!! Here, let me unlock its latent powers.. ", npc, chatType.SAY, nil);
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:messageSpecial(ITEM_OBTAINED, 13217);
            elseif (trade:hasItemQty(13218, 1)) then -- Bronze Mog Belt
                player:tradeComplete(trade);
                player:addItem(13218, 1, 553, 2, 332, 1); -- DEX+3, AGI+3, Sklchn.dmg.+2%
                player:SpoofMsg("A Bronze Mog belt!!! Here, let me unlock its latent powers.. ", npc, chatType.SAY, nil);
                player:injectActionPacket(6, 207, 0, 0, 0);
                player:messageSpecial(ITEM_OBTAINED, 13218);
            else
                player:SpoofMsg("Have you ever heard of the legendary mog belts? In ages past we moogles had amazing girdled of magnificent kupower! ", npc, chatType.SAY, nil);
            end
        end
    else
        player:SpoofMsg("Hey, one item at a time, don't kupo'ing confuse me. ", npc, chatType.SAY, nil);
    end
end;

function onTrigger(player,npc)
    local month = tonumber(os.date("%m"));
    local day = tonumber(os.date("%d"));

    if ((month == 12 and day >= 1 and day <= 10)) then
        --[[ old code
        -- Anniversary ring
        if (player:getFreeSlotsCount() >= 1) then
            if (player:getVar("AnniversaryLootGet") < os.time()) then
                player:messageSpecial(ITEM_OBTAINED, 15793);
                player:addItem(15793, 1);
                player:setVar("AnniversaryLootGet", os.time()+86400);
            else
                player:SpoofMsg("Check back later. Rings are issued once a day. ", npc, chatType.SAY, nil);
            end
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 15793);
        end
        ]]

        -- Convert old varname..
        if (player:getVar("ANNIRING_TIMER") ~=0) then
            player:setVar("AnniversaryLootGet", player:getVar("ANNIRING_TIMER"));
            player:setVar("ANNIRING_TIMER", 0);
        end

        if (player:getVar("AnniversaryBuff_TIMER") ~=0) then
            player:setVar("AnniversaryBuffGet", player:getVar("AnniversaryBuff_TIMER"));
            player:setVar("AnniversaryBuff_TIMER", 0);
        end

        -- One per day random reward
        -- Todo: make this into random past event rewards, after we have more working events
        if (player:getVar("AnniversaryLootGet") < os.time()) then
            local dayLoot =
            {
                -- [index] = itemID,
                [1]   = 265,     --[[ Adamantoise Statue         ]] [2]   = 266,     --[[ Behemoth Statue            ]]
                [3]   = 267,     --[[ Fafnir Statue              ]] [4]   = 268,     --[[ Nomad Moogle Statue        ]]
                [5]   = 269,     --[[ Shadow Lord Statue         ]] [6]   = 270,     --[[ Odin Statue                ]]
                [7]   = 271,     --[[ Alexander Statue           ]] [8]   = 272,     --[[ Ark Angel Hume Statue      ]]
                [9]   = 273,     --[[ Ark Angel Elvaan Statue    ]] [10]  = 274,     --[[ Ark Angel Tarutaru Statue  ]]
                [11]  = 275,     --[[ Ark Angel Mithra Statue    ]] [12]  = 276,     --[[ Ark Angel Galka Statue     ]]
                [13]  = 277,     --[[ Prishe Statue              ]] [14]  = 278,     --[[ Cardian                    ]]
                [15]  = 279,     --[[ Shadow Lord II Statue      ]] [16]  = 280,     --[[ Shadow Lord III Statue     ]]
                [17]  = 281,     --[[ Atomos Statue              ]] [18]  = 284,     --[[ Goobue Statue              ]]
                [19]  = 286,     --[[ Nanaa Mihgo Statue         ]] [20]  = 287,     --[[ Nanaa Mihgo II Statue      ]]
                [21]  = 27805,   --[[ Rustic Maillot +1          ]] [22]  = 28088,   --[[ Rustic Trunks +1           ]]
                [23]  = 27806,   --[[ Shoal Maillot +1           ]] [24]  = 28089,   --[[ Shoal Trunks +1            ]]
                [25]  = 14457,   --[[ Hume Gilet +1              ]] [26]  = 15415,   --[[ Hume Trunks +1             ]]
                [27]  = 14458,   --[[ Hume Top +1                ]] [28]  = 15416,   --[[ Hume Shorts +1             ]]
                [29]  = 14459,   --[[ Elvaan Gilet +1            ]] [30]  = 15417,   --[[ Elvaan Trunks +1           ]]
                [31]  = 14460,   --[[ Elvaan Top +1              ]] [32]  = 15418,   --[[ Elvaan Shorts +1           ]]
                [33]  = 14462,   --[[ Mithra Top +1              ]] [34]  = 15420,   --[[ Mithra Shorts +1           ]]
                [35]  = 14463,   --[[ Galka Gilet +1             ]] [36]  = 15421,   --[[ Galka Trunks +1            ]]
                [37]  = 14461,   --[[ Tarutaru Maillot +1        ]] [38]  = 15419,   --[[ Tarutaru Trunks +1         ]]
                [39]  = 14472,   --[[ Tarutaru Top +1            ]] [40]  = 15424,   --[[ Tarutaru Shorts +1         ]]
                [41]  = 11273,   --[[ Custom Gilet +1            ]] [42]  = 16329,   --[[ Custom Trunks +1           ]]
                [43]  = 11274,   --[[ Custom Top +1              ]] [44]  = 16330,   --[[ Custom Shorts +1           ]]
                [45]  = 11275,   --[[ Magna Gilet +1             ]] [46]  = 16331,   --[[ Magna Trunks +1            ]]
                [47]  = 11276,   --[[ Magna Top +1               ]] [48]  = 16332,   --[[ Magna Shorts +1            ]]
                [49]  = 11279,   --[[ Savage Top +1              ]] [50]  = 16335,   --[[ Savage Shorts +1           ]]
                [51]  = 11280,   --[[ Elder Gilet +1             ]] [52]  = 16336,   --[[ Elder Trunks +1            ]]
                [53]  = 11277,   --[[ Wonder Maillot +1          ]] [54]  = 16333,   --[[ Wonder Trunks +1           ]]
                [55]  = 11278,   --[[ Wonder Top +1              ]] [56]  = 16334,   --[[ Wonder Shorts +1           ]]
                [57]  = 18399,   --[[ Charm Wand +1              ]] [58]  = 18845,   --[[ Miracle Wand +1            ]]
                [59]  = 3654,    --[[ Tender Bouquet             ]] [60]  = 5681,    --[[ Cupid chocolate            ]]
                [61]  = 5884,    --[[ Rengedama                  ]] [62]  = 180,     --[[ Bonbori                    ]]
                [63]  = 215,     --[[ Festival Dolls             ]] [64]  = 5294,    --[[ Hume Rice Cake             ]]
                [65]  = 5295,    --[[ Elvaan Rice Cake           ]] [66]  = 5296,    --[[ Tarutaru Rice Cake         ]]
                [67]  = 5297,    --[[ Mithra Rice Cake           ]] [68]  = 16109,   --[[ Egg Helm                   ]]
                [69]  = 18166,   --[[ Happy Egg                  ]] [70]  = 18167,   --[[ Fortune Egg                ]]
                [71]  = 18256,   --[[ Orphic Egg                 ]] [72]  = 117,     --[[ Wing Egg                   ]]
                [73]  = 118,     --[[ Lamp Egg                   ]] [74]  = 119,     --[[ Flower Egg                 ]]
                [75]  = 197,     --[[ Clockwork Egg              ]] [76]  = 196,     --[[ Melodious Egg              ]]
                [77]  = 199,     --[[ Hatchling Egg              ]] [78]  = 179,     --[[ Jeweled Egg                ]]
                [79]  = 451,     --[[ Egg Stool                  ]] [80]  = 452,     --[[ Egg Table                  ]]
                [81]  = 453,     --[[ Egg Locker                 ]] [82]  = 454,     --[[ Egg Lantern                ]]
                [83]  = 455,     --[[ Egg Buffet                 ]] [84]  = 17830,   --[[ Wooden Katana              ]]
                [85]  = 17831,   --[[ Hardwood Katana            ]] [86]  = 18436,   --[[ Lotus Katana               ]]
                [87]  = 17748,   --[[ Ibushi Shinai              ]] [88]  = 17749,   --[[ Ibushi Shinai +1           ]]
                [89]  = 18441,   --[[ Shinai                     ]] [90]  = 3641,    --[[ Kabuto-kazari              ]]
                [91]  = 3642,    --[[ Katana-kazari              ]] [92]  = 5203,    --[[ Hume Mochi                 ]]
                [93]  = 5204,    --[[ Elvaan Mochi               ]] [94]  = 5205,    --[[ Tarutaru Mochi             ]]
                [95]  = 5206,    --[[ Galka Mochi                ]] [96]  = 18842,   --[[ Nomad Moogle Rod           ]]
                [97]  = 11355,   --[[ Dinner Jacket              ]] [98]  = 16378,   --[[ Dinner Hose                ]]
                [99]  = 11853,   --[[ Novennial Coat             ]] [99]  = 11854,   --[[ Novennial Dress            ]]
                [100] = 11956,   --[[ Novennial Hose             ]] [101] = 11957,   --[[ Novennial Boots            ]]
                [102] = 13216,   --[[ Gold Moogle Belt           ]] [103] = 15297,   --[[ Rabbit Belt                ]]
                [104] = 15298,   --[[ Worm Belt                  ]] [105] = 15299,   --[[ Mandragora Belt            ]]
                [106] = 5561,    --[[ Soilent Mog Pie (Made from adventurers who failed their sj quest by Moogles!)  ]]
                [107] = 14532,   --[[ Otoko Yukata               ]] [108] = 14533,   --[[ Onago Yukata               ]]
                [109] = 14534,   --[[ Otokogimi Yukata           ]] [110] = 14535,   --[[ Onnagimi Yukata            ]]
                [111] = 4251,    --[[ Festive Fan                ]] [112] = 4252,    --[[ Summer Fan                 ]]
                [113] = 323,     --[[ Red Bamboo Grass           ]] [114] = 324,     --[[ Blue Bamboo Grass          ]]
                [115] = 325,     --[[ Green Bamboo Grass         ]] [116] = 13821,   --[[ Lord's Yukata              ]]
                [117] = 13822,   --[[ Lady's Yukata              ]] [118] = 14532,   --[[ Otoko Yukata               ]]
                [119] = 14533,   --[[ Onago Yukata               ]] [120] = 14534,   --[[ Otokogimi Yukata           ]]
                [121] = 14535,   --[[ Onnagimi Yukata            ]] [122] = 11316,   --[[ Otokoeshi Yukata           ]]
                [123] = 11319,   --[[ Ominaeshi Yukata           ]] [124] = 11861,   --[[ Hikogami Yukata            ]]
                [125] = 11862,   --[[ Himegami Yukata            ]] [126] = 5717,    --[[ M&P Doner Kebab            ]]
                [127] = 5712,    --[[ Melon Snowcone             ]] [128] = 5709,    --[[ Cotton Candy               ]]
                [129] = 3676,    --[[ Celestial Globe            ]] [130] = 15455,   --[[ Red Sash                   ]]
                [131] = 15456,   --[[ Dash Sash                  ]] [132] = 15919,   --[[ Drover's Belt              ]]
                [133] = 415,     --[[ Aldebaran Horn             ]] [134] = 17565,   --[[ Trick Staff                ]]
                [135] = 17566,   --[[ Treat Staff                ]] [136] = 17587,   --[[ Trick Staff II             ]]
                [137] = 17588,   --[[ Treat Staff II             ]] [138] = 18103,   --[[ Pitchfork +1               ]]
                [139] = 16076,   --[[ Coven Hat                  ]] [140] = 13916,   --[[ Pumpkin Head               ]]
                [141] = 13917,   --[[ Horror Head                ]] [142] = 15176,   --[[ Pumpkin Head II            ]]
                [143] = 15177,   --[[ Horror Head II             ]] [144] = 10447,   --[[ Pyracmon Cap               ]]
                [145] = 26708,   --[[ Flan Mask +1               ]] [146] = 458,     --[[ Calabazilla Lantern        ]]
                [147] = 203,     --[[ Bomb Lantern               ]] [148] = 204,     --[[ Pumpkin Lantern            ]]
                [149] = 205,     --[[ Mandragora Lantern         ]] [150] = 3649,    --[[ Harvest Horror             ]]
                [151] = 3623,    --[[ Djinn Pricket              ]] [152] = 3624,    --[[ Korrigan Pricket           ]]
                [153] = 3646,    --[[ Mandragora Pricket         ]] [154] = 3647,    --[[ Spook-a-Swirl              ]]
                [155] = 3648,    --[[ Chocolate Grumpkin         ]] [156] = 4488,    --[[ Jack-o'-Lantern            ]]
            }
            local prizeID = dayLoot[math.random(1,100)];
            if (player:addItem(prizeID, 1)) then
                player:setVar("AnniversaryLootGet", os.time()+86400);
                player:messageSpecial(ITEM_OBTAINED, prizeID);
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, prizeID);
            end
        else
            player:SpoofMsg("Check back later. Anniversary event prizes are awarded once per earth day. ", npc, chatType.SAY, nil);
        end

        local AnniversaryBuff = math.random(1,10);
        if (player:getVar("AnniversaryBuffGet") < os.time()) then
            if (AnniversaryBuff == 1) then
                player:addStatusEffect(EFFECT_FLEE,50,0,1800);
                player:addStatusEffect(EFFECT_COSTUME,2744,0,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
                -- add costume of something....??
            elseif (AnniversaryBuff == 2) then
                player:addStatusEffect(EFFECT_REGEN, 10,1,1800);
                player:addStatusEffect(EFFECT_REFRESH, 10,1,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 3) then
                player:addStatusEffect(EFFECT_REGAIN, 10,1,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 4) then
                player:addStatusEffect(EFFECT_MAX_HP_BOOST,40,0,1800);
                player:addStatusEffect(EFFECT_MAX_MP_BOOST,40,0,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 5) then
                player:addStatusEffect(EFFECT_STR_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_DEX_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_VIT_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_AGI_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_INT_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_MND_BOOST,50,0,1800);
                player:addStatusEffect(EFFECT_CHR_BOOST,50,0,1800);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 6) then
                player:addStatusEffect(EFFECT_CHAINSPELL, 1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 7) then
                player:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 8) then
                player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 9) then
                player:addStatusEffect(EFFECT_MANAFONT,1,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            elseif (AnniversaryBuff == 10) then
                player:addStatusEffect(EFFECT_MAX_HP_BOOST,1000,0,900);
                player:addStatusEffect(EFFECT_MAX_MP_BOOST,1000,0,900);
                player:addStatusEffect(EFFECT_MIGHTY_STRIKES,1,0,900);
                player:addStatusEffect(EFFECT_HUNDRED_FISTS,1,0,900);
                player:addStatusEffect(EFFECT_CHAINSPELL,1,0,900);
                player:addStatusEffect(EFFECT_PERFECT_DODGE,1,0,900);
                player:addStatusEffect(EFFECT_INVINCIBLE,1,0,900);
                player:addStatusEffect(EFFECT_ELEMENTAL_SFORZO,1,0,900);
                player:addStatusEffect(EFFECT_MANAFONT,1,0,900);
                player:addStatusEffect(EFFECT_REGAIN,150,0,900);
                player:addStatusEffect(EFFECT_REFRESH,99,0,900);
                player:addStatusEffect(EFFECT_REGEN,99,0,900);
                player:setVar("AnniversaryBuffGet", os.time()+3600);
            end
        else
            player:PrintToPlayer("Check back later. Anniversary power-up buffs are issued once an hour. ");
            player:SpoofMsg("Have you ever heard of the legendary mog belts? In ages past we moogles had amazing girdled of magnificent kupower! ", npc, chatType.SAY, nil);
        end
    else
        player:SpoofMsg("The Anniversary Event begins December 1st and lasts to December 10th.");
        player:SpoofMsg("Have you ever heard of the legendary mog belts? In ages past we moogles had amazing girdled of magnificent kupower! ", npc, chatType.SAY, nil);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("updateRESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;
