-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Trisvain
-- @pos 28.5 0 85 231
-- High Tier Battlefield entry KI assistant
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Northern_San_dOria/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
require("scripts/globals/msg");
--[[
    bit1  = 1      -- Shadowlord
    bit2  = 2      -- Stellar Fulcrum
    bit3  = 4      -- Celestial Nexus
    bit4  = 8      -- Apathy
    bit5  = 16     -- Arrogance
    bit6  = 32     -- Envy
    bit7  = 64     -- Cowardice
    bit8  = 128    -- Rage
    bit9  = 256    -- Pentacide Perpetrator (Divine Might)
    bit10 = 512    -- Savage
    bit11 = 1024   -- Warriors Path
    bit12 = 2048   -- Puppet in Peril
    bit13 = 4096   -- Legacy
    bit14 = 8192   -- Head Wind
    bit15 = 16384  -- Avatar
    bit16 = 32768  -- Moonlit Path
    bit17 = 65536  -- Waking the beast
    bit18 = 131072 -- Waking Dreams
    bit19 = 262144 -- Feared One
    bit20 = 524288 -- Dawn
]]

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
    if (player:getMainLvl() < 75) then
        player:PrintToPlayer("This is no place for the weak. Leave at once. ", chatType.SAY, npc:getName());
    elseif (player:getMainLvl() < 90) then
        player:PrintToPlayer("Strength is not everything. I find your lack of experience disturbing. ", chatType.SAY, npc:getName());
    else
        local MERITS = player:getMeritCount();
        local unknown1 = 0; -- Dummied until understood
        local phantomGems = 0x000FFFFF;
        local finished = 0xFFFFFFFF;
        local honors = 0;
        local unknown2 = 0; -- Dummied until understood
        local unknown3 = 0; -- Dummied until understood
        local unknown4 = 0; -- Dummied until understood
        player:startEvent(892, A, phantomGems, MERITS, finished, honors, unknown2, unknown3, unknown4);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------
function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (player:getVar("DebugMode") > 0) then
        player:PrintToPlayer(string.format("onEventUpdate option: %u", option));
    end

    if (csid == 892 and (option == 1 or option == 3 or option == 259)) then
        local MERITS = player:getMeritCount();
        local unknown1 = 0; -- Dummied until understood
        local phantomGems = 0x000FFFFF;
        local finished = 0xFFFFFFFF;
        local honors = 0;
        local unknown2 = 0; -- Dummied until understood
        local unknown3 = 0; -- Dummied until understood
        local unknown4 = 0; -- Dummied until understood

        player:updateEvent(unknown1, phantomGems, MERITS, finished, honors, unknown2, unknown3, unknown4);
    end
end;

-----------------------------------
-- onEventFinish
-----------------------------------
function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    if (player:getVar("DebugMode") == 1) then
        player:PrintToPlayer(string.format("onEventUpdate option: %u", option));
    end
--[[
    if (csid == 892) then
        local keyItem;
        local cost;

        if (option == 2) then
            keyItem = SHADOW_LORD_PHANTOM_GEM;
            cost = 10;
        elseif (option == 258) then
            keyItem = STELLAR_FULCRUM_PHANTOM_GEM;
            cost = 10;
        elseif (option == 258) then
            keyItem = REPLACE_ME;
            cost = 10;
        elseif (option == 514) then
            keyItem = CELESTIAL_NEXUS_PHANTOM_GEM;
            cost = 15;
        elseif (option == 770) then
            keyItem = PHANTOM_GEM_OF_APATHY;
            cost = 15;
        elseif (option == 1026) then
            keyItem = PHANTOM_GEM_OF_ARROGANCE;
            cost = 15;
        elseif (option == 1282) then
            keyItem = PHANTOM_GEM_OF_ENVY;
            cost = 15;
        elseif (option == 1538) then
            keyItem = PHANTOM_GEM_OF_COWARDICE;
            cost = 15;
        elseif (option == 1794) then
            keyItem = PHANTOM_GEM_OF_RAGE;
            cost = 15;
        elseif (option == 2050) then
            keyItem = P_PERPETRATOR_PHANTOM_GEM;
            cost = 20;
        elseif (option == 2306) then
            keyItem = SAVAGE_S_PHANTOM_GEM;
            cost = 10;
        elseif (option == 2562) then
            keyItem = WARRIORS_PATH_PHANTOM_GEM;
            cost = 10;
        elseif (option == 2818) then
            keyItem = PUPPET_IN_PERIL_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3074) then
            keyItem = LEGACY_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3330) then
            keyItem = HEAD_WIND_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3586) then
            keyItem = AVATAR_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3842) then
            keyItem = MOONLIT_PATH_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4098) then
            keyItem = WAKING_THE_BEAST_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4354) then
            keyItem = WAKING_DREAMS_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4610) then
            keyItem = FEARED_ONE_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4866) then
            keyItem = DAWN_PHANTOM_GEM;
            cost = 15;
        elseif (option ~= 1073741824) then
            print("Invalid onEventFinish result in Trisvain.lua (Northern San d'Oria) csid: "..csid.."option: "..option);
        end

        if (keyItem ~= nil and cost ~= nil) then
            if (player:hasKeyItem(keyItem)) then
                player:PrintToPlayer("Trisvain : You already posses that Phantom Gem. ", chatType.NS_SAY);
            else
                local meritCount = player:getMeritCount();
                if (meritCount >= cost) then
                    player:setMerits(meritCount -cost);
                    player:addKeyItem(keyItem);
                    player:messageSpecial(KEYITEM_OBTAINED, keyItem);
                else
                    player:PrintToPlayer("Trisvain : You haven't enough. I can do nothing with that amount. ", chatType.NS_SAY);
                end
            end
        end
    end]]
end;
