-- ---------------------------------------------------------------------------
-- This file adds onto or modifies contents of mob_skill_lists.sql
-- and must be imported/executed AFTER that file
--
-- For new entries DarkStar does not have, use "INSERT INTO"
-- For changing entries that already exist use "REPLACE INTO"
-- REPLACE tells MySQL to delete the old line and insert the new one.
-- Using the wrong 1 of these 2 commands will result in errors.
-- ---------------------------------------------------------------------------
-- NOTE: Any skill like Mighty Strikes being forced in script does not need to be in the mobs skill list to work.
-- PRIMARY KEY (`skill_list_id`,`mob_skill_id`)
-- KEEP IT IN ORDER BY ID!!
-- INSERT INTO `mob_skill_lists` VALUES ('list_name', list_id, skill_id); -- skill name

INSERT INTO `mob_skill_lists` VALUES ('Hippogryph',140,580);
INSERT INTO `mob_skill_lists` VALUES ('Hippogryph',141,580);

INSERT INTO `mob_skill_lists` VALUES ('JormungandWyrm',392,1287);

-- Abyssea Mobs to be deleted once DSP merges


-- Alkonost
INSERT INTO `mob_skill_lists` VALUES ('Alkonost',901,576); -- back heel
-- INSERT INTO `mob_skill_lists` VALUES ('Alkonost',901,579); -- choke breath
INSERT INTO `mob_skill_lists` VALUES ('Alkonost',901,578); -- nihlity song
-- INSERT INTO `mob_skill_lists` VALUES ('Alkonost',901,580); -- fantod
-- INSERT INTO `mob_skill_lists` VALUES ('Alkonost',901,1330); -- hoof volley
INSERT INTO `mob_skill_lists` VALUES ('Alkonost',901,2828); -- jettatura

-- Arimaspi currently using arihman skill list as they appear to be default skills

-- Ashtaerh_the_Gallvexed
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1963); -- mind blast
-- INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1964); -- immortal mind
-- INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1965); -- immortal shield
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1966); -- mind purge
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1967); -- tribulation
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1968); -- immortal anathema
-- INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',902,1969); -- reprobation

-- Bakka
INSERT INTO `mob_skill_lists` VALUES ('Bakka',903,1711); -- frentic rip
INSERT INTO `mob_skill_lists` VALUES ('Bakka',903,2003); -- grating tantra
-- INSERT INTO `mob_skill_lists` VALUES ('Bakka',903,2004); -- stifling tantra

-- Balaur
INSERT INTO `mob_skill_lists` VALUES ('Balaur_Pre_50',904,819); -- blizzard breath
INSERT INTO `mob_skill_lists` VALUES ('Balaur_Pre_50',904,820); -- thunder breath

INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',905,819); -- blizzard breath -- chance of ice spikes effect
INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',905,820); -- thunder breath -- chance of shock spikes effect
INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',905,821); -- radiant breath
INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',905,822); -- chaos breath -- chance of dread spikes effect
-- INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',905,2222); -- hurricane breath

-- Bloodeye_Vileberry
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,783); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,784); -- Sigh
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,785); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,786); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,787); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,788); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,920); -- Everyones_Grudge
INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,921); -- Everyones_Rancor
-- INSERT INTO `mob_skill_lists` VALUES ('Bloodeye_Vileberry',906,2393); -- ritual bind

-- Bloodguzzler
INSERT INTO `mob_skill_lists` VALUES ('Bloodguzzler',907,415); -- acid mist

-- Bombadeel
INSERT INTO `mob_skill_lists` VALUES ('Bombadeel',908,581); -- blow
INSERT INTO `mob_skill_lists` VALUES ('Bombadeel',908,583); -- beatdown
INSERT INTO `mob_skill_lists` VALUES ('Bombadeel',908,584); -- uppercut

-- Clingy_Clare
INSERT INTO `mob_skill_lists` VALUES ('Clingy_Clare',909,317); -- vampiric lash
INSERT INTO `mob_skill_lists` VALUES ('Clingy_Clare',909,319); -- bad breath
INSERT INTO `mob_skill_lists` VALUES ('Clingy_Clare',909,320); -- sweet breath

-- Eccentric_Eve
INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',910,726); -- drain whip 
INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',910,319); -- bad breath
-- INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',910,2575); -- tainting breath
-- INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',910,2574); -- thousand spears
-- INSERT INTO `mob_skill_lists` VALUES ('Eccentric_Eve',910,1332); -- extremely bad breath 

-- Fear_Gorta
INSERT INTO `mob_skill_lists` VALUES ('Fear_Gorta',911,220); -- curse
INSERT INTO `mob_skill_lists` VALUES ('Fear_Gorta',911,1339); -- bane
INSERT INTO `mob_skill_lists` VALUES ('Fear_Gorta',911,1794); -- perdition

-- Fistule
-- INSERT INTO `mob_skill_lists` VALUES ('Fistule',912,2514); -- cytokinesis -- spawns 2 pulsules unless previous Pustules have been left alive at 1/6th of fistules HP (83%, 66%, 49%, 33%, 16%), regardless of TP.
-- INSERT INTO `mob_skill_lists` VALUES ('Fistule',912,2550); -- dissolve -- When Guimauve or Bloodguzzler is brought into range, Fistule uses Dissolve and the lesser NM will be defeated making fistule targetable.
-- INSERT INTO `mob_skill_lists` VALUES ('Fistule',912,2551); -- mucus spread
-- INSERT INTO `mob_skill_lists` VALUES ('Fistule',912,2552); -- epoxy spread

-- Gangly_Gean
INSERT INTO `mob_skill_lists` VALUES ('Gangly_Gean',913,328); -- drill branch
INSERT INTO `mob_skill_lists` VALUES ('Gangly_Gean',913,332); -- entangle -- adds endrain effect when used

-- Hexenpilz
INSERT INTO `mob_skill_lists` VALUES ('Hexenpilz',914,314); -- silence gas
INSERT INTO `mob_skill_lists` VALUES ('Hexenpilz',914,315); -- dark spore

-- Keratyrannos 
INSERT INTO `mob_skill_lists` VALUES ('Keratyrannos',915,2099); -- batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Keratyrannos',915,2100); -- clobber
INSERT INTO `mob_skill_lists` VALUES ('Keratyrannos',915,2102); -- boiling blood
-- INSERT INTO `mob_skill_lists` VALUES ('Keratyrannos',915,2104); -- crippling slam

-- Khalamari
INSERT INTO `mob_skill_lists` VALUES ('Khalamari',916,1347); -- dual strike
INSERT INTO `mob_skill_lists` VALUES ('Khalamari',916,1349); -- mantle pierce
INSERT INTO `mob_skill_lists` VALUES ('Khalamari',916,1348); -- siphon discharge
INSERT INTO `mob_skill_lists` VALUES ('Khalamari',916,1350); -- ink cloud

-- Kukulkan
INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2152); -- aqua fortis
INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2153); -- regurgitation
INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2154); -- delta thrust
INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2155); -- torpefying charge
INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2156); -- grim glower
-- INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2157); -- calcifying mist
-- INSERT INTO `mob_skill_lists` VALUES ('Kukulkan',917,2392); -- oppressive gaze -- augments additional effect poison 100 hp/tic while under effect

-- Lentor
INSERT INTO `mob_skill_lists` VALUES ('Lentor',918,2185); -- Corrosive Ooze
INSERT INTO `mob_skill_lists` VALUES ('Lentor',918,2186); -- Mucilaginous Ooze -- (60 seconds of encumbrance)

-- Raskovnik
-- INSERT INTO `mob_skill_lists` VALUES ('Raskovnik_Pre_50',919,2164); -- Viscid Emission
-- INSERT INTO `mob_skill_lists` VALUES ('Raskovnik_Pre_50',919,2167); -- Bloody Caress

-- INSERT INTO `mob_skill_lists` VALUES ('Raskovnik_Post_50',920,2164); -- Viscid Emission
-- INSERT INTO `mob_skill_lists` VALUES ('Raskovnik_Post_50',920,2167); -- Bloody Caress
-- INSERT INTO `mob_skill_lists` VALUES ('Raskovnik_Post_50',920,2169); -- Soothing Aroma

-- Turul
INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2427); -- tail lash
INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2428); -- bloody beak
INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2429); -- feral peck
-- INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2430); -- warped wail
INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2431); -- reaving wind
INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2432); -- storm wing
INSERT INTO `mob_skill_lists` VALUES ('Turul',921,2433); -- calamitous wind

-- Akash
INSERT INTO `mob_skill_lists` VALUES ('Akash',922,907); -- poison nails
INSERT INTO `mob_skill_lists` VALUES ('Akash',922,908); -- shining ruby
INSERT INTO `mob_skill_lists` VALUES ('Akash',922,909); -- glittering ruby
INSERT INTO `mob_skill_lists` VALUES ('Akash',922,910); -- meteorite

-- Adamastor
INSERT INTO `mob_skill_lists` VALUES ('Adamastor',923,664); -- impact roar
INSERT INTO `mob_skill_lists` VALUES ('Adamastor',923,665); -- grand slam
INSERT INTO `mob_skill_lists` VALUES ('Adamastor',923,666); -- power attack

-- Baba_Yaga
INSERT INTO `mob_skill_lists` VALUES ('Baba_Yaga',924,2193); -- zephyr arrow
INSERT INTO `mob_skill_lists` VALUES ('Baba_Yaga',924,2194); -- lethe arrows

-- Briareus
INSERT INTO `mob_skill_lists` VALUES ('Briareus',925,666); -- power attack
-- INSERT INTO `mob_skill_lists` VALUES ('Briareus',925,1636); -- trebuchet
-- INSERT INTO `mob_skill_lists` VALUES ('Briareus',925,2253); -- Meikyo Shisui
-- INSERT INTO `mob_skill_lists` VALUES ('Briareus',925,2576); -- mercurial strike
-- INSERT INTO `mob_skill_lists` VALUES ('Briareus',925,2578); -- colossal slam

-- Carabosse
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',926,2193); -- zephyr arrow
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',926,2194); -- lethe arrows

INSERT INTO `mob_skill_lists` VALUES ('Carabosse',927,2193); -- zephyr arrow  -- group 927 used only after benediction
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',927,2194); -- lethe arrows
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',927,2195); -- spring breeze 
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',927,2196); -- summer breeze
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',927,2197); -- autumn breeze
INSERT INTO `mob_skill_lists` VALUES ('Carabosse',927,2198); -- winter breeze

-- Chasmic Hornet
INSERT INTO `mob_skill_lists` VALUES ('Chasmic_Hornet',928,335); -- pollen
-- INSERT INTO `mob_skill_lists` VALUES ('Chasmic_Hornet',928,1847); -- frenzy pollen
-- INSERT INTO `mob_skill_lists` VALUES ('Chasmic_Hornet',928,2608); -- terminal sting

-- Dozing_Dorian
INSERT INTO `mob_skill_lists` VALUES ('Dozing_Dorian',929,262); -- sheep charge
INSERT INTO `mob_skill_lists` VALUES ('Dozing_Dorian',929,265); -- rage
INSERT INTO `mob_skill_lists` VALUES ('Dozing_Dorian',929,1837); -- feeble bleat

-- Grandgousier
INSERT INTO `mob_skill_lists` VALUES ('Grandgousier',930,658); -- catapult
INSERT INTO `mob_skill_lists` VALUES ('Grandgousier',930,662); -- lightning roar
-- INSERT INTO `mob_skill_lists` VALUES ('Grandgousier',930,1636); -- trebuchet

-- Hadhayosh
INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,628); -- wild horn
INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,629); -- thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,632); -- flame armor
INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,633); -- howl
-- INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,2390); -- accursed armor
-- INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,2391); -- amnesic blast
-- INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',931,2586); -- ecliptic meteor
-- NOTE:  Meteor is spell not skill (verified via youtube video) and is cast at 20% and 5% via script and does not have a spell list for it see Hayhayosh.lua

-- Irrlicht
-- INSERT INTO `mob_skill_lists` VALUES ('Irrlicht',932,2511); --  corpse breath

-- Keesha_Poppo
INSERT INTO `mob_skill_lists` VALUES ('Keesha_Poppo',933,290); -- spinning claw
INSERT INTO `mob_skill_lists` VALUES ('Keesha_Poppo',933,291); -- claw storm
INSERT INTO `mob_skill_lists` VALUES ('Keesha_Poppo',933,295); -- magic fruit
-- INSERT INTO `mob_skill_lists` VALUES ('Keesha_Poppo',933,2610); -- vacant gaze

-- Lugarhoo
INSERT INTO `mob_skill_lists` VALUES ('Lugarhoo',934,2170); -- fevered pitch
INSERT INTO `mob_skill_lists` VALUES ('Lugarhoo',934,2171); -- call of the moon

-- Mangy-tailed_Marvin
INSERT INTO `mob_skill_lists` VALUES ('Mangy-tailed_Marvin',935,259); -- whirl claws
INSERT INTO `mob_skill_lists` VALUES ('Mangy-tailed_Marvin',935,257); -- foot kick
INSERT INTO `mob_skill_lists` VALUES ('Mangy-tailed_Marvin',935,323); -- wild carrot

-- Megamaw_Mikey
INSERT INTO `mob_skill_lists` VALUES ('Megamaw_Mikey',936,424); -- full-force blow

-- Megantereon
INSERT INTO `mob_skill_lists` VALUES ('Megantereon',937,270); -- roar
-- INSERT INTO `mob_skill_lists` VALUES ('Megantereon',937,2207); -- Disorienting_Waul

-- Nguruvilu
INSERT INTO `mob_skill_lists` VALUES ('Nguruvilu',938,1720); -- Wind_Shear
INSERT INTO `mob_skill_lists` VALUES ('Nguruvilu',938,1721); -- Obfuscate
INSERT INTO `mob_skill_lists` VALUES ('Nguruvilu',938,1722); -- Zephyr_Mantle
INSERT INTO `mob_skill_lists` VALUES ('Nguruvilu',938,1723); -- Ill_Wind

-- Ovni
INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1370); -- vitriolic barrage
INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1371); -- primal drill
INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1372); -- concussive oscillation
INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1373); -- ion shower
-- INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1374); -- torrential torment
INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1375); -- asthenic fog
-- INSERT INTO `mob_skill_lists` VALUES ('Ovni',939,1377); -- flourescence

-- Pantagruel
INSERT INTO `mob_skill_lists` VALUES ('Pantagruel',940,663); -- ice roar
-- INSERT INTO `mob_skill_lists` VALUES ('Pantagruel',940,2367); -- moribund hack

-- Piasa
INSERT INTO `mob_skill_lists` VALUES ('Piasa',941,1445); -- damnation dive

-- Poroggo Dom Juan
-- INSERT INTO `mob_skill_lists` VALUES ('Poroggo_Dom_Juan',942,1957); -- frog song
INSERT INTO `mob_skill_lists` VALUES ('Poroggo_Dom_Juan',942,1959); -- water bomb

-- Toppling_Tuber
INSERT INTO `mob_skill_lists` VALUES ('Toppling_Tuber',943,308); -- frog kick
INSERT INTO `mob_skill_lists` VALUES ('Toppling_Tuber',943,310); -- queazyshroom
INSERT INTO `mob_skill_lists` VALUES ('Toppling_Tuber',943,311); -- numbshroom
-- INSERT INTO `mob_skill_lists` VALUES ('Toppling_Tuber',943,2607); -- agaricus

-- Trudging_Thomas	
INSERT INTO `mob_skill_lists` VALUES ('Trudging_Thomas',944,266); -- ram charge
-- INSERT INTO `mob_skill_lists` VALUES ('Trudging_Thomas',944,0); -- Doom Bleat missing from mob_skills.sql in DSP -- Doom Bleat which is roughly 50% HP down. HP down effect can be erased

-- Abas
INSERT INTO `mob_skill_lists` VALUES ('Abas',945,515); -- toxic spit

-- Adze
INSERT INTO `mob_skill_lists` VALUES ('Adze',946,2158); -- insipid nip
INSERT INTO `mob_skill_lists` VALUES ('Adze',946,2159); -- pandemic nip
INSERT INTO `mob_skill_lists` VALUES ('Adze',946,2160); -- bombilation
INSERT INTO `mob_skill_lists` VALUES ('Adze',946,2161); -- cimicine discharge
INSERT INTO `mob_skill_lists` VALUES ('Adze',946,2162); -- emetic discharge

-- Alectryon
INSERT INTO `mob_skill_lists` VALUES ('Alectryon',947,406); -- hammer beak
INSERT INTO `mob_skill_lists` VALUES ('Alectryon',947,407); -- poison pick
INSERT INTO `mob_skill_lists` VALUES ('Alectryon',947,408); -- Sound_Vacuum
INSERT INTO `mob_skill_lists` VALUES ('Alectryon',947,410); -- sound blast
INSERT INTO `mob_skill_lists` VALUES ('Alectryon',947,411); -- baleful gaze
-- INSERT INTO `mob_skill_lists` VALUES ('Alectryon',947,1334); -- contamination

-- Bhumi
INSERT INTO `mob_skill_lists` VALUES ('Bhumi',948,852); -- megalith throw
INSERT INTO `mob_skill_lists` VALUES ('Bhumi',948,853); -- earthen ward
INSERT INTO `mob_skill_lists` VALUES ('Bhumi',948,854); -- stone iv
INSERT INTO `mob_skill_lists` VALUES ('Bhumi',948,855); -- mountain buster

-- Cannered Noz
-- INSERT INTO `mob_skill_lists` VALUES ('Cannered_Noz',0,2511); -- corpse breath -- shares 932 with Irrlicht

-- Chloris
INSERT INTO `mob_skill_lists` VALUES ('Chloris',950,306); -- scream
-- INSERT INTO `mob_skill_lists` VALUES ('Chloris',950,2210); -- petal pirouette
-- INSERT INTO `mob_skill_lists` VALUES ('Chloris',950,2387); -- fatal scream
-- INSERT INTO `mob_skill_lists` VALUES ('Chloris',950,2579); -- phaeosynthesis

-- Chukwa
INSERT INTO `mob_skill_lists` VALUES ('Chukwa',951,806); -- tortoise stomp

-- Cuelebre
INSERT INTO `mob_skill_lists` VALUES ('Cuelebre',952,1303); -- ocher blast
INSERT INTO `mob_skill_lists` VALUES ('Cuelebre',952,1304); -- bai wing

-- Gancanagh
INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',953,2210); -- petal pirouette
-- INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',953,2599); -- tepal twist
-- INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',953,2600); -- bloom fouette
-- INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',953,2601); -- petalback spin

-- Glavoid
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',954,2187); -- dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',954,2188); -- slaverous gale
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',954,2189); -- aeolian void
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',954,2190); -- extreme purgation
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',954,2191); -- desiccation
-- INSERT INTO `mob_skill_lists` VALUES ('Glavoid',954,2605); -- disgorge

-- Hedetet
INSERT INTO `mob_skill_lists` VALUES ('Hedetet',955,353); -- death scissors 
-- INSERT INTO `mob_skill_lists` VALUES ('Hedetet',955,2221); -- hell scissors

-- Iratham
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2566); -- diabolic claw
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2568); -- deathly diminuendo
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2569); -- hellish crescendo
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2570); -- afflicting gaze
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2571); -- stygian sphere
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2572); -- malign invocation
INSERT INTO `mob_skill_lists` VALUES ('Iratham',956,2573); -- shadow wreck

-- Lachrymater
INSERT INTO `mob_skill_lists` VALUES ('Lachrymater',957,1217); -- empty cutter
INSERT INTO `mob_skill_lists` VALUES ('Lachrymater',957,1218); -- vacuous osculation
INSERT INTO `mob_skill_lists` VALUES ('Lachrymater',957,1219); -- hexegon belt
INSERT INTO `mob_skill_lists` VALUES ('Lachrymater',957,1220); -- auroral drape
INSERT INTO `mob_skill_lists` VALUES ('Lachrymater',957,1228); -- memory of the dark

-- Lacovie
-- INSERT INTO `mob_skill_lists` VALUES ('Lacovie',958,1047); -- tortise song **modified removes 3 buffs**
-- INSERT INTO `mob_skill_lists` VALUES ('Lacovie',958,2585); -- tetsudo tremor

-- Mictlantecuhtli
INSERT INTO `mob_skill_lists` VALUES ('Mictlantecuhtli',959,530); -- memento mori
INSERT INTO `mob_skill_lists` VALUES ('Mictlantecuhtli',959,531); -- silence seal
INSERT INTO `mob_skill_lists` VALUES ('Mictlantecuhtli',959,532); -- envoutement
INSERT INTO `mob_skill_lists` VALUES ('Mictlantecuhtli',959,533); -- danse macabre
INSERT INTO `mob_skill_lists` VALUES ('Mictlantecuhtli',959,1326); -- final retrobution

-- Minhocao
INSERT INTO `mob_skill_lists` VALUES ('Minhocao',960,2188); -- slaverous gale
INSERT INTO `mob_skill_lists` VALUES ('Minhocao',960,2189); -- aeolian void
INSERT INTO `mob_skill_lists` VALUES ('Minhocao',960,2190); -- extreme purgation
INSERT INTO `mob_skill_lists` VALUES ('Minhocao',960,2191); -- desiccation
-- INSERT INTO `mob_skill_lists` VALUES ('Minhocao',960,2604); -- gorge
-- INSERT INTO `mob_skill_lists` VALUES ('Minhocao',960,2605); -- disgorge

-- Muscaliet
INSERT INTO `mob_skill_lists` VALUES ('Muscaliet',961,800); -- heat breath

-- Myrmecoleon
-- INSERT INTO `mob_skill_lists` VALUES ('Myrmecoleon',962,2516); -- gravitic horn

-- Ophanim
INSERT INTO `mob_skill_lists` VALUES ('Ophanim',963,437); -- death ray
INSERT INTO `mob_skill_lists` VALUES ('Ophanim',963,438); -- hex eye
-- INSERT INTO `mob_skill_lists` VALUES ('Ophanim',963,439); -- petro gaze
INSERT INTO `mob_skill_lists` VALUES ('Ophanim',963,440); -- cartharsis

-- Tefenet
INSERT INTO `mob_skill_lists` VALUES ('Tefenet',964,652); -- blaster
INSERT INTO `mob_skill_lists` VALUES ('Tefenet',964,653); -- chaotic eye
-- INSERT INTO `mob_skill_lists` VALUES ('Tefenet',964,2209); -- blink of peril
-- INSERT INTO `mob_skill_lists` VALUES ('Tefenet',964,2602); -- mortal blast

-- Treble Noctules
-- INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',965,1157); -- slipstream
-- INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',965,1341); -- knife edge circle
-- INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',965,1342); -- train fall
-- INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',965,1667); -- jet stream

-- Vetehinen
INSERT INTO `mob_skill_lists` VALUES ('Vetehinen',966,2564); -- blazing bound
INSERT INTO `mob_skill_lists` VALUES ('Vetehinen',966,2565); -- molting burst

-- Halimede
INSERT INTO `mob_skill_lists` VALUES ('Halimede',967,2562); -- acrid stream
INSERT INTO `mob_skill_lists` VALUES ('Halimede',967,2563); -- rime spray

-- Siranpa-Kamuy
-- INSERT INTO `mob_skill_lists` VALUES ('Siranpa-kamuy',968,1026); -- Arbor Storm

-- Manananggal
INSERT INTO `mob_skill_lists` VALUES ('Manananggal',969,1778); -- spinal cleave
INSERT INTO `mob_skill_lists` VALUES ('Manananggal',969,1779); -- mangle
INSERT INTO `mob_skill_lists` VALUES ('Manananggal',969,1782); -- animating wail
INSERT INTO `mob_skill_lists` VALUES ('Manananggal',969,1783); -- fortifying wail

-- Abyssea Skills above this line only

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2520); -- Sinister_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2521); -- Chaos_blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2523); -- Dancing_tail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2525); -- Chilling_roar
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2527); -- Soul_douse
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Zilant',4000,2529); -- Dark_star

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Harpeia',4001,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,629); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,630); -- Kick_Out
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,631); -- Shock_Wave
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,632); -- Flame_Armor
-- INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,????); -- Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Behemoth',4002,2391); -- Amnesic_Blast

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,628); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,629); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,632); -- Flame_Armor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,2586); -- Ecliptic_Meteor
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Elasmoth',4003,2391); -- Amnesic_Blast

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,804); -- Tortoise Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,805); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,806); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,807); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Ferromantoise',4004,2585); -- Tetsudo_Tremor

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1287); -- Sleet_Blast
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1289); -- Gregale_Wing
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1290); -- Spike_Flail
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1291); -- Glacial_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1292); -- Touchdown
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1294); -- Gregale_Wing_Air
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Wyrm',4005,1295); -- Absolute_Terror

INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,804); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,805); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,806); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Lofty_Adamantoise',4006,809); -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1785); -- Lava_Spit
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1786); -- Sulfurous_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1787); -- Scorching_Lash
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1788); -- Ululation
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1789); -- Magma_Hoplon
INSERT INTO `mob_skill_lists` VALUES ('Mired_Cerberus',4007,1790); -- Gates_of_Hades

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,2022); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,2023); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,2025); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,2026); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,2027); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khimaira',4008,2028); -- Fulmination

INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1828); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1829); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1830); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1831); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1832); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1834); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1835); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Hydra',4009,1836); -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1785); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1786); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1787); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1788); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,1789); --
INSERT INTO `mob_skill_lists` VALUES ('Mired_Orthrus',4010,2701); -- Acheron_Flame

INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2022); -- Tenebrous_Mist
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2023); -- Thunderstrike
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2025); -- Dreadstorm
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2026); -- Fossilizing_Breath
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2027); -- Plague_Swipe
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2028); -- Fulmination
INSERT INTO `mob_skill_lists` VALUES ('Mired_Khrysokhimaira',4011,2698); -- Lithic_Breath

INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1828); -- Pyric_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1829); -- Polar_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1830); -- Polar_Blast
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1831); -- Pyric_Bulwark
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1832); -- Barofield
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1834); -- Trembling
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1835); -- Serpentine_Tail
INSERT INTO `mob_skill_lists` VALUES ('Mired_Alfard',4012,1836); -- Nerve_Gas

INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Mired_Mantis',4013,2756); -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,530); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,531); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,532); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Corse',4014,533); -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,2113); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,2115); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,2117); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dvergar',4015,2119); -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,2106); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,2108); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,2110); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Vampyr',4016,2112); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,530); -- Memento_Mori
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,531); -- Silence_Seal
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,532); -- Envoutement
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Kumakatok',4017,533); -- Danse_Macabre

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2113); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2114); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2115); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2116); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2117); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2118); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Dweorg',4018,2119); -- Thundris_shriek

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2108); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2110); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2388); -- Dirty_Breath
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Strigoi',4019,2534); -- Minax_Glare

INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2715); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2716); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2717); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2720); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Soaring_Naraka',4020,2721); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2427); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2428); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2429); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2431); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2432); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Amphiptere',4021,2433); -- Calamitous_wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2335); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2336); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2338); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ixion',4022,2369); -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2187); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2188); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2189); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2190); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sandworm',4023,2605); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2427); -- Tail_lash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2428); -- Bloody_beak
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2429); -- Feral_peck
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2430); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2431); -- Reaving_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2432); -- Storm_wing
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2433); -- Calamitous_wind
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Sanguiptere',4024,2642); -- Vermilion_Wind

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2334); -- Wrath_of_zeus
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2335); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2336); -- Acheron_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2337); -- Damsel_memento
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2338); -- Rampant_stance
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Alicorn',4025,2369); -- Scintillant_lance

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2187); -- Dustvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2188); -- Slaverous_gale
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2189); -- Aeolian_Void
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2190); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2191); -- Desiccation
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2192); -- Doomvoid
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Gigaworm',4026,2605); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2619); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2620); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2622); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2623); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2624); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2626); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Veiled_Ironclad',4027,2627); -- Area_Bombardment

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2784); -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2785); -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2786); -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2787); -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2788); -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2789); -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Gallu',4028,2790); -- Oblivions_mantle

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2798); -- Gnash_n_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2799); -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2800); -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2801); -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2802); -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2803); -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Botulus',4029,2804); -- Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Harpeia',4030,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Mantis',4031,2756); -- Dead_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2715); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2716); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2717); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2720); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Naraka',4032,2721); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2619); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2620); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2622); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2623); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2624); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2626); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Paramount_Ironclad',4033,2627); -- Area_Bombardment

-- INSERT INTO `mob_skill_lists` VALUES ('Bouncing_Bertha',4034,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Hugemaw_Harold',4035,     Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Prickly_Pitriv',4036,     Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Ironhorn_Baldurno',4037,  Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sleepy_Mabel',4038,       Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Serpopard_Ninlil',4039,   Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Abyssdiver',4040,         Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Immanibugard',4041,       Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Intuila',4042,            Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Jester_Malatrix',4043,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Orcfeltrap',4044,         Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Steamy_Samantha',4045,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sultry_Samantha',4046,    Wiki info is lacking, currently using DSP ID for normal mob!
-- INSERT INTO `mob_skill_lists` VALUES ('Sybaritic_Samantha',4047, Wiki info is lacking, currently using DSP ID for normal mob!

INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,659); -- Cursed Sphere
INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,660); -- Venom
INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,1324); -- Debilitating_Drone A
INSERT INTO `mob_skill_lists` VALUES ('Valkurm_Imperator',4048,1624); -- Debilitating_Drone B

-- INSERT INTO `mob_skill_lists` VALUES ('Cactrot_Veloz',4049,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Emperor_Arthro',4050,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Joyous_Green',4051,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Keeper_of_Heiligtum',4052,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Tiyanak',4053,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Voso',4054,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Warblade_Beak',4055,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Woodland_Mender',4056,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Arke',4057,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Ayapec'4058,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Beist',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Coca',4060,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Douma_Weapon',4061,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Katashiro weapon',4062,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('King_Uropygid',4063,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Largantua',4064,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Lumber_Jill',4065,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Mephitas',4066,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muut',4067,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muuts_Sacrifice',4068,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Muuts_Hound Warrior',4068,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Specter_Worm',4070,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Strix',4071,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Azrael',4072,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Borealis_Shadow',4073,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Orientalis_Shadow',4074,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Australis_Shadow',4075,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Occidentalis_Shadow',4056,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Camahueto',4057,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Vedrfolnir',4058,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Tatenashi_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Hachiryu_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Hizamaru_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Ubuginu_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Omodaka_Armor',4059,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Benkei',4060,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Druk',4061,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Zomok',4062,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Abzu',4063,PLACEHOLDER); -- Unfinished

-- Beginning of block of incorrect list names...
-- Correct format is: ('list_name', list_id, skill_id); -- skill name
INSERT INTO `mob_skill_lists` VALUES ('Custom_Sandspin',4064,426); -- SS_Sandspin
INSERT INTO `mob_skill_lists` VALUES ('Tremors',4064,427); -- SS_Tremors
INSERT INTO `mob_skill_lists` VALUES ('Custom_Mud_Stream',4064,2645); -- Mud_Stream -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Custom_Aqua_Fortis',4065,2152); -- Aqua_Fortis
INSERT INTO `mob_skill_lists` VALUES ('Regurgitation',4065,2153); -- Regurgitation
INSERT INTO `mob_skill_lists` VALUES ('Delta_Thrust',4065,2154); -- Delta_Thrust
INSERT INTO `mob_skill_lists` VALUES ('Custom_Torpefying_Charge',4065,2155); -- Torpefying_Charge
INSERT INTO `mob_skill_lists` VALUES ('Custom_Grim_Glower',4065,2156); -- Grim_Glower
INSERT INTO `mob_skill_lists` VALUES ('Custom_Calcifying_Mist',4065,2157); -- Calcifiying_Mist
INSERT INTO `mob_skill_lists` VALUES ('Custom_Oppressive_Gaze',4065,2392); -- Oppressive_Glaze

INSERT INTO `mob_skill_lists` VALUES ('Crosswind',4066,1718); -- Crosswind
INSERT INTO `mob_skill_lists` VALUES ('Wind_Shear',4066,1720); -- Wind_Shear
INSERT INTO `mob_skill_lists` VALUES ('Obfuscate',4066,1721); -- Obfuscate
INSERT INTO `mob_skill_lists` VALUES ('Zephyr_Mantle',4066,1722); -- Zephyr_Mantle
INSERT INTO `mob_skill_lists` VALUES ('Ill_Wind',4066,1723); -- Ill_Wind
INSERT INTO `mob_skill_lists` VALUES ('Custom_White_Wind',4066,1724); -- White_Wind

INSERT INTO `mob_skill_lists` VALUES ('Custom_Trebuchet',4067,1636); -- Trebuchet -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Moribund_Hack',4067,2367); -- Moribund_Hack
INSERT INTO `mob_skill_lists` VALUES ('Custom_Mercurial_Strike',4067,2576); -- Mercurial_Strike -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Colossal_Slam',4067,2578); -- Colossal_Slam -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Custom_Corpse_Breath',4068,2511); -- NM_Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Dream_Flower',4069,301); -- Dream_Flower
INSERT INTO `mob_skill_lists` VALUES ('Custom_Scream',4069,306); -- Scream_VW
INSERT INTO `mob_skill_lists` VALUES ('Petal_Pirouette',4069,2210); -- Petal_Pirouette -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Dream_Flower',4069,1585); -- Dream_Flower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Fluid_Spread',4070,431); -- Fluid_Spread
INSERT INTO `mob_skill_lists` VALUES ('Custom_Digest',4070,433); -- Digest
INSERT INTO `mob_skill_lists` VALUES ('Custom_Dissolve',4070,2550); -- Dissolve

INSERT INTO `mob_skill_lists` VALUES ('Bubble_Shower',4071,442); -- Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Custom_Bubble_Curtain',4071,443); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Scissor_Guard',4071,445); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Custom_Mega_Scissors',4071,2513); -- Mega_Scissors -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Venom_Shower',4071,2512); -- Venom_Shower -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Sand_Blast',4072,275); -- Sand_Blast
INSERT INTO `mob_skill_lists` VALUES ('Venom_Spray',4072,277); -- Venom_Spray
INSERT INTO `mob_skill_lists` VALUES ('Mandibular_Bite',4072,279); -- Mandibular_Bite
INSERT INTO `mob_skill_lists` VALUES ('Custom_Quake_Blast',4072,2517); -- Quake_Blast -- need correct animation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Gravitic_Horn',4072,2518); -- Gravitic_Horn -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Custom_Words_of_Bane',4073,783); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Light_of_Penance',4073,785); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Lateral_Slash',4073,786); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Vertical_Slash',4073,787); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Throat_Stab',4073,788); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Everyones_Rancor',4073,921); -- Everyones_Rancor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ritual_Bind',4073,2393); -- Ritual_Bind -- need correct animation

INSERT INTO `mob_skill_lists` VALUES ('Bad_Breath',4074,319); -- EE_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Drain_Whip',4074,726); -- EE_Drain_Whip
INSERT INTO `mob_skill_lists` VALUES ('Custom_Extremely_Bad_Breath',4074,1332); -- EE_Extremely_Bad_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Thousand_Spears',4074,2574); -- EE_Thousand Spears
INSERT INTO `mob_skill_lists` VALUES ('Custom_Tainting_Breath',4074,2575); -- Tainting_Breath

INSERT INTO `mob_skill_lists` VALUES ('Custom_Spring_Breeze',4075,2195); -- Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Custom_Summer_Breeze',4075,2196); -- Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Custom_Autumn_Breeze',4075,2197); -- Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Custom_Winter_Breeze',4075,2198); -- Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Cyclonic_Turmoil',4075,2199); -- Cyclonic_Turmoil -- BROKEN AS FUCK IN DSP!
INSERT INTO `mob_skill_lists` VALUES ('Custom_Norn_Arrows',4075,2518); -- Norn_Arrows

INSERT INTO `mob_skill_lists` VALUES ('Wild_Horn',4076,628); -- Wild_Horn
INSERT INTO `mob_skill_lists` VALUES ('Thunderbolt',4076,629); -- Thunderbolt
INSERT INTO `mob_skill_lists` VALUES ('Howl',4076,633); -- Howlacc
INSERT INTO `mob_skill_lists` VALUES ('Custom_Accursed_Armor',4076,2390); -- Accursed_Armor
INSERT INTO `mob_skill_lists` VALUES ('Custom_Amnesic_Blast',4076,2391); -- Amnesic_Blast
INSERT INTO `mob_skill_lists` VALUES ('Custom_Ecliptic_Meteor',4076,2586); -- Ecliptic_Meteor

INSERT INTO `mob_skill_lists` VALUES ('Bloodrake',4077,2106); -- Bloodrake
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nosferatus_Kiss',4077,2108); -- Nosferatus_kiss
INSERT INTO `mob_skill_lists` VALUES ('Wings_of_Gehenna',4077,2110); -- Wings_of_Gehenna
INSERT INTO `mob_skill_lists` VALUES ('Custom_Nocturnal_Servitude',4077,2112); -- Nocturnal_Servitude

INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Song',4078,804); -- Tortoise_Song
INSERT INTO `mob_skill_lists` VALUES ('Tortoise_Stomp',4078,806); -- Tortoise_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Earth_Breath',4078,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Custom_Testudo_Tremor',4078,2585); -- Tetsudo_Tremor
-- End of incorrect block of list names...

INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4079,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4079,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4079,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4079,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4079,2729); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4079,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Stance',4080,2714); -- Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Damnation',4080,2715); -- Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Oblivion',4080,2716); -- Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Yaksha_Bliss',4080,2717); -- Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Stance',4080,2718); -- Raksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Judgement',4080,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Illusion',4080,2720); -- Raksha_illusion
INSERT INTO `mob_skill_lists` VALUES ('Custom_Raksha_Vengeance',4080,2721); -- Raksha_vengeance

INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2619); -- Turbine_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2620); -- Seismic_impact
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2622); -- Arm_canon
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2623); -- Ballistic_kick
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2624); -- Scapula_beam
INSERT INTO `mob_skill_lists` VALUES ('Voidwrought',4081,2625); -- Eradicator

INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2421); -- Dark_orb
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2422); -- Dark_mist
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2423); -- Triumphant_roar
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2424); -- Terror_eye
INSERT INTO `mob_skill_lists` VALUES ('Goji',4082,2425); -- Bloody_claw

INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,500); -- Mow
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,1360); -- Apocalyptic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2389); -- Lethal_Triclip
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2533); -- Lithic_Ray
INSERT INTO `mob_skill_lists` VALUES ('Gugalanna',4083,2640); -- Ruinous_Scythe

INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,401); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,922); -- Blind_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,923); -- Giga_Scream
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,924); -- Dread_Dive
INSERT INTO `mob_skill_lists` VALUES ('Yatagarasu',4084,2703); -- Dread_Wind

INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2430); -- Warped_Wail
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2431); -- Reaving_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2433); -- Calamitous_Wind
INSERT INTO `mob_skill_lists` VALUES ('Agathos',4085,2642); -- Custom_Vermilion_Wind

-- -------------

INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,2099); -- Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,2100); -- Clobber
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,2101); -- Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,2103); -- Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Cherufe',4086,2104); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,383); -- Tusk -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,385); -- Bone_Crunch -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,386); -- Awful_Eye -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,387); -- Heavy_Bellow -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Taweret',4087,2643); -- Tyrant_Tusk

INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1821); -- Amplification -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1822); -- Boiling_Point -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1824); -- Amorphic_spikes -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1825); -- Amorphic_scythe
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,1826); -- Synergism
INSERT INTO `mob_skill_lists` VALUES ('Roly_Poly',4088,2771); -- Gush_o_Goo

INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2190); -- Extreme_Purgation
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Laidly_Laurence',4089,2605); -- Disgorge

INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1277); -- Inferno_Blast_alt2
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1278); -- Inferno_Blast_alt -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1279); -- Tebbad_Wing -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1280); -- Spike_Flail -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1281); -- Fiery_Breath -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1282); -- Touchdown -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1283); -- Inferno_Blast -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1284); -- Tebbad_Wing_Air -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1295); -- Absolute_Terror -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Ildebrann',4090,1296); -- Horrid_Roar_3 -- DSP

INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2158); -- Insipid_Nip -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2159); -- Pandemic_Nip -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2160); -- Bombilation
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2161); -- Cimicine_Discharge -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2162); -- Emetic_Discharge -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Mellonia',4091,2770); -- Booming_Bombilation

INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1951); -- Magma_Fan -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1952); -- Erratic_Flutter
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1953); -- Proboscis
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1954); -- Erosion_Dust
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1955); -- Exuviation -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Kalos_Eunomia',4092,1956); -- Fire_Break

INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1815); -- Amber_scutum -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1816); -- Vitriolic_spray -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1817); -- Thermal_Pulse -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1818); -- Cannonball -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1819); -- Heat_barrier -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Nympha_Eunomia',4093,1820); -- Vitriolic_shower

INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,478); -- Hell_Slash -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,479); -- Horror_Cloud -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,485); -- Blood_Saber -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Gasha',4094,2767); -- Crepuscle_Blade

INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,1326); -- Final_Retribution
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,531); -- Silence_Seal -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,532); -- Envoutement -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,1329); -- Gala_Macabre
INSERT INTO `mob_skill_lists` VALUES ('Giltine',4095,2638); -- Hadal_Summons

INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2755); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Kaggen',4096,2756); -- Death_Prophet

INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,548); -- Blindeye -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,549); -- Eyes_On_Me -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,555); -- Magic_Barrier -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,557); -- Level_5_Petrify -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Akvan',4097,2768); -- Deathly_Glare

INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2572); -- Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2692); -- Royal_decree
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2700); -- Enthrall
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2774); -- Flank_Opening
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2775); -- Tabbiyaa_Gambit
INSERT INTO `mob_skill_lists` VALUES ('Pil',4098,2776); -- Shah_Mat

-- --------------------- Continue Here 

INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,338); -- Power_Attack_Beetle -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,339); -- Freq_Field
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,340); -- Rhino_Attack -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,341); -- Rhino_Guard -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Lancing_Lamorak',4099,2823); -- Rhinowrecker

INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2195); -- Spring_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2196); -- Summer_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2197); -- Autumn_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2198); -- Winter_Breeze
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2199); -- Cyclonic_Turmoil -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2518); -- Norn_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Bhishani',4100,2822); -- Eldritch_Wind

-- INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('RwNwPrtMHrw',4101,2826); -- Exponential_Burst

INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,2099); -- Batterhorn
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,2100); -- Clobber
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,2101); -- Demoralizing_Roar
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,2102); -- Boiling_Blood
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,2103); -- Granite_Skin
INSERT INTO `mob_skill_lists` VALUES ('Stachysaurus',4102,2104); -- Crippling_Slam

INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,2511); -- Corpse_Breath
INSERT INTO `mob_skill_lists` VALUES ('GwynnApnudd',4103,2825); -- Louring_Skies

INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,478); -- Hell_Slash -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,479); -- Horror_Cloud -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,485); -- Blood_Saber -- DSP
INSERT INTO `mob_skill_lists` VALUES ('Smierc',4104,2824); -- Cloudscourge

INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2755); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2756); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Gaunab',4105,2809); -- Immolating_Claw

INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2727); -- Wings_of_woe
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Ocythoe',4106,2730); -- Ravenous_wail

INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2718); -- Raksha_Stance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2719); -- Raksha_Judgment
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2720); -- Raksha_Illusion
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2721); -- Raksha_Vengeance
INSERT INTO `mob_skill_lists` VALUES ('Kalasutrax',4107,2810); -- Yamas_Jugement

INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2784); -- Diluvial_wakes
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2785); -- Kurugi_collapse
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2786); -- Searing_halitus
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2787); -- Divesting_gale
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2788); -- Bolt_of_perdition
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2789); -- Crippling_rime
INSERT INTO `mob_skill_lists` VALUES ('Ig-Alima',4108,2790); -- Oblivions_mantle

INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2798); -- Gnash_N_Guttle
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2799); -- Sloughy_Sputum
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2800); -- Chymous_Reek
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2801); -- Rancid_Reflux
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2802); -- Crowning_Flatus
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2803); -- Slimy_Proposal
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Rex',4109,2804); -- Just_Desserts

INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,2164); -- Viscid_Emission
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,2166); -- Floral_Bouquet
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,2168); -- Bloody_Caress
INSERT INTO `mob_skill_lists` VALUES ('Holy_Moly',4110,2169); -- Soothing_Aroma

INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,2163); -- Seedspray
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,2165); -- Rotten_Stench
INSERT INTO `mob_skill_lists` VALUES ('Moly',4111,2166); -- Floral_Bouquet

INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,364); -- Filamented_Hold
INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,365); -- Resheph_Spinning_Top
-- INSERT INTO `mob_skill_lists` VALUES ('Neith',4112,2699); -- Resheph_Tarsal_Slam -- Needs unmarked on skills_custom.sql

INSERT INTO `mob_skill_lists` VALUES ('Neiths_Bobbin',4113,810); -- Sickle_Slash

INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,642); -- Flame_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,643); -- Poison_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,644); -- Wind_Breath
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,645); -- Body_Slam
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,646); -- Heavy_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,647); -- Chaos_Blade
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,648); -- Petro_Eyes
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,650); -- Thornsong
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,651); -- Lodesong
INSERT INTO `mob_skill_lists` VALUES ('Hraun_Dragon',4114,1792); -- Nullsong

INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,322); -- 1000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,1120); -- 10000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,1625); -- 2000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,1626); -- 4000_Needles
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,2761); -- Chupa_Blossom
INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Campeador',4115,3867); -- QM3_Needles

INSERT INTO `mob_skill_lists` VALUES ('Sabotender_Mercenario',4116,322); -- 1000_Needles

INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,354); -- Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,355); -- Earth_Pounder
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,721); -- Stasis
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,722); -- Venom_Storm
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,723); -- Earthbreaker
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,221); -- Hell_Scissors
INSERT INTO `mob_skill_lists` VALUES ('Malleator_Maurrok',4117,2759); -- Telsonic_Tempest

INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,354); -- Wild_Rage
INSERT INTO `mob_skill_lists` VALUES ('Peon_Pounder',4118,355); -- Earth_Pounder

INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1571); -- Gas_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1572); -- Venom_Shell
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1573); -- Palsynyxis
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1574); -- Painful_Whip
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,1575); -- Suctorial_Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Tangaroa',4119,2693); -- Virulent_Haze

INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,442); -- Bubble_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,443); -- Bubble_Curtain
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,445); -- Scissor_Guard
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,2512); -- Venom_Shower
INSERT INTO `mob_skill_lists` VALUES ('Koura',4120,2513); -- Mega_Scissors

INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,456); -- Tentacle
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,458); -- Ink_Jet
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,460); -- Cross_Attack
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,462); -- Maelstrom
INSERT INTO `mob_skill_lists` VALUES ('Pekapeka',4121,463); -- Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,450); -- Aqua_Ball
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,451); -- Splash_Breath
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,453); -- Water_Wall
INSERT INTO `mob_skill_lists` VALUES ('Moki',4122,641); -- Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,480); -- Petrifactive_Breath
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,482); -- Pounce
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,483); -- Charged_Whisker
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,652); -- Blaster
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,653); -- Chaotic_Eye
INSERT INTO `mob_skill_lists` VALUES ('Cath_Palug',4123,2760); -- Preternatural_Gleam

INSERT INTO `mob_skill_lists` VALUES ('Grwnan',4124,483); -- Charged_Whisker

INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,328); -- Drill_Branch
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,329); -- Pinecone_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,331); -- Leafstorm
INSERT INTO `mob_skill_lists` VALUES ('Modron',4125,332); -- Entangle

INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,783); -- Words_of_Bane
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,785); -- Light_of_Penance
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,786); -- Lateral_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,787); -- Vertical_Slash
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,788); -- Throat_Stab
INSERT INTO `mob_skill_lists` VALUES ('Modrons_Druid',4126,921); -- Everyones_Rancor

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Mage',4127,588); -- Death_Trap

INSERT INTO `mob_skill_lists` VALUES ('Mimic_Jester',4128,588); -- Death_Trap

INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,618); -- Unfinished previously 332
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,2580); -- Pandoras_Curse
INSERT INTO `mob_skill_lists` VALUES ('Mimic_King',4129,2581); -- Pandoras_Gift

INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2725); -- Rending_talons
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2726); -- Shrieking_gale
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2728); -- Wings_of_agony
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2729); -- Typhoean_rage
INSERT INTO `mob_skill_lists` VALUES ('Aello',4130,2758); -- Kaleidoscopic_Fury

INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,2193); -- Zephyr_Arrow
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,2194); -- Lethe_Arrows
INSERT INTO `mob_skill_lists` VALUES ('Aello_Handmaiden',4131,2200); -- Cyclonic_Torrent

INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,805); -- Head_Butt_Turtle
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,806); -- Tortoise_Stomp_Custom
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,807); -- Harden_Shell
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,808); -- Earth_Breath
INSERT INTO `mob_skill_lists` VALUES ('Xuan_Wu',4132,809); -- Aqua_Breath

INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,399); -- Scratch
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,400); -- Triple_Attack
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,401); -- Gliding_Spike
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,402); -- Feather_Barrier
INSERT INTO `mob_skill_lists` VALUES ('Zhu_Que',4133,403); -- Stormwind

INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,814); -- Deadly_Drive_Custom
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,815); -- Wind_Wall
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,816); -- Fang_Rush
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,817); -- Dread_Shriek
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,818); -- Tail_Crush
INSERT INTO `mob_skill_lists` VALUES ('Qing_Long',4134,821); -- Radiant_Breath

INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,270); -- Roar
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,271); -- Razor_Fang
INSERT INTO `mob_skill_lists` VALUES ('Bai_Hu',4135,273); -- Claw_Cyclone

INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,797); -- Deadly_Hold
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,798); -- Tail_Swing
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,799); -- Tail_Smash
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,800); -- Heat_Breath
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,802); -- Great_Sandstorm
INSERT INTO `mob_skill_lists` VALUES ('Qilin',4136,803); -- Great_Whirlwind

INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,478); -- Hell_Slash
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,479); -- Horror_Cloud
INSERT INTO `mob_skill_lists` VALUES ('Trna',4137,485); -- Blood_Saber

INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,478); -- Unfinished -- Previously 222
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,479); -- Unfinished -- Previously 223
INSERT INTO `mob_skill_lists` VALUES ('Bisa',4138,485); -- Unfinished -- Previously 229

INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2714); -- Uptala_Yaksha_stance
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2715); -- Uptala_Yaksha_damnation
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2716); -- Uptala_Yaksha_oblivion
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2717); -- Uptala_Yaksha_bliss
INSERT INTO `mob_skill_lists` VALUES ('Uptala',4139,2757); -- Sakra_storm

INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2113); -- Hellsnap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2114); -- Hellclap
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2115); -- Cackle
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2116); -- Necrobane
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2117); -- Necropurge
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2118); -- Bilgestorm
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2119); -- Thundris_shriek
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2812); -- Bilfrost_Squall
INSERT INTO `mob_skill_lists` VALUES ('Fjalar',4140,2813); -- Dunur_Strike

INSERT INTO `mob_skill_lists` VALUES ('Bloody_Skull',4141,2511); -- Corpse_Breath

INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,559); -- Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,560); -- Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,563); -- Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,1148); -- Condemnation
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,2372); -- Hellborn_Yawp
INSERT INTO `mob_skill_lists` VALUES ('Abununnu',4142,2821); -- Accurst_Spear

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,559); -- Soul_Drain
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,560); -- Hecatomb_Wave
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,563); -- Demonic_Howl
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor',4143,1148); -- Condemnation

INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,559); -- Unfinished - Previously 303
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,560); -- Unfinished - Previously 304
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,563); -- Unfinished - Previously 307
INSERT INTO `mob_skill_lists` VALUES ('Gloam_Servitor_Mage',4144,1148); -- Unfinished - Previously 892

INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2751); -- Slicing_Sickle
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2752); -- Raptorial_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2753); -- Phlegm_Expulsion
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2754); -- Macerating_Bile
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2755); -- Preying_Posture
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2756); -- Death_Prophet
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2809); -- Immolating_Claw
INSERT INTO `mob_skill_lists` VALUES ('Tsui-Goab',4145,2886); -- Exorender

INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,318); -- Somersault
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,659); -- Cursed_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,660); -- Venom
INSERT INTO `mob_skill_lists` VALUES ('Bloodswiller_Fly',4146,1624); -- Debilitating_Drone

INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1713); -- Yawn
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1714); -- Wing_Slap
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1715); -- Beak_Lunge
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,1716); -- Frigid_Shuffle
INSERT INTO `mob_skill_lists` VALUES ('Isarukitsck',4147,2819); -- Whiteout

INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,1713); -- Yawn
INSERT INTO `mob_skill_lists` VALUES ('Little_Wingman',4148,1715); -- Beak_Lunge

-- List 4149 in LegionDark is identical to list 451 in Darkstar..
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2868); -- Echolocation
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2869); -- Deep_Sea_Dirge
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2870); -- Caudal_Capacitor
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2871); -- Baleen_Gurge
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2872); -- Depht_Charge
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2873); -- Blowhole_Blast
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2874); -- Angry_Seas
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2875); -- Waterspout
-- INSERT INTO `mob_skill_lists` VALUES ('Bismarck',4149,2876); -- Thar_She_Blows

INSERT INTO `mob_skill_lists` VALUES ('Primordial_Pugil',4150,641); -- Recoil_Dive

INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1778); -- Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1779); -- Mangle
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1780); -- Leaping_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1781); -- Hex_Palm
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1782); -- Animating_Wail
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,1784); -- Unblest_Jambiya
INSERT INTO `mob_skill_lists` VALUES ('Dimgruzub',4151,2890); -- Genei_Ryodan

INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,1778); -- Spinal_Cleave
INSERT INTO `mob_skill_lists` VALUES ('Assassins_Apprentice',4152,1780); -- Leaping_Cleave

-- INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,436); -- Chainspell
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1958); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1959); -- Water_Bomb
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1960); -- Frog_Cheer
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,1962); -- Frog_Chorus
INSERT INTO `mob_skill_lists` VALUES ('Brekekex',4153,2889); -- Usurping_Scepter

INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,1958); -- Magic_Hammer
INSERT INTO `mob_skill_lists` VALUES ('Chorus_toad',4154,1959); -- Water_Bomb

INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1699); -- Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1700); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1701); -- Feather_Tickle
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,1702); -- Wisecrack
INSERT INTO `mob_skill_lists` VALUES ('Yalungur',4155,2887); -- Tropic_Tenor

INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1699); -- Pecking_Flurry
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1700); -- Snatch_Morsel
INSERT INTO `mob_skill_lists` VALUES ('Predatory_Colibri',4156,1701); -- Unfinished -- previously 1445

INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,1711); -- Frenetic_Rip
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,2003); -- Grating_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,2004); -- Stifling_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Vanasarvik',4157,2888); -- Dark_Recital

INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1709); -- Abrasive_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1710); -- Deafening_Tantara
INSERT INTO `mob_skill_lists` VALUES ('Elder_Imp',4158,1711); -- Frenetic_Rip

INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2880); -- Night_stalker
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2881); -- Atropine_spore
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2882); -- Frond_fatale
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2883); -- Full_bloom
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2884); -- Deracinator
INSERT INTO `mob_skill_lists` VALUES ('Morta',4159,2885); -- Beautiful_death

-- INSERT INTO `mob_skill_lists` VALUES ('Pil',4160,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Rukh',4161,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Asb',4162,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Sarbaz',4163,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Wazir',4164,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Shah',4165,PLACEHOLDER); -- Unfinished
-- INSERT INTO `mob_skill_lists` VALUES ('Provenance_Watcher',4166,PLACEHOLDER); -- Unfinished

-- ---------------------------------------------------------------------------
-- Begin Melee subs
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2616); -- Iron_Giant_Melee_Vertical
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2617); -- Iron_Giant_Melee_Stomp
INSERT INTO `mob_skill_lists` VALUES ('Iron_Giant_Melee',4167,2618); -- Iron_Giant_Melee_Lateral

INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2781); -- Gallu_Melee_Triple
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2782); -- Gallu_Melee_Frontal
INSERT INTO `mob_skill_lists` VALUES ('Gallu_Melee',4168,2783); -- Gallu_Melee_Radial

INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2794); -- Botulus_Melee_Front
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2795); -- Botulus_Melee_Left
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2796); -- Botulus_Melee_Right
INSERT INTO `mob_skill_lists` VALUES ('Botulus_Melee',4169,2797); -- Botulus_Melee_Back

INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee',4170,2722); -- Harpeia_Melee_Stomp (not used by retail Celaeno)
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee',4170,2723); -- Harpeia_Melee_Slash
INSERT INTO `mob_skill_lists` VALUES ('Harpeia_Melee',4170,2724); -- Harpeia_Melee_Fly

INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4171,2748); -- Mantid_Melee_Double
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4171,2749); -- Mantid_Melee_Slice
INSERT INTO `mob_skill_lists` VALUES ('Mantid_Melee',4171,2750); -- Mantid_Melee_Jump

INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4172,3017); -- Gabbrath_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4172,3018); -- Gabbrath_Melee_Charge
INSERT INTO `mob_skill_lists` VALUES ('Gabbrath_Melee',4172,3019); -- Gabbrath_Melee_Spin

INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4173,3070); -- Waktza_Melee_Gust
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4173,3071); -- Waktza_Melee_Spin
INSERT INTO `mob_skill_lists` VALUES ('Waktza_Melee',4173,3072); -- Waktza_Melee_Beak

INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4174,2999); -- Bztavian_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4174,3000); -- Bztavian_Melee_Slash
INSERT INTO `mob_skill_lists` VALUES ('Bztavian_Melee',4174,3001); -- Bztavian_Melee_Stinger

INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4175,3008); -- Rockfin_Melee_Bite
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4175,3009); -- Rockfin_Melee_Ram
INSERT INTO `mob_skill_lists` VALUES ('Rockfin_Melee',4175,3010); -- Rockfin_Melee_Spin

INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4176,3134); -- Cehuetzi_Melee_Left
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4176,3135); -- Cehuetzi_Melee_Right
INSERT INTO `mob_skill_lists` VALUES ('Cehuetzi_Melee',4176,3136); -- Cehuetzi_Melee_Bite

INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4177,3165); -- Darrcuiln_Melee_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4177,3166); -- Darrcuiln_Melee_Claw
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln_Melee',4177,3167); -- Darrcuiln_Melee_Howl


-- INSERT INTO `mob_skill_lists` VALUES ('Belladonna_Melee',LIST_ID_HERE,2877); -- Morta Melee
-- INSERT INTO `mob_skill_lists` VALUES ('Belladonna_Melee',LIST_ID_HERE,2878);
-- INSERT INTO `mob_skill_lists` VALUES ('Belladonna_Melee',LIST_ID_HERE,2879);

-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2864); -- Bismark Melee
-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2865);
-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2866);
-- INSERT INTO `mob_skill_lists` VALUES ('Pteraketos_Melee',LIST_ID_HERE,2867);


-- INSERT INTO `mob_skill_lists` VALUES ('Provenance_Watcher_Melee',LIST_ID_HERE,PLACEHOLDER); -- Provenance Watcher Melee

-- end Melee Subs
-- ---------------------------------------------------------------------------

INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3020); -- Blistering_Roar
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3021); -- Searing_Serration
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3022); -- Volcanic_Stasis
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3023); -- Tyrannical_Blow
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3024); -- Batholit-hic_Shell
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3025); -- Pyroclastic_Surge
INSERT INTO `mob_skill_lists` VALUES ('Achuka',4200,3026); -- Incinerating_Lahar


INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3073); -- Crashing_Thunder
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3074); -- Reverberating_Cry
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3075); -- Brownout
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3076); -- Reverse_Current
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3077); -- Sparkstorm
INSERT INTO `mob_skill_lists` VALUES ('Hurkan',4201,3078); -- Static_Prison

INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3168); -- Aurous_Charge
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3169); -- Howling_Gust
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3170); -- Righteous_Rasp
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3171); -- Starward_Yowl
INSERT INTO `mob_skill_lists` VALUES ('Darrcuiln',4202,3172); -- Stalking_Prey

INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3002); -- Mandibular_Lashing
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3003); -- Vespine_Hurricane
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3004); -- Stinger_volley
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3005); -- Droning_Whirlwind
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3006); -- Incisive_Denouement
INSERT INTO `mob_skill_lists` VALUES ('Colkhab',4203,3007); -- Incisive_Apotheosis

INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2957); -- mpenetrable_carapace
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2958); -- ending_Deluge
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2959); -- undering_Snip
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2960); -- iscid_Spindrift
INSERT INTO `mob_skill_lists` VALUES ('Ravenous_Cracklaw',4204,2961); -- iptide_Eupnea

INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3011); -- Protolithic_Puncture
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3012); -- Aquatic_Lance
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3013); -- Pelagic_Cleaver
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3015); -- Tidal_Guillotine
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3016); -- Marine_Mayhem
INSERT INTO `mob_skill_lists` VALUES ('Tchakka',4205,3014); -- Carcharian_verve

INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3137); -- Polar_Roar
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3138); -- Brain_Freeze
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3139); -- Biting_Abrogation
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3140); -- Permafrost_Requiem
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3141); -- Glacial_Tomb
INSERT INTO `mob_skill_lists` VALUES ('Kumhau',4206,3142); -- Glassy_Nova

INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2514); -- Cytokinesis
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2550); -- Dissolve
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2551); -- Mucus_Spread
INSERT INTO `mob_skill_lists` VALUES ('Fistule',4207,2552); -- Epoxy_Spread

INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2566); -- Diabolic_Claw
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2567); -- Stygian_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2568); -- Deathly_Diminuendo
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2569); -- Hellish_Crescendo
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2570); -- Afflicting_Gaze
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2571); -- Stygian_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2572); -- Malign_Invocation
INSERT INTO `mob_skill_lists` VALUES ('Iratham',4208,2573); -- Shadow_wreck

INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2567); -- Stygian_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2568); -- Deathly_diminuendo
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2569); -- Hellish_crescendo
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2571); -- Stygian_sphere
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2572); -- Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2634); -- Interference
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2635); -- Dark_arrivisme
INSERT INTO `mob_skill_lists` VALUES ('Yaanei',4209,2637); -- Besiegers_bane

INSERT INTO `mob_skill_lists` VALUES ('Kutharei',4210,2571); -- Stygian_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Kutharei',4210,2572); -- Malign_Invocation
INSERT INTO `mob_skill_lists` VALUES ('Kutharei',4210,2636); -- Banneret_Charge
INSERT INTO `mob_skill_lists` VALUES ('Kutharei',4210,2566); -- Diabolic_Claw
INSERT INTO `mob_skill_lists` VALUES ('Kutharei',4210,2570); -- Afflicting_Gaze
INSERT INTO `mob_skill_lists` VALUES ('Kutharei',4210,2634); -- Interference

INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2567); -- Stygian_cyclone
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2569); -- Hellish_crescendo
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2571); -- Stygian_sphere
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2572); -- Malign_invocation
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2634); -- Interference
INSERT INTO `mob_skill_lists` VALUES ('Sippoy',4211,2635); -- Dark_arrivisme

INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2700); -- Enthrall
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2571); -- Stygian_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2570); -- Afflicting_Gaze 
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2310); -- Diabolic_Claw 
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2566); -- Malign_Invocation
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2634); -- Interference
INSERT INTO `mob_skill_lists` VALUES ('Rani',4212,2567); -- Stygian_Cyclone 

INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2567); -- Stygian_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2571); -- Stygian_Sphere
INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2566); -- Malign_Invocation
INSERT INTO `mob_skill_lists` VALUES ('Raja',4213,2692); -- Royal_Decree

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Cleaver',4214,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Cleaver',4214,2620); -- Seismic_Impact

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Executioner',4215,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Executioner',4215,2622); -- Arm_Cannon

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Observer',4216,2626); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Observer',4216,2627); -- Area_Bombardment

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2623); -- Ballistic_Kick
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2624); -- Scapula_Beam
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2625); -- Eradicator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2626); -- Auger_Smash
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Pulverizer',4217,2627); -- Area_Bombardment

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Severer',4218,2623); -- Ballistic_Kick
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Severer',4218,2624); -- Scapula_Beam

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2623); -- Ballistic_Kick
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Smiter',4219,2624); -- Scapula_Beam

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Sunderer',4220,2624); -- Scapula_Beam

INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2619); -- Turbine_Cyclone
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2620); -- Seismic_Impact
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2621); -- Incinerator
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2622); -- Arm_Cannon
INSERT INTO `mob_skill_lists` VALUES ('Ironclad_Triturator',4221,2624); -- Scapula_Beam

-- Begin Shinryu_Temp!
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2665); -- Cataclysmic_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2667); -- Mighty_Guard
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2668); -- Atomic_ray
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2670); -- Protostar
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2664); -- Cosmic_Breath
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2666); -- Gyre_Charge
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2669); -- Darkmatter
INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Temp',4222,2671); -- Supernova
-- End Shinryu_Temp!
-- Shinryu needs more work to animate everything properly.
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2650); -- Shinryu0_Right
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2651); -- Shinryu0_Left
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2652); -- Shinryu0_Right_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2653); -- Shinryu0_Left_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2654); -- Shinryu_Attack_Tail_1
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2655); -- Shinryu_Attack_Tail_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2656); -- Shinryu0_Tail_Stun
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out_Melee',4222,2664); -- Cosmic_Breath
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2665); -- Cataclysmic_Vortex
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2667); -- Mighty_Guard
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2668); -- Atomic_ray
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_Out',4223,2670); -- Protostar
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2657); -- Shinryu1_Right
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2658); -- Shinryu1_Left
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2659); -- Shinryu1_Right_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2660); -- Shinryu1_Left_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2661); -- Shinryu_Attack_Tail_1
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2662); -- Shinryu_Attack_Tail_2
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In_Melee',4224,2663); -- Shinryu1_Tail_Stun
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2664); -- Cosmic_Breath
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2665); -- Cataclysmic_Vortex
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2666); -- Gyre_Charge
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2669); -- Darkmatter
-- INSERT INTO `mob_skill_lists` VALUES ('Shinryu_Wings_In',4225,2671); -- 

-- INSERT INTO `mob_skill_lists` VALUES ('Stroper Chyme',LIST,SKILL); -- Skill Name
-- 175,1587,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
-- 176,1587,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
-- 177,1587,177,'Digest',0,7.0,2000,1000,4,0,0,0);
-- 2258,1587,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
-- 2296,1587,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
-- 2295,1587,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Megalobugard',LIST,SKILL); -- Skill Name
-- 127,1556,820,'Tusk',0,7.0,2000,2000,4,0,0,2);
-- 130,1556,823,'Awful_Eye',4,10.0,2000,1500,4,0,0,0);
-- 131,1556,824,'Heavy_Bellow',4,10.0,2000,1500,4,0,0,0);
-- 2387,1556,820,'Tyrant_Tusk',4,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Intulo',LIST,SKILL); -- Skill Name
-- 259,1559,814,'Toxic_Spit',0,9.5,2000,1500,4,0,0,0);
-- 260,1559,815,'Geist_Wall',1,10.0,2000,1500,4,0,0,0);
-- 261,1559,816,'Numbing_Noise',4,10.0,2000,1500,4,0,0,0);
-- 262,1559,817,'Nimble_Snap',0,7.0,2000,1500,4,0,0,0);
-- 263,1559,818,'Cyclotail',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Keeper_of_Haildom',LIST,SKILL); -- Skill Name
-- 325,1560,325,'Blow',0,7.0,2000,1500,4,0,0,0);
-- 327,1560,327,'Beatdown',0,7.0,2000,1500,4,0,0,0);
-- 328,1560,328,'Uppercut',0,7.0,2000,1500,4,0,0,2);
-- 330,1560,330,'Blank_Gaze',0,7.0,2000,2000,4,0,0,0);
-- 331,1560,331,'Antiphase',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Dune_Widow',LIST,SKILL); -- Skill Name
-- 554,1558,482,'Sickle_Slash',0,7.0,2000,1500,4,0,0,0);
-- 555,1558,483,'Acid_Spray',4,10.0,2000,1500,4,0,0,0);
-- 556,1558,484,'Spider_Web',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Seww_the_Squidlimbed',LIST,SKILL); -- Skill Name
-- 515,1561,443,'Hydro_Ball',4,7.0,2000,1500,4,0,0,0);
-- 521,1561,449,'Hydro_Shot',0,10.0,2000,3000,4,0,0,1);
-- 524,1561,452,'Spinning_Fin',1,10.0,2000,1500,4,0,0,0);
-- 518,1561,446,'Bubble_Armor',0,7.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Mischievous_Micholas',LIST,SKILL); -- Skill Name
-- 38,1563,38,'Eye_Scratch',0,7.0,2000,1500,4,0,0,0);
-- 32,1563,32,'Vicious_Claw',0,7.0,2000,1500,4,0,0,0);
-- 34,1563,34,'Spinning_Claw',1,15.0,2000,1500,4,0,0,0);
-- 39,1563,39,'Magic_Fruit',0,7.0,2000,1500,1,0,0,0);
-- 35,1563,35,'Claw_Storm',0,7.0,2000,1500,4,0,0,0); -- 7hp/tick
-- 33,1563,33,'Stone_Throw',0,25.0,2000,1500,4,0,0,0);
-- 36,1563,36,'Blank_Gaze_Dispel',0,16.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Ash_Dragon',LIST,SKILL); -- Skill Name
-- 388,1557,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
-- 389,1557,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
-- 390,1557,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
-- 391,1557,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
-- 392,1557,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
-- 386,1557,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
-- 387,1557,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
-- 394,1557,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);
-- 395,1557,395,'Lodesong',1,15.0,2000,1500,4,0,0,0);
-- 1536,1557,395,'Nullsong',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Juggler_Hecatomb',LIST,SKILL); -- Skill Name
-- 257,1562,257,'Smite_of_Rage',0,7.0,2000,1500,4,0,0,0);
-- 258,1562,258,'Whirl_of_Rage',1,10.0,2000,1500,4,0,0,0);
-- 1303,1562,258,'Flurry_of_Rage',0,7.0,2000,1500,4,0,0,0);
-- 1302,1562,257,'Smite_of_Fury',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Gulool_Ja_Ja',LIST,SKILL); -- Skill Name
-- 1541,1555,1147,'Rushing_Slash',0,7.0,2000,1500,4,0,0,0);
-- 1542,1555,1147,'Decussate',1,16.0,2000,1500,4,0,0,0);
-- 1543,1555,1156,'Tyranic_Blare',1,10.0,2000,1500,4,0,0,0);
-- 1544,1555,1156,'Miasma',1,16.0,2000,1500,4,0,0,0);
-- 1545,1555,1147,'Vorpal_Wheel',0,7.0,2000,1500,4,0,0,0);
-- 1482,1555,1156,'Groundburst',0,7.0,2000,1500,4,0,0,0);
-- 1475,1555,1149,'Forceful_Blow',0,7.0,2000,1000,4,0,0,0);
-- 1476,1555,1150,'Somersault_Kick',0,7.0,2000,1000,4,0,0,4);
-- 1477,1555,1151,'Firespit',0,25.0,2000,1000,4,0,0,0);
-- 1478,1555,1152,'Warm-Up',0,7.0,2000,1000,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Tzee_Xicu_the_Manifest',LIST,SKILL); -- Skill Name
-- 361,1564,361,'Feather_Storm',0,7.0,2000,1500,4,0,0,0);
-- 377,1564,354,'Howl',1,20.0,2000,1500,2,0,0,0);
-- 362,1564,362,'Double_Kick',0,7.0,2000,1500,4,0,0,1);
-- 363,1564,363,'Parry',0,7.0,2000,1500,1,0,0,0);
-- 364,1564,364,'Sweep',1,10.0,2000,1500,4,0,0,0);
-- 2157,1564,1565,'Feather_Maelstrom',0,15.0,2000,1500,4,0,0,0);
-- 2014,1564,362,'Shirahadori',0,15.0,2000,1500,4,0,0,0);
-- 1680,1564,1565,'Shibaraku',1,10.0,2000,1500,4,0,0,0);
-- 2013,1564,1565,'Kamaitachi',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Overlord_Bakgodek',LIST,SKILL); -- Skill Name
-- 377,1565,354,'Howl',1,20.0,2000,1500,1,0,0,0);
-- 2155,1565,353,'Phantasmal_Dance',1,15.0,2000,2000,4,0,0,0);
-- 2007,1565,1626,'Tornado_Edge',4,10.0,2000,2000,4,0,0,0);
-- 2008,1565,350,'Shoulder_Charge',4,10.0,2000,2000,4,0,0,0);
-- 353,1565,353,'Battle_Dance',1,12.0,2000,1500,4,0,0,0);
-- 352,1565,352,'Arm_Block',0,7.0,2000,1500,1,0,0,0);
-- 351,1565,351,'Slam_Dunk',0,7.0,2000,1500,4,0,0,0);
-- 349,1565,349,'Aerial_Wheel',0,12.0,2000,1500,4,0,0,0);
-- 350,1565,350,'Shoulder_Attack',0,7.0,2000,1500,4,0,0,1);
-- 810,1565,740,'Fanatic_Dance',1,10.0,2000,2000,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Za_Dha_Adamantking',LIST,SKILL); -- Skill Name
-- 355,1585,355,'Ore_Toss',0,10.0,2000,2000,4,0,0,0);
-- 377,1585,354,'Howl',1,20.0,2000,1500,1,0,0,0);
-- 356,1585,356,'Head_Butt',0,7.0,2000,2000,4,0,0,1);
-- 357,1585,357,'Shell_Bash',0,7.0,2000,1000,4,0,0,0);
-- 358,1585,358,'Shell_Guard',0,7.0,2000,3000,1,0,0,0);
-- 2156,1585,742,'Thunderous_Yowl',1,15.0,2000,3000,4,0,0,0);
-- 1977,1585,1608,'Diamond_Shell',0,7.0,2000,3000,1,0,0,0);
-- 1978,1585,1609,'Ore_Lob',2,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Lord_of_Onzozo',LIST,SKILL); -- Skill Name
-- 202,1566,202,'Ink_Jet',4,12.0,2000,1500,4,0,0,0);
-- 203,1566,203,'Hard_Membrane',0,7.0,2000,1500,1,0,0,0);
-- 204,1566,204,'Cross_Attack',0,7.0,2000,1500,4,0,0,0);
-- 205,1566,205,'Regeneration',0,7.0,2000,1500,1,0,0,0);
-- 206,1566,206,'Maelstrom',1,15.0,2000,1500,4,0,0,0);
-- 207,1566,207,'Whirlwind',1,15.0,2000,1500,4,0,0,0);
-- 200,1566,200,'Tentacle',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Guivre',LIST,SKILL); -- Skill Name
-- 566,1567,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
-- 563,1567,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
-- 564,1567,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
-- 1966,1567,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
-- 560,1567,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
-- 558,1567,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
-- 562,1567,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Biast',LIST,SKILL); -- Skill Name
-- 388,1568,388,'Wind_Breath',4,10.0,2000,1500,4,0,0,0);
-- 389,1568,389,'Body_Slam',1,10.0,2000,1500,4,0,0,0);
-- 390,1568,390,'Heavy_Stomp',1,10.0,2000,1500,4,0,0,0);
-- 391,1568,389,'Chaos_Blade_Custom',0,7.0,2000,1500,4,0,0,0);
-- 392,1568,390,'Petro_Eyes',0,7.0,2000,1500,4,0,0,0);
-- 386,1568,386,'Flame_Breath',4,12.0,2000,1500,4,0,0,0);
-- 387,1568,387,'Poison_Breath',4,12.0,2000,1500,4,0,0,0);
-- 394,1568,394,'Thornsong',0,15.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Duke_Haborym',LIST,SKILL); -- Skill Name
-- 303,1569,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
-- 304,1569,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
-- 307,1569,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
-- 892,1569,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
-- 893,1569,313,'Quadrastrike_Custom',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Ophion',LIST,SKILL); -- Skill Name
-- 406,1570,406,'Lightning_Roar',4,9.0,2000,1500,4,0,0,0);
-- 407,1570,407,'Ice_Roar',4,9.0,2000,1500,4,0,0,0);
-- 408,1570,408,'Impact_Roar',4,9.0,2000,1500,4,0,0,0);
-- 409,1570,409,'Grand_Slam',1,15.0,2000,1500,4,0,0,0);
-- 410,1570,410,'Power_Attack',0,7.0,2000,1500,4,0,0,0);
-- 411,1570,411,'Power_Attack_Weapon',0,7.0,2000,1500,4,0,0,0);
-- 2111,1570,411,'Moribund_Hack',1,15.0,2000,1500,4,0,0,0);
-- 2322,1570,410,'Colossal_Slam',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Sozu_Rogberry',LIST,SKILL); -- Skill Name
-- 527,1571,455,'Words_of_Bane',0,7.0,2000,1500,4,0,0,0);
-- 528,1571,456,'Sigh',0,7.0,2000,1500,1,0,0,0);
-- 529,1571,457,'Light_of_Penance',0,7.0,2000,1500,4,0,0,0);
-- 530,1571,458,'Lateral_Slash',0,7.0,2000,1500,4,0,0,0);
-- 531,1571,459,'Vertical_Slash',0,7.0,2000,1500,4,0,0,0);
-- 532,1571,460,'Throat_Stab',0,3.4,2000,3500,4,0,0,0);
-- 664,1571,503,'Everyones_Grudge',0,7.0,2000,1500,4,0,0,0);
-- 665,1571,504,'Everyones_Rancor',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Tyrannic_Tunnok',LIST,SKILL); -- Skill Name
-- 463,1572,94,'Critical_Bite',0,7.0,2000,1500,4,0,0,0);
-- 465,1572,97,'Stasis',0,9.0,2000,1500,4,0,0,0);
-- 466,1572,98,'Venom_Storm',1,40.0,2000,1500,4,0,0,0);
-- 467,1572,99,'Earthbreaker_Custom',1,40.0,2000,1500,4,0,0,0);
-- 464,1572,95,'Venom_Sting',0,10.0,2000,1500,4,0,0,0);
-- 461,1572,92,'Venom_Breath',4,20.0,2000,1500,4,0,0,0);
-- 94,1572,94,'Mandible_Bite',0,7.0,2000,1500,4,0,0,2);
-- 97,1572,97,'Death_Scissors',0,7.0,2000,1500,4,0,0,0);
-- 98,1572,98,'Wild_Rage',1,15.0,2000,1500,4,0,0,0);
-- 99,1572,99,'Earth_Pounder',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Bonnacon',LIST,SKILL); -- Skill Name
-- 237,1573,846,'Rampant_Gnaw',0,7.0,2000,1500,4,0,0,0);
-- 238,1573,847,'Big_Horn_Custom',0,7.0,2000,1500,4,0,0,1);
-- 239,1573,848,'Snort',4,12.5,2000,1500,4,0,0,3);
-- 240,1573,849,'Rabid_Dance',0,7.0,2000,1500,1,0,0,0);
-- 241,1573,850,'Lowing',1,15.0,2000,2500,4,0,0,0);
-- 1108,1573,848,'Mighty_Snort',4,12.5,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Namtar',LIST,SKILL); -- Skill Name
-- 222,1574,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
-- 223,1574,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
-- 228,1574,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
-- 229,1574,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Baobhan_Sith',LIST,SKILL); -- Skill Name
-- 220,1575,220,'Curse',1,15.0,2000,1500,4,0,0,0);
-- 218,1575,218,'Fear_Touch',0,7.0,3000,1500,4,0,0,0);
-- 219,1575,219,'Terror_Touch',0,7.0,3000,1500,4,0,0,0);
-- 217,1575,217,'Ectosmash',0,7.0,2000,1500,4,0,0,0);
-- 221,1575,221,'Dark_Sphere',0,7.0,2000,1500,4,0,0,0);
-- 216,1575,216,'Grave_Reel',1,15.0,2000,1500,4,0,0,0);
-- 1538,1575,217,'Perdition',0,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Taxim',LIST,SKILL); -- Skill Name
-- 222,1576,222,'Hell_Slash',0,7.0,2000,1500,4,0,0,0);
-- 223,1576,223,'Horror_Cloud',0,7.0,2000,1500,4,0,0,0);
-- 228,1576,228,'Black_Cloud',1,15.0,2000,1500,4,0,0,0);
-- 229,1576,229,'Blood_Saber',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Vouivre',LIST,SKILL); -- Skill Name
-- 566,1578,494,'Chaos_Breath',4,15.0,2000,1500,4,0,0,0);
-- 563,1578,491,'Blizzard_Breath',4,15.0,2000,1500,4,0,0,0);
-- 564,1578,492,'Thunder_Breath',4,15.0,2000,1500,4,0,0,0);
-- 1966,1578,491,'Hurricane_Breath',4,15.0,2000,1500,4,0,0,0);
-- 560,1578,488,'Fang_Rush_Custom',0,7.0,2000,1500,4,0,0,0);
-- 558,1578,486,'Deadly_Drive_Custom',0,7.0,2000,1500,4,0,0,0);
-- 562,1578,490,'Tail_Crush',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Unut',LIST,SKILL); -- Skill Name
-- 1,1579,1,'Foot_Kick',0,7.0,2000,1500,4,0,0,0);
-- 2,1579,2,'Dust_Cloud',4,10.0,2000,1500,4,0,0,0);
-- 3,1579,3,'Whirl_Claws',1,5.0,2000,1500,4,0,0,0);
-- 67,1579,37,'Wild_Carrot',0,20.0,2000,1500,1,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Viscount_Morax',LIST,SKILL); -- Skill Name
-- 303,1580,303,'Soul_Drain',0,7.0,2000,1500,4,0,0,0);
-- 304,1580,304,'Hecatomb_Wave',4,10.0,2000,2000,4,0,0,0);
-- 307,1580,307,'Demonic_Howl',1,10.0,2000,1500,4,0,0,0);
-- 892,1580,311,'Condemnation',4,10.0,2000,1500,4,0,0,0);
-- 2116,1580,307,'Hellborn_Yawp',4,10.0,2000,1500,4,0,0,0);
-- 893,1580,313,'Quadrastrike_Custom',0,7.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Friar_Rush',LIST,SKILL); -- Skill Name
-- 254,1581,254,'Berserk',0,7.0,2000,1500,1,0,0,0);
-- 338,1581,880,'Vulcanian_Impact',0,7.0,2000,1500,4,0,0,0);
-- 340,1581,882,'Hellstorm',1,15.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Bluberry_Bulge',LIST,SKILL); -- Skill Name
-- 175,1582,175,'Fluid_Spread',1,10.0,2000,1500,4,0,0,0);
-- 176,1582,176,'Fluid_Toss',0,15.0,2000,1000,4,0,0,0);
-- 177,1582,177,'Digest',0,7.0,2000,1000,4,0,0,0);
-- 2258,1582,177,'Cytokinesis',0,7.0,2000,1500,4,0,0,0);
-- 2296,1582,175,'Epoxy_Spread',1,10.0,2000,1500,4,0,0,0);
-- 2295,1582,175,'Mucus_Spread',1,10.0,2000,1500,4,0,0,0);

-- INSERT INTO `mob_skill_lists` VALUES ('Triarius_XXV',LIST,SKILL); -- Skill Name
-- 535,1583,463,'Magnetite_Cloud',4,10.0,2000,1500,4,0,0,0);
-- 536,1583,464,'Sandstorm',1,10.0,2000,1500,4,0,0,0);
-- 540,1583,468,'Jamming_Wave',1,16.0,2000,1500,4,0,0,0);
-- 537,1583,465,'Sand_Veil',0,7.0,2000,1500,1,0,0,0);
-- 538,1583,466,'Sand_Shield',0,7.0,2000,1500,1,0,0,0);
-- 534,1583,462,'Shoulder_Slam',0,7.0,2000,1500,4,0,0,1);
-- 539,1583,467,'Sand_Trap',1,12.0,2000,1500,4,0,0,0);
-- 533,1583,461,'Spikeball',0,13.5,2000,1500,4,0,0,0);



-- New lines go BEFORE the crab till you run out of IDs.
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,300);   -- Head Butt (Stun, Grav, Slow, knockback)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,442);  -- Bubble Shower ( )
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,443);  -- Bubble Curtain (Shell -50% magic damage taken)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,445);  -- Scissor Guard (+100% defense boost)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,448);  -- Metallic Body (25HP Stoneskin)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,454);  -- Water Shield (Eva boost)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,718);  -- Jump (W/Spirit Surge: Reduce targets DEF)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,733);  -- Jump (W/Spirit Surge: Reduce targets TP)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,769);  -- Flying Punch (Heavy DMG+Knockback, only use during Spirit Surge or Elemental Sforzo)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,774);  -- Bubble Armor (Shell -50% magic damage taken)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1024); -- Warp Out (aka SuperDuperJump - Only used during depop)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1064); -- Jump (W/Spirit Surge: Hate Reset)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1437); -- Jump (AoE dmg (only triggered with Draw In)
-- INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1893); -- Spirit Surge (It's a bird! It's a plane! No its suuuuper crab!)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,1959); -- Water Bomb (AoE Silence)
INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,2513); -- Mega Scissors (Bigger than Big Scissors o.o;)
-- INSERT INTO `mob_skill_lists` VALUES ('The Jumping Crab',9665,3265); -- Elemental Sforzo (RUN 2hr (Magic Immunity)
/* stuff below is temp disabled
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,241); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,255); -- Dimensional Death
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,456); -- Tentacle
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,332); -- Death Trap
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,943); -- Gate_of_Tartarus
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,1424); -- Predatory Glare
INSERT INTO `mob_skill_lists` VALUES ('SlenderMan',9666,1002); -- Summon Proxies
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,243); -- Aegis_Schism
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,251); -- Aegis_Schism
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,823); -- Fire_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,824); -- Frost_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,825); -- Wind_Blade2
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,826); -- Earth_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,827); -- Lightning_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,828); -- Water_Blade
INSERT INTO `mob_skill_lists` VALUES ('Mars',9760,829); -- Great_Wheel
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,830); -- Light_Blade (Grants/Restores EnLight)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,985); -- Stellar_burst
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1386); -- Medusa_Javelin
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1379); -- Auroral_Wind (Grants/Restores Light spikes)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1508); -- Luminous_Lance (Grants/Restores EnLight)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2141); -- Radiant_sacrament (Grants/Restores Light spikes)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2142); -- Mega_holy
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2144); -- Divine_spear (Grants/Restores EnLight)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2147); -- Divine_Jugement
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2334); -- Wrath_of_zeus (Grants/Restores Shock spikes and EnThunder)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2335); -- Lightning_spear
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2370); -- Grace_of_Hera (Grants/Restores Light spikes)
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2690); -- Dark_Moon
INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2691); -- Dark_Sun
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,2358); -- Tabula_Rasa
-- INSERT INTO `mob_skill_lists` VALUES ('Minerva',9777,1487); -- Ambrosia
INSERT INTO `mob_skill_lists` VALUES ('Minerva_Melee',9778,2105); -- Melee_Special
 */
-- Thinking of placing a new entry right here? DO NOT. Scroll your butt up past The Jumping Crab!