-----------------------------------
-- Area: Port Jeuno
--  NPC: AF3 Shop Moogle
-- Abyssea AF3 Shop
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Port_Jeuno/TextIDs");
require("scripts/globals/msg");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local mJob = player:getMainJob();
    local lvl = player:getMainLvl();
    -----------------------------------
    --- Job Related Content per job ---
    -----------------------------------
    -- AF3 --
    local war = {12008,1000000,12028,1000000,12048,1000000,12068,1000000,12088,1000000};
    local mnk = {12009,1000000,12029,1000000,12049,1000000,12069,1000000,12089,1000000};
    local whm = {12010,1000000,12030,1000000,12050,1000000,12070,1000000,12090,1000000};
    local blm = {12011,1000000,12031,1000000,12051,1000000,12071,1000000,12091,1000000};
    local rdm = {12012,1000000,12032,1000000,12052,1000000,12072,1000000,12092,1000000};
    local thf = {12013,1000000,12033,1000000,12053,1000000,12073,1000000,12093,1000000};
    local pld = {12014,1000000,12034,1000000,12054,1000000,12074,1000000,12094,1000000};
    local drk = {12015,1000000,12035,1000000,12055,1000000,12075,1000000,12095,1000000};
    local bst = {12016,1000000,12036,1000000,12056,1000000,12076,1000000,12096,1000000};
    local brd = {12017,1000000,12037,1000000,12057,1000000,12077,1000000,12097,1000000};
    local rng = {12018,1000000,12038,1000000,12058,1000000,12078,1000000,12098,1000000};
    local sam = {12019,1000000,12039,1000000,12059,1000000,12079,1000000,12099,1000000};
    local nin = {12020,1000000,12040,1000000,12060,1000000,12080,1000000,12100,1000000};
    local drg = {12021,1000000,12041,1000000,12061,1000000,12081,1000000,12101,1000000};
    local smn = {12022,1000000,12042,1000000,12062,1000000,12082,1000000,12102,1000000};
    local blu = {12023,1000000,12043,1000000,12063,1000000,12083,1000000,12103,1000000};
    local cor = {12024,1000000,12044,1000000,12064,1000000,12084,1000000,12104,1000000};
    local pup = {12025,1000000,12045,1000000,12065,1000000,12085,1000000,12105,1000000};
    local dnc = {12026,1000000,12046,1000000,12066,1000000,12086,1000000,12106,1000000};
    local sch = {12027,1000000,12047,1000000,12067,1000000,12087,1000000,12107,1000000};
    -------------------------------
    player:PrintToPlayer((string.format("Well if it's not %s.", player:getName())), chatType.SAY, npc:getName());
    if (lvl >= 80) then
        if (mJob == 1) then
            showShop(player, STATIC, war);
            player:PrintToPlayer("Time to toughen up your Warrior I see, lets see what we have for you."); -- Shop for WAR --
        elseif (mJob == 2) then
            showShop(player, STATIC, mnk);
            player:PrintToPlayer("Time to show off your Monk's fists of fury I see, I should have something fitting for you."); -- Shop for MNK --
        elseif (mJob == 3) then
            showShop(player, STATIC, whm);
            player:PrintToPlayer("Time to patch up those wounds with your White Mage I see, let's see what I have to show off that red and white!."); -- Shop for WHM --
        elseif (mJob == 4) then
            showShop(player, STATIC, blm);
            player:PrintToPlayer("Time to Blow away the competition with your Black Mage I see, lets see if I can find some magical threads for you."); -- Shop for BLM --
        elseif (mJob == 5) then
            showShop(player, STATIC, rdm);
            player:PrintToPlayer("Time to show everyone what Red Mage is all about, Red red and more red!."); -- Shop for RDM --
        elseif (mJob == 6) then
            showShop(player, STATIC, thf);
            player:PrintToPlayer("Time to get extra sneaky with your Thief I see, I have some nice light pieces for you to sneak about in."); -- Shop for THF --
        elseif (mJob == 7) then
            showShop(player, STATIC, pld);
            player:PrintToPlayer("Time to turn your Paladin into a real knight I see, only the best will do for a knight of your calibre!."); -- Shop for PLD --
        elseif (mJob == 8) then
            showShop(player, STATIC, drk);
            player:PrintToPlayer("Time to be consumed with hate with Dark Knight I see, hmm something black I presume."); -- Shop for DRK --
        elseif (mJob == 9) then
            showShop(player, STATIC, bst);
            player:PrintToPlayer("Time to get back to the wild with Beastmaster I see, i should have some animal skins here somewhere."); -- Shop for BST --
        elseif (mJob == 10) then
            showShop(player, STATIC, brd);
            player:PrintToPlayer("Time to sing like you have never sung before with Bard I see, lets get musical with these new threads. ", chatType.SAY, npc:getName()); -- Shop for BRD --
        elseif (mJob == 11) then
            showShop(player, STATIC, rng);
            player:PrintToPlayer("Time to get your accuracy in order with your Ranger I see, I have some sharp items for you. ", chatType.SAY, npc:getName()); -- Shop for RNG --
        elseif (mJob == 12) then
            showShop(player, STATIC, sam);
            player:PrintToPlayer("Time to honor the way of the Samurai I see, I have some special armour for you. ", chatType.SAY, npc:getName()); -- Shop for SAM --
        elseif (mJob == 13) then
            showShop(player, STATIC, nin);
            player:PrintToPlayer("Time to stalk the night by the Ninja code I see, you will need these then. ", chatType.SAY, npc:getName()); -- Shop for NIN --
        elseif (mJob == 14) then
            showShop(player, STATIC, drg);
            player:PrintToPlayer("Time to show what a real Dragoon is made of I see, have I got something for you!. ", chatType.SAY, npc:getName()); -- Shop for DRG --
        elseif (mJob == 15) then
            showShop(player, STATIC, smn);
            player:PrintToPlayer("Time to call forth hell with Summoner I see, well you are going to need these then. ", chatType.SAY, npc:getName()); -- Shop for SMN --
        elseif (mJob == 16) then
            showShop(player, STATIC, blu);
            player:PrintToPlayer("Time to release the beast within Blue Mage I see, OK lets see if we can find something for you. ", chatType.SAY, npc:getName()); -- Shop for BLU --
        elseif (mJob == 17) then
            showShop(player, STATIC, cor);
            player:PrintToPlayer("Time to set sail with Corsair I see, I might have an eye patch or something, hmm lets see. ", chatType.SAY, npc:getName()); -- Shop for COR --
        elseif (mJob == 18) then
            showShop(player, STATIC, pup);
            player:PrintToPlayer("Time to stop being strung along with Puppet Master I see, I may have something bright and colourful for you. ", chatType.SAY, npc:getName()); -- Shop for PUP --
        elseif (mJob == 19) then
            showShop(player, STATIC, dnc);
            player:PrintToPlayer("Time to get jiggy with dancer I see, well, only the best attire will do for you. ", chatType.SAY, npc:getName()); -- Shop for DNC --
        elseif (mJob == 20) then
            showShop(player, STATIC, sch);
            player:PrintToPlayer("Time to make a winning strategy with Scholar I see, I should have something good for you. ", chatType.SAY, npc:getName()); -- Shop for SCH --
        end
    else
        player:PrintToPlayer("I'm sorry but your level is too low for my help! ", chatType.SAY, npc:getName());
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
