----------------------------------
-- Area: Gustav Tunnel
--   NM: Guivre
-----------------------------------

require("scripts/globals/status");

local path =
{
    106.836830, 0.753614, -3.944333,
    106.991020, 0.588184, -4.941793,
    107.207207, 0.424275, -5.923915,
    107.583046, 0.424275, -6.866960,
    108.040382, 0.424275, -7.778655,
    108.482483, 0.364732, -8.695824,
    108.921669, 0.289885, -9.613388,
    109.362129, 0.184958, -10.528788,
    109.805786, 0.066048, -11.439518,
    111.644989, 0.000000, -15.198928,
    112.081032, 0.000000, -16.120642,
    112.434616, 0.000000, -17.077393,
    112.794510, 0.000000, -18.031784,
    113.158630, 0.000000, -18.984592,
    113.525223, 0.000000, -19.936440,
    114.229553, 0.244860, -21.829271,
    114.874275, 0.575834, -23.735594,
    115.086800, 0.689463, -24.726152,
    115.305222, 0.831800, -25.712254,
    115.528206, 0.948544, -26.699181,
    115.763580, 0.948544, -27.691650,
    116.812645, 0.518518, -32.313782,
    117.069260, 0.307952, -33.614750,
    117.273041, 0.230719, -34.943283,
    117.261650, 0.231090, -35.962982,
    117.248177, 0.183139, -36.982887,
    117.241623, -0.012887, -37.983841,
    117.127762, 0.000000, -38.990234,
    116.862022, 0.000000, -39.974133,
    116.454262, 0.000000, -40.908192,
    115.965675, 0.000000, -41.803535,
    115.494179, 0.000000, -42.708023,
    115.027023, 0.000000, -43.614761,
    114.560127, 0.000000, -44.521637,
    113.998978, -0.028513, -45.372234,
    113.334190, 0.141798, -46.132935,
    112.618889, 0.297568, -46.837734,
    111.879662, 0.246952, -47.539852,
    111.145302, 0.213181, -48.244881,
    110.412346, 0.200519, -48.953037,
    109.682579, 0.073200, -49.655846,
    108.882729, 0.020027, -50.276154,
    107.993965, -0.039275, -50.770645,
    107.107376, -0.301162, -51.243320,
    105.984108, -0.589100, -51.903667,
    105.087524, -0.668489, -52.384327,
    104.193001, -0.826998, -52.856438,
    103.029999, -1.119595, -53.479015,
    101.524078, -1.681683, -54.232483,
    100.346069, -1.856236, -54.810303,
    98.258423, -2.653062, -55.809986,
    94.811630, -4.113267, -57.345276,
    93.531342, -4.535689, -57.660553,
    92.303452, -5.021625, -58.021339,
    91.044044, -5.413645, -58.356346,
    89.792992, -5.828867, -58.690666,
    88.552742, -6.587278, -58.856159,
    87.239265, -6.773692, -59.040783,
    85.931122, -7.440585, -59.237297,
    84.642632, -7.863066, -59.336357,
    83.338280, -8.219630, -59.348583,
    82.016800, -8.541007, -59.371071,
    80.700005, -8.776169, -59.386993,
    79.000061, -8.750005, -59.404205,
    75.644821, -9.149647, -59.397270,
    74.634064, -9.014733, -59.423302,
    71.920708, -8.945028, -59.504490,
    70.921768, -8.986447, -59.703518,
    69.957237, -8.910275, -60.032097,
    69.040680, -8.792699, -60.478394,
    68.176872, -8.801409, -61.020370,
    67.313622, -8.812502, -61.563572,
    66.445267, -8.827121, -62.098515,
    65.604500, -8.832716, -62.673820,
    64.853836, -8.886011, -63.361320,
    64.048332, -9.189323, -64.424530,
    63.529961, -9.094744, -65.302437,
    63.013744, -9.063213, -66.181328,
    62.505089, -9.077284, -67.065010,
    62.115822, -9.144894, -68.006805,
    61.831207, -9.180872, -68.982086,
    61.554005, -9.231291, -69.962242,
    61.276596, -9.179898, -70.942604,
    60.999046, -9.140337, -71.922745,
    60.722118, -9.005057, -72.907417,
    58.999298, -8.769359, -78.349106,
    58.492390, -8.750000, -79.462196,
    58.175842, -8.750000, -80.431839,
    57.852287, -8.788690, -81.397903,
    56.975307, -8.838920, -83.970108,
    55.606792, -9.225280, -88.166565,
    54.969444, -9.224050, -90.099770,
    53.838299, -9.223946, -93.303070,
    53.306873, -8.978403, -94.172638,
    52.650906, -8.965917, -94.952515,
    51.887714, -8.996368, -95.627831,
    51.039528, -9.026613, -96.188911,
    50.129826, -9.014540, -96.649712,
    49.222870, -8.981197, -97.115295,
    48.318565, -8.911366, -97.583122,
    47.407032, -8.808225, -98.034767,
    46.444683, -8.756307, -98.366364,
    45.445477, -8.719460, -98.562843,
    44.439350, -8.698065, -98.728958,
    43.434891, -8.691673, -98.905418,
    42.430725, -8.697237, -99.084343,
    41.420193, -8.729889, -99.213470,
    40.401783, -8.750000, -99.201477,
    39.386082, -8.750000, -99.108139,
    38.369362, -8.608469, -99.026604,
    37.361057, -8.409928, -98.944649,
    36.363045, -8.166966, -98.861526,
    35.034431, -7.813974, -98.752487,
    32.699688, -6.851008, -98.521561,
    31.706427, -6.493926, -98.351158,
    30.710039, -6.000926, -98.189049,
    29.718033, -5.638355, -98.035667,
    27.425087, -4.956075, -97.658463,
    26.132277, -4.406496, -97.462463,
    24.151098, -3.967233, -97.131180,
    23.171007, -3.334724, -96.848778,
    21.888128, -2.891352, -96.503868,
    20.588747, -2.189068, -96.150612,
    19.361200, -1.888149, -95.630508,
    18.459362, -1.703711, -95.191124,
    17.273445, -1.238759, -94.619148,
    16.358973, -1.074295, -94.199028,
    14.863462, -0.812591, -93.437744,
    13.995891, -0.681874, -92.918854,
    13.124660, -0.652185, -92.401703,
    11.981263, -0.068438, -91.754562,
    8.189893, 0.131953, -89.508270,
    7.381987, 0.088618, -88.886955,
    6.571380, 0.027514, -88.269890,
    5.766691, -0.002299, -87.654968,
    4.945962, 0.000000, -87.049316,
    3.883574, 0.000000, -86.202354,
    3.126469, 0.000000, -85.518845,
    2.370068, -0.119624, -84.843323,
    1.614515, -0.303587, -84.175644,
    0.857115, 0.000000, -83.495300,
    -0.870769, 0.000000, -81.862190,
    -1.568556, 0.000000, -81.118217,
    -2.269822, 0.000000, -80.377510,
    -3.194349, 0.000000, -79.380562,
    -3.819240, 0.000000, -78.574409,
    -4.449546, 0.000000, -77.772438,
    -5.086962, 0.137702, -76.984360,
    -7.210657, 0.175519, -74.355286,
    -8.692932, -0.185115, -72.536095,
    -16.493408, 0.013434, -63.163830,
    -26.895781, 0.139084, -51.041916,
    -33.461296, 0.306640, -43.713573,
    -36.005562, 0.000000, -41.001808,
    -38.542736, -0.120660, -38.256161,
    -39.083927, 0.000000, -37.397449,
    -39.555202, 0.000000, -36.492863,
    -40.037514, 0.000000, -35.594105,
    -40.526558, 0.000000, -34.698994,
    -41.019489, -0.022164, -33.806004,
    -41.652416, 0.180338, -32.609749,
    -42.016624, 0.293460, -31.678379,
    -42.271152, 0.542783, -30.701290,
    -42.519249, 0.681291, -29.722433,
    -42.795589, 0.826644, -28.744770,
    -43.079948, 0.948544, -27.772430,
    -45.149635, 0.238260, -20.630129,
    -46.271828, 0.000000, -16.723400,
    -47.862793, 0.000000, -11.521264,
    -48.733509, 0.256991, -8.609860,
    -48.896648, 0.324526, -7.606351,
    -49.057713, 0.338616, -6.599248,
    -49.223305, 0.363505, -5.593130,
    -49.390556, 0.374511, -4.587783,
    -49.684200, 0.370477, -2.916082,
    -49.903740, 0.449262, -0.893895,
    -49.922726, 0.454472, 0.125913,
    -49.948883, 0.286609, 1.145556,
    -50.102844, -0.115937, 2.402715,
    -50.156853, 0.000000, 3.761640,
    -50.159981, 0.000000, 5.120244,
    -50.007885, -0.015259, 6.128576,
    -49.857365, -0.045265, 7.137108,
    -49.713821, 0.039034, 8.146688,
    -49.585705, 0.186338, 9.147921,
    -49.455704, 0.302599, 10.150855,
    -49.203857, 0.323244, 11.138046,
    -48.910267, 0.347195, 12.114579,
    -48.625202, 0.370449, 13.093660,
    -48.342144, 0.385329, 14.073327,
    -48.052616, 0.332701, 15.049960,
    -47.667847, 0.274040, 16.352327,
    -44.511124, 0.252378, 26.755022,
    -43.121750, -0.012623, 30.935074,
    -42.260540, -0.049747, 33.517990,
    -43.056217, -0.026659, 32.881931,
    -43.706509, -0.045365, 32.098381,
    -44.169453, 0.000000, 31.191624,
    -44.416973, 0.000000, 30.204136,
    -44.437744, 0.028373, 29.187935,
    -44.234550, 0.147605, 28.197554,
    -44.150120, 0.298818, 26.919199,
    -44.269028, 0.420611, 25.913910,
    -44.344677, 0.461140, 24.897463,
    -44.417439, 0.485243, 23.880436,
    -44.792072, 0.547829, 18.456495,
    -44.909702, 0.520047, 16.761114,
    -44.984016, 0.546042, 15.743969,
    -45.293648, 0.529866, 11.335310,
    -45.466782, -0.292093, 7.003008,
    -45.295456, -0.350010, 6.017503,
    -45.133808, -0.306995, 5.010587,
    -44.979404, -0.288531, 4.002648,
    -44.838799, -0.137383, 2.999915,
    -44.591873, 0.000000, 1.326093,
    -43.541481, -0.290097, -5.380277,
    -42.848728, -0.040544, -9.723336,
    -42.292336, 0.642154, -13.730497,
    -41.547997, 0.916541, -19.108713,
    -39.144688, -0.110269, -34.782520,
    -38.852798, -0.151156, -35.757435,
    -38.562496, -0.267764, -36.734951,
    -38.282818, -0.267764, -37.714661,
    -37.983608, -0.143293, -38.683777,
    -37.691250, 0.000000, -39.649914,
    -36.961990, 0.000000, -41.913502,
    -36.474354, 0.028213, -42.808399,
    -35.971992, 0.226432, -43.673664,
    -35.457680, 0.299082, -44.547100,
    -34.948200, 0.307759, -45.430702,
    -34.437958, 0.280654, -46.312672,
    -33.832745, 0.208592, -47.129368,
    -33.109161, 0.152678, -47.845551,
    -32.362976, 0.178447, -48.540161,
    -31.625460, 0.193057, -49.244442,
    -30.888935, 0.191501, -49.950066,
    -30.152180, 0.191501, -50.655468,
    -28.682632, 0.327592, -52.052853,
    -22.999739, -0.021864, -57.395721,
    -14.951417, 0.053770, -64.715271,
    -9.587814, -0.283296, -69.405060,
    0.201969, 0.000000, -77.739349,
    8.018144, 0.474488, -84.227051,
    8.810593, 0.500000, -84.869247,
    13.446918, -0.556004, -88.735023,
    18.700258, -1.617588, -93.300865,
    20.009169, -1.854144, -94.364220,
    20.871933, -2.079291, -94.879112,
    22.090717, -2.734235, -95.349945,
    23.265066, -3.198344, -95.600243,
    24.519112, -3.769525, -95.944420,
    25.734962, -4.197329, -96.323906,
    29.720675, -5.662676, -97.632629,
    35.058762, -7.760355, -99.350182,
    36.351494, -8.138969, -99.480362,
    37.667927, -8.463923, -99.614883,
    38.980259, -8.754398, -99.752815,
    39.995571, -8.750000, -99.850632,
    41.014687, -8.750000, -99.843651,
    42.021122, -8.699507, -99.690598,
    43.023811, -8.693951, -99.503616,
    44.028286, -8.689321, -99.326424,
    45.033279, -8.710691, -99.153366,
    46.038563, -8.734357, -98.981979,
    47.019447, -8.787255, -98.710304,
    47.952656, -8.849693, -98.303986,
    48.873344, -8.868368, -97.866592,
    49.800724, -8.926785, -97.446609,
    50.729198, -8.935081, -97.024788,
    51.655121, -8.995463, -96.601227,
    52.530022, -9.002600, -96.084099,
    53.332405, -8.989055, -95.456009,
    54.045231, -9.004202, -94.727470,
    54.733864, -8.960525, -93.976273,
    55.427677, -8.901531, -93.232239,
    56.115280, -8.872164, -92.479927,
    56.703072, -8.870046, -91.647278,
    57.171017, -8.860332, -90.741814,
    57.512268, -8.862024, -89.781326,
    57.717064, -8.850554, -88.782913,
    57.890076, -8.844110, -87.777725,
    58.075729, -8.838920, -86.774788,
    58.212158, -8.838920, -85.764946,
    58.190685, -8.838920, -84.746010,
    58.132496, -8.838920, -83.727676,
    58.085430, -8.838920, -82.708755,
    58.041931, -8.813974, -81.679680,
    57.999989, -8.750000, -80.664566,
    58.055069, -8.750000, -79.308144,
    58.276073, -8.768729, -78.313454,
    58.640610, -8.784549, -77.361809,
    59.035458, -8.795819, -76.421379,
    59.419872, -8.905950, -75.481468,
    59.803303, -9.013034, -74.545952,
    60.183582, -8.999618, -73.599487,
    60.564983, -9.003467, -72.653481,
    61.039726, -9.136139, -71.761078,
    61.552238, -9.214413, -70.882713,
    62.009228, -9.447116, -69.991959,
    62.537430, -9.467735, -69.120331,
    63.044746, -9.363365, -68.235588,
    63.564800, -9.289007, -67.360374,
    64.135468, -9.226895, -66.518372,
    64.748192, -9.076785, -65.716934,
    65.346390, -9.028047, -64.891052,
    65.945122, -8.860834, -64.065323,
    66.588593, -8.817420, -63.275833,
    67.349281, -8.807837, -62.598480,
    68.201759, -8.825143, -62.040005,
    69.123352, -8.814865, -61.604710,
    70.094444, -8.811885, -61.294819,
    71.097076, -8.893328, -61.111229,
    72.411018, -9.004781, -60.921368,
    73.416824, -9.037530, -60.751774,
    74.414474, -9.141319, -60.565445,
    75.411049, -9.250545, -60.377529,
    76.421310, -9.308679, -59.907219,
    77.726753, -8.834991, -59.683815,
    78.722717, -8.752763, -59.499489,
    79.723335, -8.750000, -59.305267,
    80.724586, -8.750000, -59.110531,
    88.836075, -6.541266, -57.393227,
    92.434395, -5.028264, -56.656715,
    97.030624, -3.152335, -55.771854,
    101.635529, -1.743830, -54.859383,
    102.837372, -1.193740, -54.311890,
    103.735199, -1.036099, -53.857418,
    104.636528, -0.850292, -53.415447,
    105.552078, -0.709825, -52.989338,
    107.340843, -0.442860, -52.125702,
    108.163712, -0.043214, -51.529591,
    108.909218, -0.021570, -50.838665,
    109.567856, 0.069812, -50.065910,
    110.118469, 0.173837, -49.215237,
    110.574730, 0.253699, -48.307762,
    111.032120, 0.303196, -47.397114,
    111.502792, 0.414660, -46.499710,
    111.953445, 0.485286, -45.515354,
    112.334724, 0.390197, -44.109322,
    112.585159, 0.327591, -43.019482,
    112.847252, 0.262069, -41.922249,
    113.124084, 0.192864, -40.787575,
    113.286522, 0.152224, -39.620495,
    113.299835, 0.148355, -38.440830,
    113.325317, 0.228800, -37.375103,
    113.384865, 0.355033, -36.367905,
    113.412315, 0.350082, -35.351025,
    113.442711, 0.387855, -34.332180,
    113.472527, 0.555494, -32.634743,
    113.514076, 0.948544, -29.250244,
    113.557159, 0.900203, -27.552439,
    113.667038, -0.037840, -20.129488,
    113.447464, 0.000000, -19.133646,
    113.228622, 0.000000, -18.137411,
    113.017487, 0.000000, -17.139507,
    112.808426, 0.000000, -16.141161,
    112.599602, 0.000000, -15.142765,
    110.949753, 0.337926, -7.520249,
    110.637054, 0.365284, -6.549754,
    110.331459, 0.402835, -5.577313,
    110.028595, 0.448456, -4.604719,
    109.324074, 0.563950, -2.333729,
    109.049179, 0.694935, -1.362919,
    108.008881, 0.504658, 1.822723,
    107.542999, 0.261044, 3.065771
};

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_STR,7);
    mob:addMod(MOD_DEX,7);
    mob:addMod(MOD_ATT,112);
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_EVA,132);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    onMobRoam(mob);

    -- setMod
	mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onPath
-----------------------------------

function onPath(mob)
    pathfind.patrol(mob, path);
end;

-----------------------------------
-- onMobRoam
-----------------------------------

function onMobRoam(mob)
    -- move to start position if not moving
    if (mob:isFollowingPath() == false) then
        mob:pathThrough(pathfind.first(path));
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)

    -- Set Guivre's spawnpoint and respawn time (18-24 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(64800,86400));

end;