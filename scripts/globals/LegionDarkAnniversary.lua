---------------------------------------
-- Yearly anniversary event stuffs
---------------------------------------

function getAnniversaryEventItem(player)
    local AnniversaryDayLoot =
    {
        -- [index] = itemID,
        -- 1 through 15 pass string to RSE which function returns item ID
        [1]   = "RSE_TOP_A",     [2]  = "RSE_TOP_B",        [3]  = "RSE_TOP_C",
        [4]   = "RSE_BOTTOM_A",  [5]  = "RSE_BOTTOM_B",     [6]  = "RSE_BOTTOM_C",
        [7]   = "NOVENNIAL_TOP", [8]  = "NOVENNIAL_BOTTOM", [9]  = "YUKAYA_A",
        [10]  = "YUKATA_B",      [11] = "YUKATA_C",         [12] = "YUKATA_D",
        [13]  = "YUKAYA_E",      [14] = "YUKATA_F",         [15] = "YUKATA_G",
        -- 16 through 127 direct item ID
        [16]  = 265,     --[[ Adamantoise Statue        ]]  [17]  = 266,     --[[ Behemoth Statue           ]]
        [18]  = 267,     --[[ Fafnir Statue             ]]  [19]  = 268,     --[[ Nomad Moogle Statue       ]]
        [20]  = 269,     --[[ Shadow Lord Statue        ]]  [21]  = 270,     --[[ Odin Statue               ]]
        [22]  = 271,     --[[ Alexander Statue          ]]  [23]  = 272,     --[[ Ark Angel Hume Statue     ]]
        [24]  = 273,     --[[ Ark Angel Elvaan Statue   ]]  [25]  = 274,     --[[ Ark Angel Tarutaru Statue ]]
        [26]  = 275,     --[[ Ark Angel Mithra Statue   ]]  [27]  = 276,     --[[ Ark Angel Galka Statue    ]]
        [28]  = 277,     --[[ Prishe Statue             ]]  [29]  = 278,     --[[ Cardian                   ]]
        [30]  = 279,     --[[ Shadow Lord II Statue     ]]  [31]  = 280,     --[[ Shadow Lord III Statue    ]]
        [32]  = 281,     --[[ Atomos Statue             ]]  [33]  = 284,     --[[ Goobue Statue             ]]
        [34]  = 286,     --[[ Nanaa Mihgo Statue        ]]  [35]  = 287,     --[[ Nanaa Mihgo II Statue     ]]
        [36]  = 18399,   --[[ Charm Wand +1             ]]  [37]  = 18845,   --[[ Miracle Wand +1           ]]
        [38]  = 3654,    --[[ Tender Bouquet            ]]  [39]  = 5681,    --[[ Cupid chocolate           ]]
        [40]  = 5884,    --[[ Rengedama                 ]]  [41]  = 180,     --[[ Bonbori                   ]]
        [42]  = 215,     --[[ Festival Dolls            ]]  [43]  = 5294,    --[[ Hume Rice Cake            ]]
        [44]  = 5295,    --[[ Elvaan Rice Cake          ]]  [45]  = 5296,    --[[ Tarutaru Rice Cake        ]]
        [46]  = 5297,    --[[ Mithra Rice Cake          ]]  [47]  = 16109,   --[[ Egg Helm                  ]]
        [48]  = 18166,   --[[ Happy Egg                 ]]  [49]  = 18167,   --[[ Fortune Egg               ]]
        [50]  = 18256,   --[[ Orphic Egg                ]]  [51]  = 117,     --[[ Wing Egg                  ]]
        [52]  = 118,     --[[ Lamp Egg                  ]]  [53]  = 119,     --[[ Flower Egg                ]]
        [54]  = 197,     --[[ Clockwork Egg             ]]  [55]  = 196,     --[[ Melodious Egg             ]]
        [56]  = 199,     --[[ Hatchling Egg             ]]  [57]  = 179,     --[[ Jeweled Egg               ]]
        [58]  = 451,     --[[ Egg Stool                 ]]  [59]  = 452,     --[[ Egg Table                 ]]
        [60]  = 453,     --[[ Egg Locker                ]]  [61]  = 454,     --[[ Egg Lantern               ]]
        [62]  = 455,     --[[ Egg Buffet                ]]  [63]  = 17830,   --[[ Wooden Katana             ]]
        [64]  = 17831,   --[[ Hardwood Katana           ]]  [65]  = 18436,   --[[ Lotus Katana              ]]
        [66]  = 17748,   --[[ Ibushi Shinai             ]]  [67]  = 17749,   --[[ Ibushi Shinai +1          ]]
        [68]  = 18441,   --[[ Shinai                    ]]  [69]  = 3641,    --[[ Kabuto-kazari             ]]
        [70]  = 3642,    --[[ Katana-kazari             ]]  [71]  = 5203,    --[[ Hume Mochi                ]]
        [72]  = 5204,    --[[ Elvaan Mochi              ]]  [73]  = 5205,    --[[ Tarutaru Mochi            ]]
        [74]  = 5206,    --[[ Galka Mochi               ]]  [75]  = 18842,   --[[ Nomad Moogle Rod          ]]
        [76]  = 11355,   --[[ Dinner Jacket             ]]  [77]  = 16378,   --[[ Dinner Hose               ]]
        [78]  = 13216,   --[[ Gold Moogle Belt          ]]  [79]  = 15297,   --[[ Rabbit Belt               ]]
        [80]  = 15298,   --[[ Worm Belt                 ]]  [81]  = 15299,   --[[ Mandragora Belt           ]]
        [82]  = 5561,    --[[ Soilent Mog Pie (Made from adventurers who failed their sj quest by Moogles!) ]]
        [83]  = 4251,    --[[ Festive Fan               ]]  [84]  = 4252,    --[[ Summer Fan                ]]
        [85]  = 323,     --[[ Red Bamboo Grass          ]]  [86]  = 324,     --[[ Blue Bamboo Grass         ]]
        [87]  = 325,     --[[ Green Bamboo Grass        ]]  [88]  = 5717,    --[[ M&P Doner Kebab           ]]
        [89]  = 5712,    --[[ Melon Snowcone            ]]  [90]  = 5709,    --[[ Cotton Candy              ]]
        [91]  = 3676,    --[[ Celestial Globe           ]]  [92] = 15455,    --[[ Red Sash                  ]]
        [93]  = 15456,   --[[ Dash Sash                 ]]  [94] = 15919,    --[[ Drover's Belt             ]]
        [95]  = 415,     --[[ Aldebaran Horn            ]]  [96] = 17565,    --[[ Trick Staff               ]]
        [97]  = 17566,   --[[ Treat Staff               ]]  [98] = 17587,    --[[ Trick Staff II            ]]
        [99]  = 17588,   --[[ Treat Staff II            ]]  [100] = 18103,   --[[ Pitchfork +1              ]]
        [101] = 16076,   --[[ Coven Hat                 ]]  [102] = 13916,   --[[ Pumpkin Head              ]]
        [103] = 13917,   --[[ Horror Head               ]]  [104] = 15176,   --[[ Pumpkin Head II           ]]
        [105] = 15177,   --[[ Horror Head II            ]]  [106] = 10447,   --[[ Pyracmon Cap              ]]
        [107] = 26708,   --[[ Flan Mask +1              ]]  [108] = 458,     --[[ Calabazilla Lantern       ]]
        [109] = 203,     --[[ Bomb Lantern              ]]  [110] = 204,     --[[ Pumpkin Lantern           ]]
        [121] = 205,     --[[ Mandragora Lantern        ]]  [122] = 3649,    --[[ Harvest Horror            ]]
        [123] = 3623,    --[[ Djinn Pricket             ]]  [124] = 3624,    --[[ Korrigan Pricket          ]]
        [125] = 3646,    --[[ Mandragora Pricket        ]]  [126] = 3647,    --[[ Spook-a-Swirl             ]]
        [127] = 3648,    --[[ Chocolate Grumpkin        ]]  [128] = 4488,    --[[ Jack-o'-Lantern           ]]
        -- [index] = itemID,
    }
    local prizeID = nil;
    local random = math.random(1,127);
    if (random < 16) then
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
    -- Below here are just gender specific and later I'll move those to not check 8 values for 2 things..But again, in a hurry..
    elseif (setName == "NOVENNIAL_TOP") then
        rseTable = {
            [1]=11853, --[[ Novennial Coat  ]] [2]=11854, -- [[ Novennial Dress ]]
            [3]=11853, --[[ Novennial Coat  ]] [4]=11854, -- [[ Novennial Dress ]]
            [5]=11853, --[[ Novennial Coat  ]] [6]=11854, -- [[ Novennial Dress ]]
            [7]=11854, --[[ Novennial Dress ]] [8]=11853, -- [[ Novennial Coat  ]]
        }
    elseif (setName == "NOVENNIAL_BOTTOM") then
        rseTable = {
            [1]=11956, --[[ Novennial Hose  ]] [2]=11957, -- [[ Novennial Boots ]]
            [3]=11956, --[[ Novennial Hose  ]] [4]=11957, -- [[ Novennial Boots ]]
            [5]=11956, --[[ Novennial Hose  ]] [6]=11957, -- [[ Novennial Boots ]]
            [7]=11957, --[[ Novennial Boots ]] [8]=11956, -- [[ Novennial Hose  ]]
        }
    elseif (setName == "YUKAYA_A") then
        rseTable = {
            [1]=11861, --[[ Hikogami Yukata ]] [2]=11862, -- [[ Himegami Yukata ]]
            [3]=11861, --[[ Hikogami Yukata ]] [4]=11862, -- [[ Himegami Yukata ]]
            [5]=11861, --[[ Hikogami Yukata ]] [6]=11862, -- [[ Himegami Yukata ]]
            [7]=11862, --[[ Himegami Yukata ]] [8]=11861, -- [[ Hikogami Yukata ]]
        }
        [87]  = 13821,   --[[ Lord's Yukata             ]]
        [88]  = 13822,   --[[ Lady's Yukata             ]]
    elseif (setName == "YUKATA_B") then
        rseTable = {
            [1]=11861, --[[ Hikogami Yukata ]] [2]=11862, -- [[ Himegami Yukata ]]
            [3]=11861, --[[ Hikogami Yukata ]] [4]=11862, -- [[ Himegami Yukata ]]
            [5]=11861, --[[ Hikogami Yukata ]] [6]=11862, -- [[ Himegami Yukata ]]
            [7]=11862, --[[ Himegami Yukata ]] [8]=11861, -- [[ Hikogami Yukata ]]
        }
        [89]  = 14532,   --[[ Otoko Yukata              ]]
        [90]  = 14533,   --[[ Onago Yukata              ]]
    elseif (setName == "YUKATA_C") then
        rseTable = {
            [1]=11861, --[[ Hikogami Yukata ]] [2]=11862, -- [[ Himegami Yukata ]]
            [3]=11861, --[[ Hikogami Yukata ]] [4]=11862, -- [[ Himegami Yukata ]]
            [5]=11861, --[[ Hikogami Yukata ]] [6]=11862, -- [[ Himegami Yukata ]]
            [7]=11862, --[[ Himegami Yukata ]] [8]=11861, -- [[ Hikogami Yukata ]]
        }
        [91]  = 14534,   --[[ Otokogimi Yukata          ]]
        [92]  = 14535,   --[[ Onnagimi Yukata           ]]
    elseif (setName == "YUKATA_D") then
        rseTable = {
            [1]=11861, --[[ Hikogami Yukata ]] [2]=11862, -- [[ Himegami Yukata ]]
            [3]=11861, --[[ Hikogami Yukata ]] [4]=11862, -- [[ Himegami Yukata ]]
            [5]=11861, --[[ Hikogami Yukata ]] [6]=11862, -- [[ Himegami Yukata ]]
            [7]=11862, --[[ Himegami Yukata ]] [8]=11861, -- [[ Hikogami Yukata ]]
        }
        [93]  = 11316,   --[[ Otokoeshi Yukata          ]]
        [94]  = 11319,   --[[ Ominaeshi Yukata          ]]
    elseif (setName == "YUKATA_E") then
        rseTable = {
            [1]=11861, --[[ Hikogami Yukata ]] [2]=11862, -- [[ Himegami Yukata ]]
            [3]=11861, --[[ Hikogami Yukata ]] [4]=11862, -- [[ Himegami Yukata ]]
            [5]=11861, --[[ Hikogami Yukata ]] [6]=11862, -- [[ Himegami Yukata ]]
            [7]=11862, --[[ Himegami Yukata ]] [8]=11861, -- [[ Hikogami Yukata ]]
        }
    elseif (setName == "YUKATA_F") then
        rseTable = {
            [1]=14532, --[[ Otoko Yukata ]] [2]=14533, -- [[ Onago Yukata ]]
            [3]=14532, --[[ Otoko Yukata ]] [4]=14533, -- [[ Onago Yukata ]]
            [5]=14532, --[[ Otoko Yukata ]] [6]=14533, -- [[ Onago Yukata ]]
            [7]=14533, --[[ Onago Yukata ]] [8]=14532, -- [[ Otoko Yukata ]]
        }
    elseif (setName == "YUKATA_G") then
        rseTable = {
            [1]=14534, --[[ Otokogimi Yukata ]] [2]=14535, -- [[ Onnagimi Yukata  ]]
            [3]=14534, --[[ Otokogimi Yukata ]] [4]=14535, -- [[ Onnagimi Yukata  ]]
            [5]=14534, --[[ Otokogimi Yukata ]] [6]=14535, -- [[ Onnagimi Yukata  ]]
            [7]=14535, --[[ Onnagimi Yukata  ]] [8]=14534, -- [[ Otokogimi Yukata ]]
        }
    end

    local race = player:getRace();
    -- HM=1, HF=2, EM=3, EF=4, TM=5, TF=6, MI=7, GA=8

    return rseTable[race];
end;
