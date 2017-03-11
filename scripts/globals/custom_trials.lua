-----------------------------------
-- Functions for LegionDS custom trials content
-----------------------------------
require("scripts/globals/status"); -- Needed for Equip Slot global var defs.
require("scripts/globals/spoofchat"); -- Needed for chat message type defs.
-----------------------------------


custom_trials =
{
    -- base = {reward, stage,  type,      tradeItem, totalNeeded} -- Description comment
    [15070] = {r=16196, s=1, t="relic",    trade=0,    count=9},  -- Aegis T1>T2
    [16196] = {r=16198, s=2, t="relic",    trade=0,    count=9},  -- Aegis T2>T3
    [16198] = {r=11927, s=3, t="relic",    trade=0,    count=9},  -- Aegis T3>T4
    [11927] = {r=16200, s=4, t="relic",    trade=3925, count=50}, -- Aegis T4>T5
    [18318] = {r=18646, s=1, t="relic",    trade=0,    count=9},  -- Amanomurakumo T1>T2
    [18646] = {r=18674, s=2, t="relic",    trade=0,    count=9},  -- Amanomurakumo T2>T3
    [18674] = {r=19755, s=3, t="relic",    trade=0,    count=9},  -- Amanomurakumo T3>T4
    [19755] = {r=21016, s=4, t="relic",    trade=3925, count=50}, -- Amanomurakumo T4>T5
    [18336] = {r=18649, s=1, t="relic",    trade=0,    count=9},  -- Annihilator T1>T2
    [18649] = {r=18677, s=2, t="relic",    trade=0,    count=9},  -- Annihilator T2>T3
    [18677] = {r=19758, s=3, t="relic",    trade=0,    count=9},  -- Annihilator T3>T4
    [19758] = {r=21261, s=4, t="relic",    trade=3925, count=50}, -- Annihilator T4>T5
    [18306] = {r=18644, s=1, t="relic",    trade=0,    count=9},  -- Apocalypse T1>T2
    [18644] = {r=18672, s=2, t="relic",    trade=0,    count=9},  -- Apocalypse T2>T3
    [18672] = {r=19753, s=3, t="relic",    trade=0,    count=9},  -- Apocalypse T3>T4
    [19753] = {r=20881, s=4, t="relic",    trade=3925, count=50}, -- Apocalypse T4>T5
    [18294] = {r=18642, s=1, t="relic",    trade=0,    count=9},  -- Bravura T1>T2
    [18642] = {r=18670, s=2, t="relic",    trade=0,    count=9},  -- Bravura T2>T3
    [18670] = {r=19751, s=3, t="relic",    trade=0,    count=9},  -- Bravura T3>T4
    [19751] = {r=20836, s=4, t="relic",    trade=3925, count=50}, -- Bravura T4>T5
    [18330] = {r=18648, s=1, t="relic",    trade=0,    count=9},  -- Claustrum T1>T2
    [18648] = {r=18676, s=2, t="relic",    trade=0,    count=9},  -- Claustrum T2>T3
    [18676] = {r=19757, s=3, t="relic",    trade=0,    count=9},  -- Claustrum T3>T4
    [19757] = {r=21136, s=4, t="relic",    trade=3925, count=50}, -- Claustrum T4>T5
    [18276] = {r=18639, s=1, t="relic",    trade=0,    count=9},  -- Excalibur T1>T2
    [18639] = {r=18667, s=2, t="relic",    trade=0,    count=9},  -- Excalibur T2>T3
    [18667] = {r=19748, s=3, t="relic",    trade=0,    count=9},  -- Excalibur T3>T4
    [19748] = {r=20646, s=4, t="relic",    trade=3925, count=50}, -- Excalibur T4>T5
    [18342] = {r=18578, s=1, t="relic",    trade=0,    count=9},  -- Gjallarhorn T1>T2
    [18578] = {r=18580, s=2, t="relic",    trade=0,    count=9},  -- Gjallarhorn T2>T3
    [18580] = {r=18572, s=3, t="relic",    trade=0,    count=9},  -- Gjallarhorn T3>T4
    [18572] = {r=18840, s=4, t="relic",    trade=3925, count=50}, -- Gjallarhorn T4>T5
    [18300] = {r=18643, s=1, t="relic",    trade=0,    count=9},  -- Gungnir T1>T2
    [18643] = {r=18671, s=2, t="relic",    trade=0,    count=9},  -- Gungnir T2>T3
    [18671] = {r=19752, s=3, t="relic",    trade=0,    count=9},  -- Gungnir T3>T4
    [19752] = {r=20962, s=4, t="relic",    trade=3925, count=50}, -- Gungnir T4>T5
    [18288] = {r=18641, s=1, t="relic",    trade=0,    count=9},  -- Guttler T1>T2
    [18641] = {r=18669, s=2, t="relic",    trade=0,    count=9},  -- Guttler T2>T3
    [18669] = {r=19750, s=3, t="relic",    trade=0,    count=9},  -- Guttler T3>T4
    [19750] = {r=20791, s=4, t="relic",    trade=3925, count=50}, -- Guttler T4>T5
    [18312] = {r=18645, s=1, t="relic",    trade=0,    count=9},  -- Kikoku T1>T2
    [18645] = {r=18673, s=2, t="relic",    trade=0,    count=9},  -- Kikoku T2>T3
    [18673] = {r=19754, s=3, t="relic",    trade=0,    count=9},  -- Kikoku T3>T4
    [19754] = {r=20971, s=4, t="relic",    trade=3925, count=50}, -- Kikoku T4>T5
    [18270] = {r=18638, s=1, t="relic",    trade=0,    count=9},  -- Mandau T1>T2
    [18638] = {r=18666, s=2, t="relic",    trade=0,    count=9},  -- Mandau T2>T3
    [18666] = {r=19747, s=3, t="relic",    trade=0,    count=9},  -- Mandau T3>T4
    [19747] = {r=20556, s=4, t="relic",    trade=3925, count=50}, -- Mandau T4>T5
    [18324] = {r=18647, s=1, t="relic",    trade=0,    count=9},  -- Mjollnir T1>T2
    [18647] = {r=18675, s=2, t="relic",    trade=0,    count=9},  -- Mjollnir T2>T3
    [18675] = {r=19756, s=3, t="relic",    trade=0,    count=9},  -- Mjollnir T3>T4
    [19756] = {r=21061, s=4, t="relic",    trade=3925, count=50}, -- Mjollnir T4>T5
    [18282] = {r=18640, s=1, t="relic",    trade=0,    count=9},  -- Ragnarok T1>T2
    [18640] = {r=18668, s=2, t="relic",    trade=0,    count=9},  -- Ragnarok T2>T3
    [18668] = {r=19749, s=3, t="relic",    trade=0,    count=9},  -- Ragnarok T3>T4
    [19749] = {r=20746, s=4, t="relic",    trade=3925, count=50}, -- Ragnarok T4>T5
    [18264] = {r=18637, s=1, t="relic",    trade=0,    count=9},  -- Spharai T1>T2
    [18637] = {r=18665, s=2, t="relic",    trade=0,    count=9},  -- Spharai T2>T3
    [18665] = {r=19746, s=3, t="relic",    trade=0,    count=9},  -- Spharai T3>T4
    [19746] = {r=20481, s=4, t="relic",    trade=3925, count=50}, -- Spharai T4>T5
    [18348] = {r=18650, s=1, t="relic",    trade=0,    count=9},  -- Yoichinoyumi T1>T2
    [18650] = {r=18678, s=2, t="relic",    trade=0,    count=9},  -- Yoichinoyumi T2>T3
    [18678] = {r=19759, s=3, t="relic",    trade=0,    count=9},  -- Yoichinoyumi T3>T4
    [19759] = {r=21211, s=4, t="relic",    trade=3925, count=50}, -- Yoichinoyumi T4>T5
    [18999] = {r=19088, s=1, t="mythic",   trade=0,    count=9},  -- Aymur T1>T2
    [19088] = {r=19718, s=2, t="mythic",   trade=0,    count=9},  -- Aymur T2>T3
    [19718] = {r=19827, s=3, t="mythic",   trade=0,    count=9},  -- Aymur T3>T4
    [19827] = {r=20793, s=4, t="mythic",   trade=3925, count=50}, -- Aymur T4>T5
    [18997] = {r=19086, s=1, t="mythic",   trade=0,    count=9},  -- Burtgang T1>T2
    [19086] = {r=19716, s=2, t="mythic",   trade=0,    count=9},  -- Burtgang T2>T3
    [19716] = {r=19825, s=3, t="mythic",   trade=0,    count=9},  -- Burtgang T3>T4
    [19825] = {r=20650, s=4, t="mythic",   trade=3925, count=50}, -- Burtgang T4>T5
    [19000] = {r=19089, s=1, t="mythic",   trade=0,    count=9},  -- Carnwenhan T1>T2
    [19089] = {r=19719, s=2, t="mythic",   trade=0,    count=9},  -- Carnwenhan T2>T3
    [19719] = {r=19828, s=3, t="mythic",   trade=0,    count=9},  -- Carnwenhan T3>T4
    [19828] = {r=20562, s=4, t="mythic",   trade=3925, count=50}, -- Carnwenhan T4>T5
    [18991] = {r=19080, s=1, t="mythic",   trade=0,    count=9},  -- Conqueror T1>T2
    [19080] = {r=19710, s=2, t="mythic",   trade=0,    count=9},  -- Conqueror T2>T3
    [19710] = {r=19819, s=3, t="mythic",   trade=0,    count=9},  -- Conqueror T3>T4
    [19819] = {r=20838, s=4, t="mythic",   trade=3925, count=50}, -- Conqueror T4>T5
    [19007] = {r=19096, s=1, t="mythic",   trade=0,    count=9},  -- Death Penalty T1>T2
    [19096] = {r=19726, s=2, t="mythic",   trade=0,    count=9},  -- Death Penalty T2>T3
    [19726] = {r=19835, s=3, t="mythic",   trade=0,    count=9},  -- Death Penalty T3>T4
    [19835] = {r=21263, s=4, t="mythic",   trade=3925, count=50}, -- Death Penalty T4>T5
    [19001] = {r=19090, s=1, t="mythic",   trade=0,    count=9},  -- Gastraphetes T1>T2
    [19090] = {r=19720, s=2, t="mythic",   trade=0,    count=9},  -- Gastraphetes T2>T3
    [19720] = {r=19829, s=3, t="mythic",   trade=0,    count=9},  -- Gastraphetes T3>T4
    [19829] = {r=21247, s=4, t="mythic",   trade=3925, count=50}, -- Gastraphetes T4>T5
    [18992] = {r=19081, s=1, t="mythic",   trade=0,    count=9},  -- Glanzfaust T1>T2
    [19081] = {r=19711, s=2, t="mythic",   trade=0,    count=9},  -- Glanzfaust T2>T3
    [19711] = {r=19820, s=3, t="mythic",   trade=0,    count=9},  -- Glanzfaust T3>T4
    [19820] = {r=20483, s=4, t="mythic",   trade=3925, count=50}, -- Glanzfaust T4>T5
    [19002] = {r=19091, s=1, t="mythic",   trade=0,    count=9},  -- Kogarasumaru T1>T2
    [19091] = {r=19721, s=2, t="mythic",   trade=0,    count=9},  -- Kogarasumaru T2>T3
    [19721] = {r=19830, s=3, t="mythic",   trade=0,    count=9},  -- Kogarasumaru T3>T4
    [19830] = {r=21018, s=4, t="mythic",   trade=3925, count=50}, -- Kogarasumaru T4>T5
    [18994] = {r=19083, s=1, t="mythic",   trade=0,    count=9},  -- Laevateinn T1>T2
    [19083] = {r=19713, s=2, t="mythic",   trade=0,    count=9},  -- Laevateinn T2>T3
    [19713] = {r=19822, s=3, t="mythic",   trade=0,    count=9},  -- Laevateinn T3>T4
    [19822] = {r=21140, s=4, t="mythic",   trade=3925, count=50}, -- Laevateinn T4>T5
    [18998] = {r=19087, s=1, t="mythic",   trade=0,    count=9},  -- Liberator T1>T2
    [19087] = {r=19717, s=2, t="mythic",   trade=0,    count=9},  -- Liberator T2>T3
    [19717] = {r=19826, s=3, t="mythic",   trade=0,    count=9},  -- Liberator T3>T4
    [19826] = {r=20883, s=4, t="mythic",   trade=3925, count=50}, -- Liberator T4>T5
    [18995] = {r=19084, s=1, t="mythic",   trade=0,    count=9},  -- Murgleis T1>T2
    [19084] = {r=19714, s=2, t="mythic",   trade=0,    count=9},  -- Murgleis T2>T3
    [19714] = {r=19823, s=3, t="mythic",   trade=0,    count=9},  -- Murgleis T3>T4
    [19823] = {r=20648, s=4, t="mythic",   trade=3925, count=50}, -- Murgleis T4>T5
    [19003] = {r=19092, s=1, t="mythic",   trade=0,    count=9},  -- Nagi T1>T2
    [19092] = {r=19722, s=2, t="mythic",   trade=0,    count=9},  -- Nagi T2>T3
    [19722] = {r=19831, s=3, t="mythic",   trade=0,    count=9},  -- Nagi T3>T4
    [19831] = {r=20973, s=4, t="mythic",   trade=3925, count=50}, -- Nagi T4>T5
    [19005] = {r=19094, s=1, t="mythic",   trade=0,    count=9},  -- Nirvana T1>T2
    [19094] = {r=19724, s=2, t="mythic",   trade=0,    count=9},  -- Nirvana T2>T3
    [19724] = {r=19962, s=3, t="mythic",   trade=0,    count=9},  -- Nirvana T3>T4
    [19962] = {r=21142, s=4, t="mythic",   trade=3925, count=50}, -- Nirvana T4>T5
    [19004] = {r=19093, s=1, t="mythic",   trade=0,    count=9},  -- Ryunohige T1>T2
    [19093] = {r=19723, s=2, t="mythic",   trade=0,    count=9},  -- Ryunohige T2>T3
    [19723] = {r=19832, s=3, t="mythic",   trade=0,    count=9},  -- Ryunohige T3>T4
    [19832] = {r=20928, s=4, t="mythic",   trade=3925, count=50}, -- Ryunohige T4>T5
    [18989] = {r=19098, s=1, t="mythic",   trade=0,    count=9},  -- Terpsichore T1>T2
    [19098] = {r=19728, s=2, t="mythic",   trade=0,    count=9},  -- Terpsichore T2>T3
    [19728] = {r=19837, s=3, t="mythic",   trade=0,    count=9},  -- Terpsichore T3>T4
    [19837] = {r=20558, s=4, t="mythic",   trade=3925, count=50}, -- Terpsichore T4>T5
    [19006] = {r=19095, s=1, t="mythic",   trade=0,    count=9},  -- Tizona T1>T2
    [19095] = {r=19725, s=2, t="mythic",   trade=0,    count=9},  -- Tizona T2>T3
    [19725] = {r=19834, s=3, t="mythic",   trade=0,    count=9},  -- Tizona T3>T4
    [19834] = {r=20652, s=4, t="mythic",   trade=3925, count=50}, -- Tizona T4>T5
    [18990] = {r=19099, s=1, t="mythic",   trade=0,    count=9},  -- Tupsimati T1>T2
    [19099] = {r=19729, s=2, t="mythic",   trade=0,    count=9},  -- Tupsimati T2>T3
    [19729] = {r=19838, s=3, t="mythic",   trade=0,    count=9},  -- Tupsimati T3>T4
    [19838] = {r=21138, s=4, t="mythic",   trade=3925, count=50}, -- Tupsimati T4>T5
    [18996] = {r=19085, s=1, t="mythic",   trade=0,    count=9},  -- Vajra T1>T2
    [19085] = {r=19715, s=2, t="mythic",   trade=0,    count=9},  -- Vajra T2>T3
    [19715] = {r=19824, s=3, t="mythic",   trade=0,    count=9},  -- Vajra T3>T4
    [19824] = {r=20560, s=4, t="mythic",   trade=3925, count=50}, -- Vajra T4>T5
    [18993] = {r=19082, s=1, t="mythic",   trade=0,    count=9},  -- Yagrush T1>T2
    [19082] = {r=19712, s=2, t="mythic",   trade=0,    count=9},  -- Yagrush T2>T3
    [19712] = {r=19821, s=3, t="mythic",   trade=0,    count=9},  -- Yagrush T3>T4
    [19821] = {r=21063, s=4, t="mythic",   trade=3925, count=50}, -- Yagrush T4>T5

    --[[ retail info below this line
    [19339] = {r=19399, s=1, t="empyrean", trade=2929, count=50}, -- Nobilis [DMG+8] >> Almace (80)
    [19399] = {r=19458, s=2, t="empyrean", trade=2964, count=50}, -- Almace (80) >> Almace (85)
    [19458] = {r=19536, s=3, t="empyrean", trade=3289, count=75}, -- Almace (85) >> Almace (90)
    [19536] = {r=19634, s=4, t="empyrean", trade=3509, count=1500}, -- Almace (90) >> Almace (95)
    [19634] = {r=19807, s=5, t="empyrean", trade=3499, count=60}, -- Almace (95) >> Almace (99)
    [19807] = {r=20653, s=6, t="empyrean", trade=4061, count=300}, -- Almace (99) >> Almace (119)
    [20653] = {r=20654, s=7, t="empyrean", trade=4061, count=300}, -- Almace (119) >> Almace (119-II) Afterglow
    [19394] = {r=19410, s=1, t="empyrean", trade=2930, count=50}, -- Magnatus [DMG+8] >> Armageddon (80)
    [19410] = {r=19469, s=2, t="empyrean", trade=2965, count=50}, -- Armageddon (80) >> Armageddon (85)
    [19469] = {r=19547, s=3, t="empyrean", trade=3290, count=75}, -- Armageddon (85) >> Armageddon (90)
    [19547] = {r=19645, s=4, t="empyrean", trade=3509, count=1500}, -- Armageddon (90) >> Armageddon (95)
    [19645] = {r=19818, s=5, t="empyrean", trade=3498, count=60}, -- Armageddon (95) >> Armageddon (99)
    [19818] = {r=21264, s=6, t="empyrean", trade=4061, count=300}, -- Armageddon (99) >> Armageddon (119)
    [21264] = {r=21265, s=7, t="empyrean", trade=4061, count=300}, -- Armageddon (119) >> Armageddon (119-II) Afterglow
    [19344] = {r=19400, s=1, t="empyrean", trade=2930, count=50}, -- Albion [DMG+12] >> Caladbolg (80)
    [19400] = {r=19459, s=2, t="empyrean", trade=2965, count=50}, -- Caladbolg (80) >> Caladbolg (85)
    [19459] = {r=19537, s=3, t="empyrean", trade=3290, count=75}, -- Caladbolg (85) >> Caladbolg (90)
    [19537] = {r=19635, s=4, t="empyrean", trade=3509, count=1500}, -- Caladbolg (90) >> Caladbolg (95)
    [19635] = {r=19808, s=5, t="empyrean", trade=3498, count=60}, -- Caladbolg (95) >> Caladbolg (99)
    [19808] = {r=20747, s=6, t="empyrean", trade=4061, count=300}, -- Caladbolg (99) >> Caladbolg (119)
    [20747] = {r=20748, s=7, t="empyrean", trade=4061, count=300}, -- Caladbolg (119) >> Caladbolg (119-II) Afterglow
    [18573] = {r=18573, s=1, t="empyrean", trade=3293, count=50}, -- Pyf Harp >> Pyf Harp [String skill +4]
    [18573] = {r=18574, s=2, t="empyrean", trade=3294, count=75}, -- Pyf Harp [String skill +4] >> Daurdabla (85)
    [18574] = {r=18575, s=3, t="empyrean", trade=3289, count=75}, -- Daurdabla (85) >> Daurdabla (90)
    [18575] = {r=18576, s=4, t="empyrean", trade=3509, count=1500}, -- Daurdabla (90) >> Daurdabla (95)
    [18576] = {r=18571, s=5, t="empyrean", trade=3499, count=60}, -- Daurdabla (95) >> Daurdabla (99)
    [18571] = {r=18839, s=6, t="empyrean", trade=3499, count=3000}, -- Daurdabla (99) >> Daurdabla (99-II) Afterglow
    [19349] = {r=19401, s=1, t="empyrean", trade=2931, count=50}, -- Bonebiter [DMG+8] >> Farsha (80)
    [19401] = {r=19460, s=2, t="empyrean", trade=2966, count=50}, -- Farsha (80) >> Farsha (85)
    [19460] = {r=19538, s=3, t="empyrean", trade=3291, count=75}, -- Farsha (85) >> Farsha (90)
    [19538] = {r=19636, s=4, t="empyrean", trade=3509, count=1500}, -- Farsha (90) >> Farsha (95)
    [19636] = {r=19809, s=5, t="empyrean", trade=3499, count=60}, -- Farsha (95) >> Farsha (99)
    [19809] = {r=20794, s=6, t="empyrean", trade=4061, count=300}, -- Farsha (99) >> Farsha (119)
    [20794] = {r=20795, s=7, t="empyrean", trade=4061, count=300}, -- Farsha (119) >> Farsha (119-II) Afterglow
    [19379] = {r=19407, s=1, t="empyrean", trade=2931, count=50}, -- Culacula [DMG+16] >> Gambanteinn (80)
    [19407] = {r=19466, s=2, t="empyrean", trade=2966, count=50}, -- Gambanteinn (80) >> Gambanteinn (85)
    [19466] = {r=19544, s=3, t="empyrean", trade=3291, count=75}, -- Gambanteinn (85) >> Gambanteinn (90)
    [19544] = {r=19642, s=4, t="empyrean", trade=3509, count=1500}, -- Gambanteinn (90) >> Gambanteinn (95)
    [19642] = {r=19815, s=5, t="empyrean", trade=3498, count=60}, -- Gambanteinn (95) >> Gambanteinn (99)
    [19815] = {r=21064, s=6, t="empyrean", trade=4061, count=300}, -- Gambanteinn (99) >> Gambanteinn (119)
    [21064] = {r=21065, s=7, t="empyrean", trade=4061, count=300}, -- Gambanteinn (119) >> Gambanteinn (119-II) Afterglow
    [19389] = {r=19409, s=1, t="empyrean", trade=2931, count=50}, -- Astrild [DMG+11] >> Gandiva (80)
    [19409] = {r=19468, s=2, t="empyrean", trade=2966, count=50}, -- Gandiva (80) >> Gandiva (85)
    [19468] = {r=19546, s=3, t="empyrean", trade=3291, count=75}, -- Gandiva (85) >> Gandiva (90)
    [19546] = {r=19644, s=4, t="empyrean", trade=3509, count=1500}, -- Gandiva (90) >> Gandiva (95)
    [19644] = {r=19817, s=5, t="empyrean", trade=3499, count=60}, -- Gandiva (95) >> Gandiva (99)
    [19817] = {r=21212, s=6, t="empyrean", trade=4061, count=300}, -- Gandiva (99) >> Gandiva (119)
    [21212] = {r=21213, s=7, t="empyrean", trade=4061, count=300}, -- Gandiva (119) >> Gandiva (119-II) Afterglow
    [19384] = {r=19408, s=1, t="empyrean", trade=2928, count=50}, -- Slaine [DMG+15] >> Hvergelmir (80)
    [19408] = {r=19467, s=2, t="empyrean", trade=2963, count=50}, -- Hvergelmir (80) >> Hvergelmir (85)
    [19467] = {r=19545, s=3, t="empyrean", trade=3288, count=75}, -- Hvergelmir (85) >> Hvergelmir (90)
    [19545] = {r=19643, s=4, t="empyrean", trade=3509, count=1500}, -- Hvergelmir (90) >> Hvergelmir (95)
    [19643] = {r=19816, s=5, t="empyrean", trade=3498, count=60}, -- Hvergelmir (95) >> Hvergelmir (99)
    [19816] = {r=21143, s=6, t="empyrean", trade=4061, count=300}, -- Hvergelmir (99) >> Hvergelmir (119)
    [21143] = {r=21144, s=7, t="empyrean", trade=4061, count=300}, -- Hvergelmir (119) >> Hvergelmir (119-II) Afterglow
    [19369] = {r=19405, s=1, t="empyrean", trade=2929, count=50}, -- Mozu [DMG+8] >> Kannagi (80)
    [19405] = {r=19464, s=2, t="empyrean", trade=2964, count=50}, -- Kannagi (80) >> Kannagi (85)
    [19464] = {r=19542, s=3, t="empyrean", trade=3289, count=75}, -- Kannagi (85) >> Kannagi (90)
    [19542] = {r=19640, s=4, t="empyrean", trade=3509, count=1500}, -- Kannagi (90) >> Kannagi (95)
    [19640] = {r=19813, s=5, t="empyrean", trade=3498, count=60}, -- Kannagi (95) >> Kannagi (99)
    [19813] = {r=20974, s=6, t="empyrean", trade=4061, count=300}, -- Kannagi (99) >> Kannagi (119)
    [20974] = {r=20975, s=7, t="empyrean", trade=4061, count=300}, -- Kannagi (119) >> Kannagi (119-II) Afterglow
    [19374] = {r=19406, s=1, t="empyrean", trade=2930, count=50}, -- Radennotachi [DMG+12] >> Masamune (80)
    [19406] = {r=19465, s=2, t="empyrean", trade=2965, count=50}, -- Masamune (80) >> Masamune (85)
    [19465] = {r=19543, s=3, t="empyrean", trade=3290, count=75}, -- Masamune (85) >> Masamune (90)
    [19543] = {r=19641, s=4, t="empyrean", trade=3509, count=1500}, -- Masamune (90) >> Masamune (95)
    [19641] = {r=19814, s=5, t="empyrean", trade=3499, count=60}, -- Masamune (95) >> Masamune (99)
    [19814] = {r=21019, s=6, t="empyrean", trade=4061, count=300}, -- Masamune (99) >> Masamune (119)
    [21019] = {r=21020, s=7, t="empyrean", trade=4061, count=300}, -- Masamune (119) >> Masamune (119-II) Afterglow
    [16191] = {r=16191, s=1, t="empyrean", trade=3293, count=50}, -- Utilis Shield >> Utilis Shield [DEF+9]
    [16191] = {r=16192, s=2, t="empyrean", trade=3294, count=75}, -- Utilis Shield [DEF+9] >> Ochain (85)
    [16192] = {r=16193, s=3, t="empyrean", trade=3292, count=75}, -- Ochain (85) >> Ochain (90)
    [16193] = {r=16194, s=4, t="empyrean", trade=3509, count=1500}, -- Ochain (90) >> Ochain (95)
    [16194] = {r=11926, s=5, t="empyrean", trade=3498, count=60}, -- Ochain (95) >> Ochain (99)
    [11926] = {r=16199, s=6, t="empyrean", trade=3498, count=3000}, -- Ochain (99) >> Ochain (99-II) Afterglow
    [19359] = {r=19403, s=1, t="empyrean", trade=2928, count=50}, -- Ultimatum [DMG+14] >> Redemption (80)
    [19403] = {r=19462, s=2, t="empyrean", trade=2963, count=50}, -- Redemption (80) >> Redemption (85)
    [19462] = {r=19540, s=3, t="empyrean", trade=3288, count=75}, -- Redemption (85) >> Redemption (90)
    [19540] = {r=19638, s=4, t="empyrean", trade=3509, count=1500}, -- Redemption (90) >> Redemption (95)
    [19638] = {r=19811, s=5, t="empyrean", trade=3499, count=60}, -- Redemption (95) >> Redemption (99)
    [19811] = {r=20884, s=6, t="empyrean", trade=4061, count=300}, -- Redemption (99) >> Redemption (119)
    [20884] = {r=20885, s=7, t="empyrean", trade=4061, count=300}, -- Redemption (119) >> Redemption (119-II) Afterglow
    [19364] = {r=19404, s=1, t="empyrean", trade=2928, count=50}, -- Oathkeeper [DMG+14] >> Rhongomiant (80)
    [19404] = {r=19463, s=2, t="empyrean", trade=2963, count=50}, -- Rhongomiant (80) >> Rhongomiant (85)
    [19463] = {r=19541, s=3, t="empyrean", trade=3288, count=75}, -- Rhongomiant (85) >> Rhongomiant (90)
    [19541] = {r=19639, s=4, t="empyrean", trade=3509, count=1500}, -- Rhongomiant (90) >> Rhongomiant (95)
    [19639] = {r=19812, s=5, t="empyrean", trade=3499, count=60}, -- Rhongomiant (95) >> Rhongomiant (99)
    [19812] = {r=20929, s=6, t="empyrean", trade=4061, count=300}, -- Rhongomiant (99) >> Rhongomiant (119)
    [20929] = {r=20930, s=7, t="empyrean", trade=4061, count=300}, -- Rhongomiant (119) >> Rhongomiant (119-II) Afterglow
    [19334] = {r=19398, s=1, t="empyrean", trade=2927, count=50}, -- Kartika [DMG+6] >> Twashtar (80)
    [19398] = {r=19457, s=2, t="empyrean", trade=2962, count=50}, -- Twashtar (80) >> Twashtar (85)
    [19457] = {r=19535, s=3, t="empyrean", trade=3287, count=75}, -- Twashtar (85) >> Twashtar (90)
    [19535] = {r=19633, s=4, t="empyrean", trade=3509, count=1500}, -- Twashtar (90) >> Twashtar (95)
    [19633] = {r=19806, s=5, t="empyrean", trade=3498, count=60}, -- Twashtar (95) >> Twashtar (99)
    [19806] = {r=20563, s=6, t="empyrean", trade=4061, count=300}, -- Twashtar (99) >> Twashtar (119)
    [20563] = {r=20564, s=7, t="empyrean", trade=4061, count=300}, -- Twashtar (119) >> Twashtar (119-II) Afterglow
    [19354] = {r=19402, s=1, t="empyrean", trade=2927, count=50}, -- Bonesplitter [DMG+13] >> Ukonvasara (80)
    [19402] = {r=19461, s=2, t="empyrean", trade=2962, count=50}, -- Ukonvasara (80) >> Ukonvasara (85)
    [19461] = {r=19539, s=3, t="empyrean", trade=3287, count=75}, -- Ukonvasara (85) >> Ukonvasara (90)
    [19539] = {r=19637, s=4, t="empyrean", trade=3509, count=1500}, -- Ukonvasara (90) >> Ukonvasara (95)
    [19637] = {r=19810, s=5, t="empyrean", trade=3498, count=60}, -- Ukonvasara (95) >> Ukonvasara (99)
    [19810] = {r=20839, s=6, t="empyrean", trade=4061, count=300}, -- Ukonvasara (99) >> Ukonvasara (119)
    [20839] = {r=20840, s=7, t="empyrean", trade=4061, count=300}, -- Ukonvasara (119) >> Ukonvasara (119-II) Afterglow
    [19329] = {r=19397, s=1, t="empyrean", trade=2928, count=50}, -- Mantis [DMG+8] >> Verethragna (80)
    [19397] = {r=19456, s=2, t="empyrean", trade=2963, count=50}, -- Verethragna (80) >> Verethragna (85)
    [19456] = {r=19534, s=3, t="empyrean", trade=3288, count=75}, -- Verethragna (85) >> Verethragna (90)
    [19534] = {r=19632, s=4, t="empyrean", trade=3509, count=1500}, -- Verethragna (90) >> Verethragna (95)
    [19632] = {r=19805, s=5, t="empyrean", trade=3499, count=60}, -- Verethragna (95) >> Verethragna (99)
    [19805] = {r=20486, s=6, t="empyrean", trade=4061, count=300}, -- Verethragna (99) >> Verethragna (119)
    [20486] = {r=20487, s=7, t="empyrean", trade=4061, count=300}, -- Verethragna (119) >> Verethragna (119-II) Afterglow
    ]]
    -- [BaseItemid] = {r=rewardItemid, s=startStage, t="type", trade=tradeItemid, count=tradeQuantity, v3=0, v4=0, v5=0, v6=0}, -- item name startTier>rewardTier
};

-------------------------------------------
-- Checks if R/M/E Trial item is equipped
-------------------------------------------
function cTrialItemEquipped(player,trialType)
    local cTrial = player:getVar("cTrialItem["..trialType.."]");
    local slotMain = player:getEquipID(SLOT_MAIN);
    local slotSub = player:getEquipID(SLOT_SUB);
    local slotRanged = player:getEquipID(SLOT_RANGED);

    if (cTrial == slotMain) then
        -- player:PrintToPlayer("[DEBUG] Trial item found in SLOT_MAIN.."):
        return true;
    end

    if (cTrial == slotSub) then
        -- player:PrintToPlayer("[DEBUG] Trial item found in SLOT_SUB.."):
        return true;
    end

    if (cTrial == slotRanged) then
        -- player:PrintToPlayer("[DEBUG] Trial item found in SLOT_RANGED.."):
        return true;
    end

    -- player:PrintToPlayer("[DEBUG] Trial item not found in any slot.."):
    return false;
end;

-------------------------------------------
-- Checks objective counts and if
-- appropriate sets completion var
-------------------------------------------
function cTrialProgress(player,trialStage,trialType)
    local cTrialItem = player:getVar("cTrialItem["..trialType.."]");
    local cTrialCount = player:getVar("cTrialCount["..trialType.."]");
    local info = custom_trials[cTrialItem];
        -- info.r, info.s, info.t, info.trade, info.count;
    if (info ~= nil) then
        if (cTrialItemEquipped(player, trialType) == true) then
            -- print(string.format("[DEBUG] Player %s trial %d progress check..", player:getName(), cTrialItem));
            -- print("[DEBUG] info.t : ".. info.s);
            -- print("[DEBUG] trialStage : ".. trialStage);
            -- print("[DEBUG] info.t : ".. info.t);
            -- print("[DEBUG] trialType : ".. trialType);

            if (trialStage == info.s and trialType == info.t) then
                cTrialCount = cTrialCount+1; -- Update count.
                player:setVar("cTrialCount["..trialType.."]", cTrialCount); -- Set var to the updated count.
                player:SpoofMsg("You completed a trial objective. ", nil, MESSAGE_ECHO, nil);
                -- print("[DEBUG] cTrialCount : ".. cTrialCount);

                if (cTrialCount >= info.count) then
                    player:setVar("cTrialComplete["..trialType.."]", 1);
                    -- print("[DEBUG] Custom trial ".. cTrialItem.." completed!");
                    player:SpoofMsg("All Trial objectives complete! ", nil, MESSAGE_ECHO, nil);
                end
            end
            -- print("------------------")
        end
    end
end;

-----------------------------------
-- Handles Trial completion:
-- item upgrade and var cleanup
-----------------------------------
function cTrialEnd(player,trialType)
    local cTrial = player:getVar("cTrialItem["..trialType.."]");
    local info = custom_trials[cTrial];
    -- info.r,info.s,info.t,info.trade,info.count;
    local TextIDs = "scripts/zones/" .. player:getZoneName() .. "/TextIDs";
    package.loaded[TextIDs] = nil;
    require(TextIDs);

    if (info.r ~= nil) then
        if (player:getFreeSlotsCount() >= 1) then
            player:tradeComplete();
            player:addItem(info.r);
            player:setVar("cTrialComplete["..trialType.."]", 0);
            player:setVar("cTrialCount["..trialType.."]", 0);
            player:setVar("cTrialItem["..trialType.."]", 0);
            -- print("[DEBUG] Item given to "..player:getName()..", custom trial variables wiped");
            player:messageSpecial(ITEM_OBTAINED, info.r);
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, info.r);
        end
    else
        player:PrintToPlayer("Error: cTrialEnd() was called on an invalid Trial ID. Please report this message.");
        player:PrintToPlayer("Invalid Trial ID: "..cTrial);
    end
end;


-- Old code below.

-- -----------------------------------
-- -- Functions for LegionDS custom trials content
-- -----------------------------------
-- require("scripts/globals/status");
-- require("scripts/globals/spoofchat");
-- -----------------------------------
--
-- -- ID Tables..
-- -- ..I could have put these tables inside yet another
-- --  table but these loops are complex enough..
--
-- RELIC =
-- {
--     -- Item              Stage1       Stage2       Stage3       Stage4       Final
--     ["AEGIS"] =         {[1] = 15070, [2] = 16196, [3] = 16198, [4] = 11927, [5] = 16200},
--     ["AMANOMURAKUMO"] = {[1] = 18318, [2] = 18646, [3] = 18674, [4] = 19755, [5] = 21016},
--     ["ANNIHILATOR"] =   {[1] = 18336, [2] = 18649, [3] = 18677, [4] = 19758, [5] = 21261},
--     ["APOCALYPSE"] =    {[1] = 18306, [2] = 18644, [3] = 18672, [4] = 19753, [5] = 20881},
--     ["BRAVURA"] =       {[1] = 18294, [2] = 18642, [3] = 18670, [4] = 19751, [5] = 20836},
--     ["CLAUSTRUM"] =     {[1] = 18330, [2] = 18648, [3] = 18676, [4] = 19757, [5] = 21136},
--     ["EXCALIBUR"] =     {[1] = 18276, [2] = 18639, [3] = 18667, [4] = 19748, [5] = 20646},
--     ["GJALLARHORN"] =   {[1] = 18342, [2] = 18578, [3] = 18580, [4] = 18572, [5] = 18840},
--     ["GUNGNIR"] =       {[1] = 18300, [2] = 18643, [3] = 18671, [4] = 19752, [5] = 20962},
--     ["GUTTLER"] =       {[1] = 18288, [2] = 18641, [3] = 18669, [4] = 19750, [5] = 20791},
--     ["KIKOKU"] =        {[1] = 18312, [2] = 18645, [3] = 18673, [4] = 19754, [5] = 20971},
--     ["MANDAU"] =        {[1] = 18270, [2] = 18638, [3] = 18666, [4] = 19747, [5] = 20556},
--     ["MJOLLNIR"] =      {[1] = 18324, [2] = 18647, [3] = 18675, [4] = 19756, [5] = 21061},
--     ["RAGNAROK"] =      {[1] = 18282, [2] = 18640, [3] = 18668, [4] = 19749, [5] = 20746},
--     ["SPHARAI"] =       {[1] = 18264, [2] = 18637, [3] = 18665, [4] = 19746, [5] = 20481},
--     ["YOICHINOYUMI"] =  {[1] = 18348, [2] = 18650, [3] = 18678, [4] = 19759, [5] = 21211},
-- };
--
-- MYTHIC =
-- {
--     -- Item              Stage1       Stage2       Stage3       Stage4       Final
--     ["AYMUR"] =         {[1] = 18999, [2] = 19088, [3] = 19718, [4] = 19827, [5] = 20793},
--     ["BURTGANG"] =      {[1] = 18997, [2] = 19086, [3] = 19716, [4] = 19825, [5] = 20650},
--     ["CARNWENHAN"] =    {[1] = 19000, [2] = 19089, [3] = 19719, [4] = 19828, [5] = 20562},
--     ["CONQUEROR"] =     {[1] = 18991, [2] = 19080, [3] = 19710, [4] = 19819, [5] = 20838},
--     ["DEATH_PENALTY"] = {[1] = 19007, [2] = 19096, [3] = 19726, [4] = 19835, [5] = 21263},
--     ["GASTRAPHETES"] =  {[1] = 19001, [2] = 19090, [3] = 19720, [4] = 19829, [5] = 21247},
--     ["GLANZFAUST"] =    {[1] = 18992, [2] = 19081, [3] = 19711, [4] = 19820, [5] = 20483},
--     ["KOGARASUMARU"] =  {[1] = 19002, [2] = 19091, [3] = 19721, [4] = 19830, [5] = 21018},
--     ["LAEVATEINN"] =    {[1] = 18994, [2] = 19083, [3] = 19713, [4] = 19822, [5] = 21140},
--     ["LIBERATOR"] =     {[1] = 18998, [2] = 19087, [3] = 19717, [4] = 19826, [5] = 20883},
--     ["MURGLEIS"] =      {[1] = 18995, [2] = 19084, [3] = 19714, [4] = 19823, [5] = 20648},
--     ["NAGI"] =          {[1] = 19003, [2] = 19092, [3] = 19722, [4] = 19831, [5] = 20973},
--     ["NIRVANA"] =       {[1] = 19005, [2] = 19094, [3] = 19724, [4] = 19962, [5] = 21142},
--     ["RYUNOHIGE"] =     {[1] = 19004, [2] = 19093, [3] = 19723, [4] = 19832, [5] = 20928},
--     ["TERPSICHORE"] =   {[1] = 18989, [2] = 19098, [3] = 19728, [4] = 19837, [5] = 20558},
--     ["TIZONA"] =        {[1] = 19006, [2] = 19095, [3] = 19725, [4] = 19834, [5] = 20652},
--     ["TUPSIMATI"] =     {[1] = 18990, [2] = 19099, [3] = 19729, [4] = 19838, [5] = 21138},
--     ["VAJRA"] =         {[1] = 18996, [2] = 19085, [3] = 19715, [4] = 19824, [5] = 20560},
--     ["YAGRUSH"] =       {[1] = 18993, [2] = 19082, [3] = 19712, [4] = 19821, [5] = 21063},
-- };
--
-- --[[ Other?
-- Also just FYI, we can have more or fewer than 5 stages without problems.
--
-- WHATEVER =
-- {
--     -- Item         Stage1      Stage2      etc.
--     -- ["NAME"] =  {[1] = ID_1, [2] = ID_1, [3] = ID_1},
-- };
-- MAX_WHATEVER = 3;
-- ]]
--
-- -----------------------------------
-- -- Returns the current Trial stage
-- -- in the specified table.
-- -----------------------------------
-- function getCurrentStage(itemTable, itemID)
--     local CURRENT = 0;
--     for a, b in pairs(itemTable) do
--         for c, bb in pairs(b) do
--             if (bb == itemID) then
--                 CURRENT = c;
--             end
--         end
--     end
--
--     return CURRENT;
-- end;
--
-- -----------------------------------
-- -- Returns the itemID of the next
-- -- trial stage for current itemID
-- -----------------------------------
-- function getNextTrialID(itemTable, itemID)
--     local NEXT_ID = 0;
--     for i, o in pairs(itemTable) do
--         for u, oo in pairs(o) do
--             if (oo == itemID) then
--                 NEXT_ID = o[u + 1];
--             end
--         end
--     end
--     -- If we somehow checked one that doesn't have any
--     -- "next" ID we'll return the itemID we started with.
--     return NEXT_ID;
-- end;
--
-- -----------------------------------
-- -- Checks if a Trial item is equipped
-- -----------------------------------
-- function cTrialItemEquipped(player)
--     local TRIAL = player:getVar("C_TRIAL_ITEM");
--     -- local TRIAL2 = player:getVar("C_TRIAL2_ITEM"); <- for future use
--     local MAIN = player:getEquipID(SLOT_MAIN);
--     local SUB = player:getEquipID(SLOT_SUB);
--     local RANGED = player:getEquipID(SLOT_RANGED);
--     -- local HEAD = player:getEquipID(SLOT_HEAD);
--     -- local BODY = player:getEquipID(SLOT_BODY);
--     -- local HANDS = player:getEquipID(SLOT_HANDS);
--     -- local LEGS = player:getEquipID(SLOT_LEGS);
--     -- local FEET = player:getEquipID(SLOT_FEET);
--
--     if (TRIAL == 0 or TRIAL == nil) then
--         return false;
--     end
--
--     if (MAIN == TRIAL or SUB == TRIAL or RANGED == TRIAL) then
--         --player:PrintToPlayer("DEBUG: Trial item found.."):
--         return true;
--     else
--         return false;
--     end
-- end;
--
-- -----------------------------------
-- -- Checks objective counts and if
-- -- appropriate sets completion var
-- -----------------------------------
-- function cTrialProgress(player, itemTable, var)
--     --player:PrintToPlayer("DEBUG: Trial progress check started.."):
--     local TRIAL = player:getVar("C_TRIAL_ITEM");
--     -- local TRIAL2 = player:getVar("C_TRIAL2_ITEM"); <- for future use
--     -- This whole function could have been done better. But am tired.
--     -- Should define the required totals for each objective somewhere
--     -- and then check the vars against that instead of all this if/else'ing.
--     if (itemTable == nil or getCurrentStage(itemTable, TRIAL) == nil) then
--         player:PrintToPlayer("Error: The trial itemTable checked was nil. Report this message and mob you were fighting.");
--     elseif (var == nil) then
--         player:PrintToPlayer("Error: The trial variable checked was nil. Report this message and mob you were fighting.");
--     elseif (itemTable == RELIC) then
--         if (getCurrentStage(RELIC, TRIAL) == 0 or getCurrentStage(RELIC, TRIAL) == nil) then
--             -- Temp commented out till Objective requirements are arrayed
--             -- player:PrintToPlayer("Error: Trial item stage check returned zero or nil. Please report this message.");
--         elseif (getCurrentStage(RELIC, TRIAL) == 1) then
--             incrementTrialVariable(player, var)
--             if (player:getVar("C_TRIAL_OBJ_1") >= 4
--             and player:getVar("C_TRIAL_OBJ_2") >= 4
--             and player:getVar("C_TRIAL_OBJ_3") >= 3
--             and player:getVar("C_TRIAL_OBJ_4") >= 4
--             and player:getVar("C_TRIAL_OBJ_5") >= 4
--             and player:getVar("C_TRIAL_OBJ_6") >= 4) then
--                 player:setVar("C_TRIAL_COMPLETE", 1);
--                 player:SpoofMsg("All Trial objectives complete!", MESSAGE_ECHO, nil);
--             else
--                 player:SpoofMsg("You completed a trial objective.", MESSAGE_ECHO, nil);
--             end
--         elseif (getCurrentStage(RELIC, TRIAL) == 2) then
--             incrementTrialVariable(player, var)
--             if (player:getVar("C_TRIAL_OBJ_1") >= 7
--             and player:getVar("C_TRIAL_OBJ_2") >= 7
--             and player:getVar("C_TRIAL_OBJ_3") >= 7) then
--                 player:setVar("C_TRIAL_COMPLETE", 1);
--                 player:SpoofMsg("All Trial objectives complete!", nil, MESSAGE_ECHO, nil);
--             else
--                 player:SpoofMsg("You completed a trial objective. ", nil, MESSAGE_ECHO, nil);
--             end
--         elseif (getCurrentStage(RELIC, TRIAL) == 3) then
--             incrementTrialVariable(player, var)
--             if (player:getVar("C_TRIAL_OBJ_1") >= 4
--             and player:getVar("C_TRIAL_OBJ_2") >= 4
--             and player:getVar("C_TRIAL_OBJ_3") >= 4
--             and player:getVar("C_TRIAL_OBJ_4") >= 4
--             and player:getVar("C_TRIAL_OBJ_5") >= 4) then
--                 player:setVar("C_TRIAL_COMPLETE", 1);
--                 player:SpoofMsg("All Trial objectives complete! ", nil, MESSAGE_ECHO, nil);
--             else
--                 player:SpoofMsg("You completed a trial objective. ", nil, MESSAGE_ECHO, nil);
--             end
--             -- Tier4 is handled in Magian_Mog_CJ.lua
--         end
--     elseif (itemTable == MYTHIC) then
--         if (getCurrentStage(MYTHIC, TRIAL) == 0 or getCurrentStage(MYTHIC, TRIAL) == nil) then
--             -- Temp commented out till Objective requirements are arrayed
--             -- player:PrintToPlayer("Error: Trial item stage check returned zero or nil. Please report this message.");
--         elseif (getCurrentStage(MYTHIC, TRIAL) == 1) then
--             incrementTrialVariable(player, var)
--             if (player:getVar("C_TRIAL_OBJ_1") >= 5
--             and player:getVar("C_TRIAL_OBJ_2") >= 5
--             and player:getVar("C_TRIAL_OBJ_3") >= 5
--             and player:getVar("C_TRIAL_OBJ_4") >= 5
--             and player:getVar("C_TRIAL_OBJ_5") >= 5
--             and player:getVar("C_TRIAL_OBJ_6") >= 5) then
--                 player:setVar("C_TRIAL_COMPLETE", 1);
--                 player:SpoofMsg("All Trial objectives complete! ", nil, MESSAGE_ECHO, nil);
--             else
--                 player:SpoofMsg("You completed a trial objective. ", nil, MESSAGE_ECHO, nil);
--             end
--         elseif (getCurrentStage(MYTHIC, TRIAL) == 2) then
--             incrementTrialVariable(player, var)
--             if (player:getVar("C_TRIAL_OBJ_1") >= 4
--             and player:getVar("C_TRIAL_OBJ_2") >= 4
--             and player:getVar("C_TRIAL_OBJ_3") >= 4
--             and player:getVar("C_TRIAL_OBJ_4") >= 4) then
--                 player:setVar("C_TRIAL_COMPLETE", 1);
--                 player:SpoofMsg("All Trial objectives complete! ", nil, MESSAGE_ECHO, nil);
--             else
--                 player:SpoofMsg("You completed a trial objective. ", nil, MESSAGE_ECHO, nil);
--             end
--         elseif (getCurrentStage(MYTHIC, TRIAL) == 3) then
--             incrementTrialVariable(player, var)
--             if (player:getVar("C_TRIAL_OBJ_1") >= 3
--             and player:getVar("C_TRIAL_OBJ_2") >= 3
--             and player:getVar("C_TRIAL_OBJ_3") >= 3
--             and player:getVar("C_TRIAL_OBJ_4") >= 3
--             and player:getVar("C_TRIAL_OBJ_5") >= 3
--             and player:getVar("C_TRIAL_OBJ_6") >= 3) then
--                 player:setVar("C_TRIAL_COMPLETE", 1);
--                 player:SpoofMsg("All Trial objectives complete! ", nil, MESSAGE_ECHO, nil);
--             else
--                 player:SpoofMsg("You completed a trial objective. ", nil, MESSAGE_ECHO, nil);
--             end
--             -- Tier4 is handled in Magian_Mog_CJ.lua
--         end
--     end
-- end;
--
-- -----------------------------------
-- -- Handles Trial completion:
-- -- item upgrade and var cleanup
-- -----------------------------------
-- function cTrialEnd(player)
--     local REWARD = 0;
--     local TRIAL = player:getVar("C_TRIAL_ITEM");
--     local TextIDs = "scripts/zones/" .. player:getZoneName() .. "/TextIDs";
--     package.loaded[TextIDs] = nil;
--     require(TextIDs);
--
--     if (getNextTrialID(RELIC, TRIAL) > 0) then
--         REWARD = getNextTrialID(RELIC, TRIAL);
--     elseif (getNextTrialID(MYTHIC, TRIAL) > 0) then
--         REWARD = getNextTrialID(MYTHIC, TRIAL);
--     end
--
--     if (REWARD > 0) then
--         if (player:getFreeSlotsCount() >= 1) then
--             player:tradeComplete();
--             player:addItem(REWARD);
--             player:messageSpecial(ITEM_OBTAINED, REWARD);
--             cTrialCleanUp(player);
--         else
--             player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, REWARD);
--         end
--     else
--         player:PrintToPlayer("Error: cTrialEnd() was called on an invalid Trial ID. Please report this message.");
--     end
-- end;
--
-- -----------------------------------
-- -- Exactly what it says on the tin.
-- -----------------------------------
-- function incrementTrialVariable(player, var)
--     if (var == 1) then
--         player:setVar("C_TRIAL_OBJ_1", player:getVar("C_TRIAL_OBJ_1")+1);
--     elseif (var == 2) then
--         player:setVar("C_TRIAL_OBJ_2", player:getVar("C_TRIAL_OBJ_2")+1);
--     elseif (var == 3) then
--         player:setVar("C_TRIAL_OBJ_3", player:getVar("C_TRIAL_OBJ_3")+1);
--     elseif (var == 4) then
--         player:setVar("C_TRIAL_OBJ_4", player:getVar("C_TRIAL_OBJ_4")+1);
--     elseif (var == 5) then
--         player:setVar("C_TRIAL_OBJ_5", player:getVar("C_TRIAL_OBJ_5")+1);
--     elseif (var == 6) then
--         player:setVar("C_TRIAL_OBJ_6", player:getVar("C_TRIAL_OBJ_6")+1);
--     end
-- end;
--
-- -----------------------------------
-- -- Handles Trial var cleanup
-- -----------------------------------
-- function cTrialCleanUp(player)
--     player:setVar("C_TRIAL_ITEM", 0);
--     player:setVar("C_TRIAL_OBJ_1", 0);
--     player:setVar("C_TRIAL_OBJ_2", 0);
--     player:setVar("C_TRIAL_OBJ_3", 0);
--     player:setVar("C_TRIAL_OBJ_4", 0);
--     player:setVar("C_TRIAL_OBJ_5", 0);
--     player:setVar("C_TRIAL_OBJ_6", 0);
--     player:setVar("C_TRIAL_COMPLETE", 0);
-- end;
