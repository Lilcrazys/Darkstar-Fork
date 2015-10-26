-- Variable TextID   Description text

-- General Texts
   ITEM_CANNOT_BE_OBTAINED =  6379; --Come back after sorting your inventory.
FULL_INVENTORY_AFTER_TRADE =  6383; --Try trading again after sorting your inventory.
             ITEM_OBTAINED =  6384; --Obtained: <<<Unknown Parameter (Type: 80) 1>>><<<Possible Special Code: 01>>><<<Possible Special Code: 05>>>
              GIL_OBTAINED =  6385; --Obtained <<<Numeric Parameter 0>>> gil.
          KEYITEM_OBTAINED =  6387; --Obtained key item: <<<Unknown Parameter (Type: 80) 1>>>
       NOT_HAVE_ENOUGH_GIL =  6389; --You do not have enough gil.
            ITEMS_OBTAINED =  6393; --You obtain ?Numeric Parameter 1? ?Possible Special Code: 01??Speaker Name?)??BAD CHAR: 80??BAD CHAR: 80??BAD CHAR: 8280??BAD CHAR: 80??BAD CHAR: 80?!?Prompt?
             HOMEPOINT_SET =  6473; --Home point set!
      GOLDSMITHING_SUPPORT =  7058; --Your ?Multiple Choice (Parameter 1)?[fishing/woodworking/smithing/goldsmithing/clothcraft/leatherworking/bonecraft/alchemy/cooking] skills went up ...
  GUILD_TERMINATE_CONTRACT =  7072; --You have terminated your trading contract with the ?Multiple Choice (Parameter 1)?[Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild and formed a new one with the ?Multiple Choice (Parameter 0)?[Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.?Prompt?
        GUILD_NEW_CONTRACT =  7080; --You have formed a new trading contract with the ?Multiple Choice (Parameter 0)?[Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.?Prompt?
       NO_MORE_GP_ELIGIBLE =  7087; --You are not eligible to receive guild points at this time.
               GP_OBTAINED =  7076; --Obtained <<<Numeric Parameter 0>>> guild points.
        NOT_HAVE_ENOUGH_GP =  7093; --You do not have enough guild points.
    FISHING_MESSAGE_OFFSET =  7187; --You can't fish here.

-- Conquest System
CONQUEST =  7754; --You've earned conquest points!

-- Mission Dialogs
    YOU_ACCEPT_THE_MISSION =  6494; --You have accepted the mission.
   ORIGINAL_MISSION_OFFSET =  6499; -- You can consult the ission section of the main menu to review your objectives. Speed and efficiency are your priorities. Dismissed. 
   EXTENDED_MISSION_OFFSET =  8116; --Go to Ore Street and talk to Medicine Eagle. He says he was there when the commotion started.

-- Other Dialogs
ITEM_DELIVERY_DIALOG =  7637; --Need something sent to a friend's house? Sending items to your own room? You've come to the right place

-- Harvest Festival
      TRICK_OR_TREAT =  8239; --Trick or treat...
     THANK_YOU_TREAT =  8240; --And now for your treat...
      HERE_TAKE_THIS =  8241; --Here, take this...
    IF_YOU_WEAR_THIS =  8242; --If you put this on and walk around, something...unexpected might happen...
           THANK_YOU =  8240; --Thank you...

-- Shop Texts
    SOMNPAEMN_CLOSED_DIALOG =  7548; --I'm trying to start a business selling goods from Sarutabaruta,
       YAFAFA_CLOSED_DIALOG =  7549; --I'm trying to start a business selling goods from Kolshushu,
     OGGODETT_CLOSED_DIALOG =  7550; --I'm trying to start a business selling goods from Aragoneu,

         TEERTH_SHOP_DIALOG =  7651; --Welcome to the Goldsmiths' Guild shop. What can I do for you?
         VISALA_SHOP_DIALOG =  7652; --Welcome to the Goldsmiths' Guild shop. How may I help you?
        ZHIKKOM_SHOP_DIALOG =  7653; --Welcome to the only weaponry store in Bastok, the Dragon's Claws!
         CIQALA_SHOP_DIALOG =  7654; --A weapon is the most precious thing to an adventurer! Well, after his life, of course.
      PERITRAGE_SHOP_DIALOG =  7655; --Hey! I've got just the thing for you!
      BRUNHILDE_SHOP_DIALOG =  7656; --Welcome to my store! You want armor, you want shields? I've got them all!
CHARGINGCHOKOBO_SHOP_DIALOG =  7657; --Hello. What piece of armor are you missing?
      BALTHILDA_SHOP_DIALOG =  7658; --Feeling defenseless of late? Brunhilde's Armory has got you covered!
          MJOLL_SHOP_DIALOG =  7659; --Welcome. Have a look and compare! You'll never find better wares anywhere.
          OLWYN_SHOP_DIALOG =  7660; --Welcome to Mjoll's Goods! What can I do for you?
          ZAIRA_SHOP_DIALOG =  7661; --Greetings. What spell are you looking for?
         SORORO_SHOP_DIALOG =  7662; --Hello-mellow, welcome to Sororo's Scribe and Notary!
      HARMODIOS_SHOP_DIALOG =  7663; --Add music to your adventuring life! Welcome to Harmodios's.
      CARMELIDE_SHOP_DIALOG =  7664; --Ah, welcome, welcome! What might I interest you in?
          RAGHD_SHOP_DIALOG =  7665; --Give a smile to that special someone! Welcome to Carmelide's.
       HORTENSE_SHOP_DIALOG =  7666; --Hello there! We have instruments and music sheets at Harmodios's!
       OGGODETT_OPEN_DIALOG =  7667; --Hello there! Might I interest you in some specialty goods from Aragoneu?
         YAFAFA_OPEN_DIALOG =  7668; --Hello! I've got some goods from Kolshushu--interested?
      SOMNPAEMN_OPEN_DIALOG =  7669; --Welcome! I have goods straight from Sarutabaruta! What say you?

-- conquest Base
CONQUEST_BASE = 6567; -- Tallying conquest results...

-- Porter Moogle
RETRIEVE_DIALOG_ID = 12831; -- You retrieve a <item> from the porter moogle's care.


-- Voidwatch (NOTE: this is not a retail implementation!) These will need recheck/correction every time there is a client update.
I_AM_A_VOIDWATCH_OFFICER = 13630; -- I am a Voidwatch officer dispatched here by the
           I_BESEECH_YOU = 13631; -- I beseech you, friend. Lend your aid to our cause, lest our fair Vana'diel be engulfed in fire and brimstone.
 COMMEND_YOUR_ENTHUSIASM = 13633; -- While I commend your enthusiasm, only those who possess
     PROOF_OF_ONES_VALOR = 13634; -- is considered proof of one's valor and prowess, and is awarded only to those who have distinguished themselves in the three nations.
                ENLISTED = 13635; -- Enlisted in [San d'Oria/Bastok/Windurst]'s armed forces, you say?
    MILITARY_AFFILIATION = 13636; -- I'm sorry, but only those with military affiliation may participate in Voidwatch Ops.
ENTHUSIASM_IS_HEARTENING = 13637; -- While your enthusiasm is heartening, the Voidwatch requires men and women of tested steel.
             AT_LEAST_75 = 13638; -- You must be at least level
        STRATUM_ABYSSITE = 13641; -- Stratum abyssite is needed to do battle with a Voidwalker at one of the many planar rifts that have manifested across the land.
   EACH_STONE_IS_ATTUNED = 13642; -- You can't simply use one wherever you like, mind you, for each stone is attuned only to rifts found in a certain region, or “jurisdiction.”
     VOIDWATCH_OPERATION = 13643; -- Undertaking a Voidwatch operation in a specific jurisdiction requires that you obtain the corresponding stone from the presiding Voidwatch officer.
THESE_STONES_ARE_CAPABLE = 13644; -- While these stones are capable of rendering Voidwalkers visible to their bearers, their powers can only be tapped when used in conjunction with
             OPERATIONS1 = 13645; -- Operations are presently underway at [East Ronfaure/East Ronfaure/Ordelle's Caves/the Jugner Forest/the Jugner Forest/King Ranperre's Tomb/West Ronfaure/La Theine Plateau/Vunkerl Inlet]. While planar rifts have been reported in other areas, we've yet to discover how to engage Voidwalkers there.
             OPERATIONS2 = 13646; -- Operations are presently underway at [North Gustaberg/North Gustaberg/the Gusgen Mines/the Pashhow Marshlands/the Pashhow Marshlands/Dangruf Wadi/South Gustaberg/the Konschtat Highlands/Grauberg]. While planar rifts have been reported in other areas, we've yet to discover how to engage Voidwalkers there.
             OPERATIONS3 = 13647; -- Operations are presently underway at [West Sarutabaruta/West Sarutabaruta/the Maze of Shakhrami/the Meriphataud Mountains/the Meriphataud Mountains/the Outer Horutoto Ruins/East Sarutabaruta/Tahrongi Canyon/Fort Karugo-Narugo]. While planar rifts have been reported in other areas, we've yet to discover how to engage Voidwalkers there.
                REQUEST1 = 13650; -- At this time, we request your participation in the operation at [East Ronfaure/East Ronfaure/Ordelle's Caves/the Jugner Forest/the Jugner Forest/King Ranperre's Tomb/West Ronfaure/La Theine Plateau/Vunkerl Inlet].
                REQUEST2 = 13651; -- At this time, we request your participation in the operation at [North Gustaberg/North Gustaberg/the Gusgen Mines/the Pashhow Marshlands/the Pashhow Marshlands/Dangruf Wadi/South Gustaberg/the Konschtat Highlands/Grauberg].
                REQUEST3 = 13652; -- At this time, we request your participation in the operation at [West Sarutabaruta/West Sarutabaruta/the Maze of Shakhrami/the Meriphataud Mountains/the Meriphataud Mountains/the Outer Horutoto Ruins/East Sarutabaruta/Tahrongi Canyon/Fort Karugo-Narugo].
