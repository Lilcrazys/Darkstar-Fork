---------------------------------------
-- Yearly anniversary event stuffs
---------------------------------------

function getAnniversaryEventItem(player)
    local AnniversaryDayLoot =
    {
        -- [index] = itemID,
        -- 1 through 15 pass string to RSE which function returns item ID
        [1]   = "RSE_TOP_A",     [2]  = "RSE_BOTTOM_A",  -- Swimwear
        [3]   = "RSE_TOP_B",     [4]  = "RSE_BOTTOM_B",  -- Swimwear
        [5]   = "GSE_TOP",       [6]  = "GSE_BOTTOM",    -- Swimwear
        [7]   = "NOVENNIAL_TOP", [8]  = "NOVENNIAL_BOTTOM", [9]  = "YUKAYA_A",
        [10]  = "YUKATA_B",      [11] = "YUKATA_C",         [12] = "YUKATA_D",
        [13]  = "YUKATA_E",      [14] = "YUKATA_F",         [15] = "YUKATA_G",
        -- 16 through 127 direct item ID
        [16]  = 265,     --[[ Adamantoise Statue       ]]   [17]  = 266,     --[[ Behemoth Statue           ]]
        [18]  = 267,     --[[ Fafnir Statue            ]]   [19]  = 268,     --[[ Nomad Moogle Statue       ]]
        [20]  = 269,     --[[ Shadow Lord Statue       ]]   [21]  = 270,     --[[ Odin Statue               ]]
        [22]  = 271,     --[[ Alexander Statue         ]]   [23]  = 272,     --[[ Ark Angel Hume Statue     ]]
        [24]  = 273,     --[[ Ark Angel Elvaan Statue  ]]   [25]  = 274,     --[[ Ark Angel Tarutaru Statue ]]
        [26]  = 275,     --[[ Ark Angel Mithra Statue  ]]   [27]  = 276,     --[[ Ark Angel Galka Statue    ]]
        [28]  = 277,     --[[ Prishe Statue            ]]   [29]  = 278,     --[[ Cardian                   ]]
        [30]  = 279,     --[[ Shadow Lord II Statue    ]]   [31]  = 280,     --[[ Shadow Lord III Statue    ]]
        [32]  = 281,     --[[ Atomos Statue            ]]   [33]  = 284,     --[[ Goobue Statue             ]]
        [34]  = 286,     --[[ Nanaa Mihgo Statue       ]]   [35]  = 287,     --[[ Nanaa Mihgo II Statue     ]]
        [36]  = 18399,   --[[ Charm Wand +1            ]]   [37]  = 18845,   --[[ Miracle Wand +1           ]]
        [38]  = 3654,    --[[ Tender Bouquet           ]]   [39]  = 5681,    --[[ Cupid chocolate           ]]
        [40]  = 5884,    --[[ Rengedama                ]]   [41]  = 180,     --[[ Bonbori                   ]]
        [42]  = 215,     --[[ Festival Dolls           ]]   [43]  = 5294,    --[[ Hume Rice Cake            ]]
        [44]  = 5295,    --[[ Elvaan Rice Cake         ]]   [45]  = 5296,    --[[ Tarutaru Rice Cake        ]]
        [46]  = 5297,    --[[ Mithra Rice Cake         ]]   [47]  = 16109,   --[[ Egg Helm                  ]]
        [48]  = 18166,   --[[ Happy Egg                ]]   [49]  = 18167,   --[[ Fortune Egg               ]]
        [50]  = 18256,   --[[ Orphic Egg               ]]   [51]  = 117,     --[[ Wing Egg                  ]]
        [52]  = 118,     --[[ Lamp Egg                 ]]   [53]  = 119,     --[[ Flower Egg                ]]
        [54]  = 197,     --[[ Clockwork Egg            ]]   [55]  = 196,     --[[ Melodious Egg             ]]
        [56]  = 199,     --[[ Hatchling Egg            ]]   [57]  = 179,     --[[ Jeweled Egg               ]]
        [58]  = 451,     --[[ Egg Stool                ]]   [59]  = 452,     --[[ Egg Table                 ]]
        [60]  = 453,     --[[ Egg Locker               ]]   [61]  = 454,     --[[ Egg Lantern               ]]
        [62]  = 455,     --[[ Egg Buffet               ]]   [63]  = 17830,   --[[ Wooden Katana             ]]
        [64]  = 17831,   --[[ Hardwood Katana          ]]   [65]  = 18436,   --[[ Lotus Katana              ]]
        [66]  = 17748,   --[[ Ibushi Shinai            ]]   [67]  = 17749,   --[[ Ibushi Shinai +1          ]]
        [68]  = 18441,   --[[ Shinai                   ]]   [69]  = 3641,    --[[ Kabuto-kazari             ]]
        [70]  = 3642,    --[[ Katana-kazari            ]]   [71]  = 5203,    --[[ Hume Mochi                ]]
        [72]  = 5204,    --[[ Elvaan Mochi             ]]   [73]  = 5205,    --[[ Tarutaru Mochi            ]]
        [74]  = 5206,    --[[ Galka Mochi              ]]   [75]  = 18842,   --[[ Nomad Moogle Rod          ]]
        [76]  = 11355,   --[[ Dinner Jacket            ]]   [77]  = 16378,   --[[ Dinner Hose               ]]
        [78]  = 13216,   --[[ Gold Moogle Belt         ]]   [79]  = 15297,   --[[ Rabbit Belt               ]]
        [80]  = 15298,   --[[ Worm Belt                ]]   [81]  = 15299,   --[[ Mandragora Belt           ]]
        [82]  = 5561,    --[[ Soilent Mog Pie (Made from adventurers who failed their sj quest by Moogles!) ]]
        [83]  = 4251,    --[[ Festive Fan              ]]   [84]  = 4252,    --[[ Summer Fan                ]]
        [85]  = 323,     --[[ Red Bamboo Grass         ]]   [86]  = 324,     --[[ Blue Bamboo Grass         ]]
        [87]  = 325,     --[[ Green Bamboo Grass       ]]   [88]  = 5717,    --[[ M&P Doner Kebab           ]]
        [89]  = 5712,    --[[ Melon Snowcone           ]]   [90]  = 5709,    --[[ Cotton Candy              ]]
        [91]  = 3676,    --[[ Celestial Globe          ]]   [92]  = 15455,   --[[ Red Sash                  ]]
        [93]  = 15456,   --[[ Dash Sash                ]]   [94]  = 15919,   --[[ Drover's Belt             ]]
        [95]  = 415,     --[[ Aldebaran Horn           ]]   [96]  = 17565,   --[[ Trick Staff               ]]
        [97]  = 17566,   --[[ Treat Staff              ]]   [98]  = 17587,   --[[ Trick Staff II            ]]
        [99]  = 17588,   --[[ Treat Staff II           ]]   [100] = 18103,   --[[ Pitchfork +1              ]]
        [101] = 16076,   --[[ Coven Hat                ]]   [102] = 13916,   --[[ Pumpkin Head              ]]
        [103] = 13917,   --[[ Horror Head              ]]   [104] = 15176,   --[[ Pumpkin Head II           ]]
        [105] = 15177,   --[[ Horror Head II           ]]   [106] = 10447,   --[[ Pyracmon Cap              ]]
        [107] = 26708,   --[[ Flan Mask +1             ]]   [108] = 458,     --[[ Calabazilla Lantern       ]]
        [109] = 203,     --[[ Bomb Lantern             ]]   [110] = 204,     --[[ Pumpkin Lantern           ]]
        [111] = 205,     --[[ Mandragora Lantern       ]]   [112] = 3649,    --[[ Harvest Horror            ]]
        [113] = 3623,    --[[ Djinn Pricket            ]]   [114] = 3624,    --[[ Korrigan Pricket          ]]
        [115] = 3646,    --[[ Mandragora Pricket       ]]   [116] = 3647,    --[[ Spook-a-Swirl             ]]
        [117] = 3648,    --[[ Chocolate Grumpkin       ]]   [118] = 4488,    --[[ Jack-o'-Lantern           ]]
        -- [index] = itemID,
    }
    local prizeID = nil;
    local random = math.random(1,118);
    if (random < 16) then
        prizeID = getAnniversaryEventItemRSE(player, AnniversaryDayLoot[random]);
    else
        prizeID = AnniversaryDayLoot[random];
        if (prizeID == nil) then
            player:PrintToPlayer(string.format("item data set: '%d'.", random));
        end
    end

    return prizeID;
end;

function getAnniversaryEventItemRSE(player, setName)
    -- HM=1, HF=2, EM=3, EF=4, TM=5, TF=6, MI=7, GA=8
    local race = player:getRace();

    -- female = 0, male = 1
    local gender = player:getGender();

    -- This is ugly but I don't got time to redo this anytime soon..
    local rseTable = {};
    if (setName == "RSE_TOP_A") then
        rseTable = {
            [1]=14457, --[[ Hume Gilet +1       ]] [2]=14458, -- [[ Hume Top +1     ]]
            [3]=14459, --[[ Elvaan Gilet +1     ]] [4]=14460, -- [[ Elvaan Top +1   ]]
            [5]=14461, --[[ Tarutaru Maillot +1 ]] [6]=14472, -- [[ Tarutaru Top +1 ]]
            [7]=14462, --[[ Mithra Top +1       ]] [8]=14463, -- [[ Galka Gilet +1  ]]
        }
    elseif (setName == "RSE_BOTTOM_A") then
        rseTable = {
            [1]=15415, --[[ Hume Trunks +1     ]] [2]=15416, -- [[ Hume Shorts +1     ]]
            [3]=15417, --[[ Elvaan Trunks +1   ]] [4]=15418, -- [[ Elvaan Shorts +1   ]]
            [5]=15419, --[[ Tarutaru Trunks +1 ]] [6]=15424, -- [[ Tarutaru Shorts +1 ]]
            [7]=15420, --[[ Mithra Shorts +1   ]] [8]=15421, -- [[ Galka Trunks +1    ]]
        }
    elseif (setName == "RSE_TOP_B") then
        rseTable = {
            [1]=11273, --[[ Custom Gilet +1   ]] [2]=11274, -- [[ Custom Top +1  ]]
            [3]=11275, --[[ Magna Gilet +1    ]] [4]=11276, -- [[ Magna Top +1   ]]
            [5]=11277, --[[ Wonder Maillot +1 ]] [6]=11278, -- [[ Wonder Top +1  ]]
            [7]=11279, --[[ Savage Top +1     ]] [8]=11280, -- [[ Elder Gilet +1 ]]
        }
    elseif (setName == "RSE_BOTTOM_B") then
        rseTable = {
            [1]=16329, --[[ Custom Trunks +1 ]] [2]=16330, -- [[ Custom Shorts +1 ]]
            [3]=16331, --[[ Magna Trunks +1  ]] [4]=16332, -- [[ Magna Shorts +1  ]]
            [5]=16333, --[[ Wonder Trunks +1 ]] [6]=16334, -- [[ Wonder Shorts +1 ]]
            [7]=16335, --[[ Savage Shorts +1 ]] [8]=16336, -- [[ Elder Trunks +1  ]]
        }
    -- Below here are just gender specific..Again ugly, but in a hurry..
    elseif (setName == "GSE_TOP") then
        if (gender == 1) then
            return 27805; -- Rustic Maillot +1
        else
            return 27806; -- Shoal Maillot +1
        end
    elseif (setName == "GSE_BOTTOM") then
        if (gender == 1) then
            return 28088; -- Rustic Trunks +1
        else
            return 28089; -- Shoal Trunks +1
        end
    elseif (setName == "NOVENNIAL_TOP") then
        if (gender == 1) then
            return 11853; -- Novennial Coat
        else
            return 11854; -- Novennial Dress
        end
    elseif (setName == "NOVENNIAL_BOTTOM") then
        if (gender == 1) then
            return 11956; -- Novennial Hose
        else
            return 11957; -- Novennial Boots
        end
    elseif (setName == "YUKAYA_A") then
        if (gender == 1) then
            return 13821; -- Lord's Yukata
        else
            return 13822; -- Lady's Yukata
        end
    elseif (setName == "YUKATA_B") then
        if (gender == 1) then
            return 14532; -- Otoko Yukata
        else
            return 14533; -- Onago Yukata
        end
    elseif (setName == "YUKATA_C") then
        if (gender == 1) then
            return 14534; -- Otokogimi Yukata
        else
            return 14535; -- Onnagimi Yukata
        end
    elseif (setName == "YUKATA_D") then
        if (gender == 1) then
            return 11316; -- Otokoeshi Yukata
        else
            return 11319; -- Ominaeshi Yukata
        end
    elseif (setName == "YUKATA_E") then
        if (gender == 1) then
            return 11861; -- Hikogami Yukata
        else
            return 11862; -- Himegami Yukata
        end
    elseif (setName == "YUKATA_F") then
        if (gender == 1) then
            return 14532; -- Otoko Yukata
        else
            return 14533; -- Onago Yukata
        end
    elseif (setName == "YUKATA_G") then
        if (gender == 1) then
            return 14534; -- Otokogimi Yukata
        else
            return 14535; -- Onnagimi Yukata
        end
    else
        player:PrintToPlayer(string.format("Error occurred: invalid RSE check '%s'.", setName));
        return nil;
    end

    return rseTable[race];
end;
