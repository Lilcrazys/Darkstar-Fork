---------------------------------------
-- Yearly anniversary event stuffs
---------------------------------------

function getAnniversaryEventItem(player)
    local AnniversaryDayLoot =
    {
        -- [index] = itemID,
        -- 1 through 6 RSE function returns item ID
        [1]   = "RSE_TOP_A",    [2] = "RSE_TOP_B",    [3] = "RSE_TOP_C",
        [4]   = "RSE_BOTTOM_A", [5] = "RSE_BOTTOM_B", [6] = "RSE_BOTTOM_C",
        -- 7 through 127 direct item ID
        [7]   = 265,     --[[ Adamantoise Statue        ]]          [8]   = 266,     --[[ Behemoth Statue           ]]
        [9]   = 267,     --[[ Fafnir Statue             ]]          [10]  = 268,     --[[ Nomad Moogle Statue       ]]
        [11]  = 269,     --[[ Shadow Lord Statue        ]]          [12]  = 270,     --[[ Odin Statue               ]]
        [13]  = 271,     --[[ Alexander Statue          ]]          [14]  = 272,     --[[ Ark Angel Hume Statue     ]]
        [15]  = 273,     --[[ Ark Angel Elvaan Statue   ]]          [16]  = 274,     --[[ Ark Angel Tarutaru Statue ]]
        [17]  = 275,     --[[ Ark Angel Mithra Statue   ]]          [18]  = 276,     --[[ Ark Angel Galka Statue    ]]
        [19]  = 277,     --[[ Prishe Statue             ]]          [20]  = 278,     --[[ Cardian                   ]]
        [21]  = 279,     --[[ Shadow Lord II Statue     ]]          [22]  = 280,     --[[ Shadow Lord III Statue    ]]
        [23]  = 281,     --[[ Atomos Statue             ]]          [24]  = 284,     --[[ Goobue Statue             ]]
        [25]  = 286,     --[[ Nanaa Mihgo Statue        ]]          [26]  = 287,     --[[ Nanaa Mihgo II Statue     ]]
        [27]  = 18399,   --[[ Charm Wand +1             ]]          [28]  = 18845,   --[[ Miracle Wand +1           ]]
        [29]  = 3654,    --[[ Tender Bouquet            ]]          [30]  = 5681,    --[[ Cupid chocolate           ]]
        [31]  = 5884,    --[[ Rengedama                 ]]          [32]  = 180,     --[[ Bonbori                   ]]
        [33]  = 215,     --[[ Festival Dolls            ]]          [34]  = 5294,    --[[ Hume Rice Cake            ]]
        [35]  = 5295,    --[[ Elvaan Rice Cake          ]]          [36]  = 5296,    --[[ Tarutaru Rice Cake        ]]
        [37]  = 5297,    --[[ Mithra Rice Cake          ]]          [38]  = 16109,   --[[ Egg Helm                  ]]
        [39]  = 18166,   --[[ Happy Egg                 ]]          [40]  = 18167,   --[[ Fortune Egg               ]]
        [41]  = 18256,   --[[ Orphic Egg                ]]          [42]  = 117,     --[[ Wing Egg                  ]]
        [43]  = 118,     --[[ Lamp Egg                  ]]          [44]  = 119,     --[[ Flower Egg                ]]
        [45]  = 197,     --[[ Clockwork Egg             ]]          [46]  = 196,     --[[ Melodious Egg             ]]
        [47]  = 199,     --[[ Hatchling Egg             ]]          [48]  = 179,     --[[ Jeweled Egg               ]]
        [49]  = 451,     --[[ Egg Stool                 ]]          [50]  = 452,     --[[ Egg Table                 ]]
        [51]  = 453,     --[[ Egg Locker                ]]          [52]  = 454,     --[[ Egg Lantern               ]]
        [53]  = 455,     --[[ Egg Buffet                ]]          [54]  = 17830,   --[[ Wooden Katana             ]]
        [55]  = 17831,   --[[ Hardwood Katana           ]]          [56]  = 18436,   --[[ Lotus Katana              ]]
        [57]  = 17748,   --[[ Ibushi Shinai             ]]          [58]  = 17749,   --[[ Ibushi Shinai +1          ]]
        [59]  = 18441,   --[[ Shinai                    ]]          [60]  = 3641,    --[[ Kabuto-kazari             ]]
        [61]  = 3642,    --[[ Katana-kazari             ]]          [62]  = 5203,    --[[ Hume Mochi                ]]
        [63]  = 5204,    --[[ Elvaan Mochi              ]]          [64]  = 5205,    --[[ Tarutaru Mochi            ]]
        [65]  = 5206,    --[[ Galka Mochi               ]]          [66]  = 18842,   --[[ Nomad Moogle Rod          ]]
        [67]  = 11355,   --[[ Dinner Jacket             ]]          [68]  = 16378,   --[[ Dinner Hose               ]]
        [69]  = 11853,   --[[ Novennial Coat            ]]          [70]  = 11854,   --[[ Novennial Dress           ]]
        [71]  = 11956,   --[[ Novennial Hose            ]]          [72]  = 11957,   --[[ Novennial Boots           ]]
        [73]  = 13216,   --[[ Gold Moogle Belt          ]]          [74]  = 15297,   --[[ Rabbit Belt               ]]
        [75]  = 15298,   --[[ Worm Belt                 ]]          [76]  = 15299,   --[[ Mandragora Belt           ]]
        [77]  = 5561,    --[[ Soilent Mog Pie (Made from adventurers who failed their sj quest by Moogles!) ]]
        [78]  = 14532,   --[[ Otoko Yukata              ]]          [79]  = 14533,   --[[ Onago Yukata              ]]
        [80]  = 14534,   --[[ Otokogimi Yukata          ]]          [81]  = 14535,   --[[ Onnagimi Yukata           ]]
        [82]  = 4251,    --[[ Festive Fan               ]]          [83]  = 4252,    --[[ Summer Fan                ]]
        [84]  = 323,     --[[ Red Bamboo Grass          ]]          [85]  = 324,     --[[ Blue Bamboo Grass         ]]
        [86]  = 325,     --[[ Green Bamboo Grass        ]]          [87]  = 13821,   --[[ Lord's Yukata             ]]
        [88]  = 13822,   --[[ Lady's Yukata             ]]          [89]  = 14532,   --[[ Otoko Yukata              ]]
        [90]  = 14533,   --[[ Onago Yukata              ]]          [91]  = 14534,   --[[ Otokogimi Yukata          ]]
        [92]  = 14535,   --[[ Onnagimi Yukata           ]]          [93]  = 11316,   --[[ Otokoeshi Yukata          ]]
        [94]  = 11319,   --[[ Ominaeshi Yukata          ]]          [95]  = 11861,   --[[ Hikogami Yukata           ]]
        [96]  = 11862,   --[[ Himegami Yukata           ]]          [97]  = 5717,    --[[ M&P Doner Kebab           ]]
        [98]  = 5712,    --[[ Melon Snowcone            ]]          [99]  = 5709,    --[[ Cotton Candy              ]]
        [100] = 3676,    --[[ Celestial Globe           ]]          [101] = 15455,   --[[ Red Sash                  ]]
        [102] = 15456,   --[[ Dash Sash                 ]]          [103] = 15919,   --[[ Drover's Belt             ]]
        [104] = 415,     --[[ Aldebaran Horn            ]]          [105] = 17565,   --[[ Trick Staff               ]]
        [106] = 17566,   --[[ Treat Staff               ]]          [107] = 17587,   --[[ Trick Staff II            ]]
        [108] = 17588,   --[[ Treat Staff II            ]]          [109] = 18103,   --[[ Pitchfork +1              ]]
        [110] = 16076,   --[[ Coven Hat                 ]]          [111] = 13916,   --[[ Pumpkin Head              ]]
        [112] = 13917,   --[[ Horror Head               ]]          [113] = 15176,   --[[ Pumpkin Head II           ]]
        [114] = 15177,   --[[ Horror Head II            ]]          [115] = 10447,   --[[ Pyracmon Cap              ]]
        [116] = 26708,   --[[ Flan Mask +1              ]]          [117] = 458,     --[[ Calabazilla Lantern       ]]
        [118] = 203,     --[[ Bomb Lantern              ]]          [119] = 204,     --[[ Pumpkin Lantern           ]]
        [120] = 205,     --[[ Mandragora Lantern        ]]          [121] = 3649,    --[[ Harvest Horror            ]]
        [122] = 3623,    --[[ Djinn Pricket             ]]          [123] = 3624,    --[[ Korrigan Pricket          ]]
        [124] = 3646,    --[[ Mandragora Pricket        ]]          [125] = 3647,    --[[ Spook-a-Swirl             ]]
        [126] = 3648,    --[[ Chocolate Grumpkin        ]]          [127] = 4488,    --[[ Jack-o'-Lantern           ]]
        -- [index] = itemID,
    }
    local prizeID = nil;
    local random = math.random(1,127);
    if (random < 7) then
        prizeID = getAnniversaryEventItemRSE(player, AnniversaryDayLoot[random]);
    else
        prizeID = AnniversaryDayLoot[random];
    end

    return prizeID;
end;

function getAnniversaryEventItemRSE(player, setName)
    -- This is ugly but I don't got time to redo this anytime soon..
    local rseTable = {};
    if (setName == "RSE_TOP_A") then
        rseTable = {
            [1]=14457, --[[ Hume Gilet +1       ]] [2]=14458, -- [[ Hume Top +1     ]]
            [3]=14459, --[[ Elvaan Gilet +1     ]] [4]=14460, -- [[ Elvaan Top +1   ]]
            [5]=14461, --[[ Tarutaru Maillot +1 ]] [6]=14472, -- [[ Tarutaru Top +1 ]]
            [7]=14462, --[[ Mithra Top +1       ]] [8]=14463, -- [[ Galka Gilet +1  ]]
        }
    elseif (setName == "RSE_TOP_B") then
        rseTable = {
            [1]=11273, --[[ Custom Gilet +1   ]] [2]=11274, -- [[ Custom Top +1  ]]
            [3]=11275, --[[ Magna Gilet +1    ]] [4]=11276, -- [[ Magna Top +1   ]]
            [5]=11277, --[[ Wonder Maillot +1 ]] [6]=11278, -- [[ Wonder Top +1  ]]
            [7]=11279, --[[ Savage Top +1     ]] [8]=11280, -- [[ Elder Gilet +1 ]]
        }
    elseif (setName == "RSE_TOP_C") then
        rseTable = {
            [1]=27805, --[[ Rustic Maillot +1 ]] [2]=27806, -- [[ Shoal Maillot +1  ]]
            [3]=27805, --[[ Rustic Maillot +1 ]] [4]=27806, -- [[ Shoal Maillot +1  ]]
            [5]=27805, --[[ Rustic Maillot +1 ]] [6]=27806, -- [[ Shoal Maillot +1  ]]
            [7]=27806, --[[ Shoal Maillot +1  ]] [8]=27805, -- [[ Rustic Maillot +1 ]]
        }
    elseif (setName == "RSE_BOTTOM_A") then
        rseTable = {
            [1]=15415, --[[ Hume Trunks +1     ]] [2]=15416, -- [[ Hume Shorts +1     ]]
            [3]=15417, --[[ Elvaan Trunks +1   ]] [4]=15418, -- [[ Elvaan Shorts +1   ]]
            [5]=15419, --[[ Tarutaru Trunks +1 ]] [6]=15424, -- [[ Tarutaru Shorts +1 ]]
            [7]=15420, --[[ Mithra Shorts +1   ]] [8]=15421, -- [[ Galka Trunks +1    ]]
        }
    elseif (setName == "RSE_BOTTOM_B") then
        rseTable = {
            [1]=16329, --[[ Custom Trunks +1 ]] [2]=16330, -- [[ Custom Shorts +1 ]]
            [3]=16331, --[[ Magna Trunks +1  ]] [4]=16332, -- [[ Magna Shorts +1  ]]
            [5]=16333, --[[ Wonder Trunks +1 ]] [6]=16334, -- [[ Wonder Shorts +1 ]]
            [7]=16335, --[[ Savage Shorts +1 ]] [8]=16336, -- [[ Elder Trunks +1  ]]
        }
    elseif (setName == "RSE_BOTTOM_C") then
        rseTable = {
            [1]=28088, --[[ Rustic Trunks +1 ]] [2]=28089, -- [[ Shoal Trunks +1  ]]
            [3]=28088, --[[ Rustic Trunks +1 ]] [4]=28089, -- [[ Shoal Trunks +1  ]]
            [5]=28088, --[[ Rustic Trunks +1 ]] [6]=28089, -- [[ Shoal Trunks +1  ]]
            [7]=28089, --[[ Shoal Trunks +1  ]] [8]=28088, -- [[ Rustic Trunks +1 ]]
        }
    end

    local race = player:getRace();
    -- HM=1, HF=2, EM=3, EF=4, TM=5, TF=6, MI=7, GA=8

    return rseTable[race];
end;
