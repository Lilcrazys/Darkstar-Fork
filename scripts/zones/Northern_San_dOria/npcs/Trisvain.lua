-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Trisvain
-- Type: Hard Mode battlefield Entry KI shop
-- @pos 28.5 0 85 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Northern_San_dOria/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems")

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
    local MERITS = player:getMeritCount();
    local A = 0xFFFFFFFF; -- Dummied until understood
    local B = 0xFFFFFFFF; -- Dummied until understood
    local C = 0xFFFFFFFF; -- Dummied until understood
    local D = 0xFFFFFFFF; -- Dummied until understood
    local E = 0xFFFFFFFF; -- Dummied until understood
    local F = 0xFFFFFFFF; -- Dummied until understood
    local G = 0xFFFFFFFF; -- Dummied until understood
    player:startEvent(892, A, B, MERITS, C, D, E, F, G);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------
function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    local MERITS = player:getMeritCount();
    local A = 0xFFFFFFFF; -- Dummied until understood
    local B = 0xFFFFFFFF; -- Dummied until understood
    local C = 0xFFFFFFFF; -- Dummied until understood
    local D = 0xFFFFFFFF; -- Dummied until understood
    local E = 0xFFFFFFFF; -- Dummied until understood
    local F = 0xFFFFFFFF; -- Dummied until understood
    local G = 0xFFFFFFFF; -- Dummied until understood
    player:updateEvent(A, B, MERITS, C, D, E, F, G);
end;

-----------------------------------
-- onEventFinish
-----------------------------------
function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    player:PrintToPlayer(string.format("option: %u", option));

    local meritCount = player:getMeritCount();
    if (csid == 892) then
        local keyitem = nil;
        local cost = nil;

        if (option == 2) then
            keyitem = SHADOW_LORD_PHANTOM_GEM;
            cost = 10;
        elseif (option == 258) then
            keyitem = STELLAR_FULCRUM_PHANTOM_GEM;
            cost = 10;
        elseif (option == 258) then
            keyitem = REPLACE_ME;
            cost = 10;
        elseif (option == 514) then
            keyitem = CELESTIAL_NEXUS_PHANTOM_GEM;
            cost = 15;
        elseif (option == 770) then
            keyitem = PHANTOM_GEM_OF_APATHY;
            cost = 15;
        elseif (option == 1026) then
            keyitem = PHANTOM_GEM_OF_ARROGANCE;
            cost = 15;
        elseif (option == 1282) then
            keyitem = PHANTOM_GEM_OF_ENVY;
            cost = 15;
        elseif (option == 1538) then
            keyitem = PHANTOM_GEM_OF_COWARDICE;
            cost = 15;
        elseif (option == 1794) then
            keyitem = PHANTOM_GEM_OF_RAGE;
            cost = 15;
        elseif (option == 2050) then
            keyitem = P_PERPETRATOR_PHANTOM_GEM;
            cost = 20;
        elseif (option == 2306) then
            keyitem = SAVAGE_S_PHANTOM_GEM;
            cost = 10;
        elseif (option == 2562) then
            keyitem = WARRIORS_PATH_PHANTOM_GEM;
            cost = 10;
        elseif (option == 2818) then
            keyitem = PUPPET_IN_PERIL_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3074) then
            keyitem = LEGACY_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3330) then
            keyitem = HEAD_WIND_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3586) then
            keyitem = AVATAR_PHANTOM_GEM;
            cost = 10;
        elseif (option == 3842) then
            keyitem = MOONLIT_PATH_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4098) then
            keyitem = WAKING_THE_BEAST_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4354) then
            keyitem = WAKING_DREAMS_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4610) then
            keyitem = FEARED_ONE_PHANTOM_GEM;
            cost = 15;
        elseif (option == 4866) then
            keyitem = DAWN_PHANTOM_GEM;
            cost = 15;
        end

        if (keyitem ~= nil and cost ~= nil) then
            if (player:hasKeyItem(keyitem) and meritCount >= cost) then
                -- player:setMerits(meritCount -cost);
                -- player:addKeyItem(keyitem);
                -- player:messageSpecial(KEYITEM_OBTAINED, keyitem);
            end
        end
    end
end;