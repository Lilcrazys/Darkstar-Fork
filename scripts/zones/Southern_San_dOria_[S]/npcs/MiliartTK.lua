-----------------------------------
-- Area: Southern SandOria [S]
-- NPC: Miliart T.K
-- @zone 80
-- @pos 107 1 -31
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/campaign");
require("scripts/zones/Southern_San_dOria_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local notes = player:getAlliedNotes();
    local freelances = 99; -- Faking it for now
    local unknown = 12; -- Faking it for now
    local medal_rank = getMedalRank(player);
    local bonus_effects = 0; -- 1= regen, 2= refresh, 4= meal duration, 8= exp loss reduction, 15 = all
    local timestamp = 0; --getSigilTimeStamp(player);

    -- if ( medal_rank > 25 and nation controls Throne_Room_S ) then
        -- medal_rank = 32;
        -- this decides if allied ring is in the Allied Notes item list.
    -- end

    if (medal_rank == 0) then
        player:startEvent(0x06F);
    else
        player:startEvent(0x06E,0,notes,freelances,unknown,medal_rank,bonus_effects,timestamp,0);
    end

end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    printf("CSID: %u",csid);
    printf("RESULT: %u",option);
    local itemid = 0;
    local canEquip = 2; -- Faking it for now.
    -- 0= Wrong job, 1= wrong level, 2= Everything is in order, 3 or greater = menu exits...

    if (csid == 0x06E and option >= 2 and option <= 2050) then
        itemid = getSandOriaNotesItem(option);
        player:updateEvent(0,0,0,0,0,0,0,canEquip);  -- canEquip(player,itemid));  <- works for sanction NPC, wtf?
    end

end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    printf("CSID: %u",csid);
    printf("RESULT: %u",option);
    -- local notes = player:getAlliedNotes();
    local medal_rank = getMedalRank(player);
    local Power = 0;
    local tick = 0;
    local duration = getSigilDuration(player);
    local subPower = 0; -- will use this to set % trigger for regen/refresh later
    if (csid == 0x06E) then
        if (option == 1 or option == 4097 or option == 8193 or option == 12289
        or option == 16385 or option == 20481 or option == 24577
        or option == 28673 or option == 36865 or option == 40961
        or option == 45057 or option == 49153 or option == 53249
        or option == 57345 or option == 61441) then
            Power = ( (option - 1) / 4096 );
            if (option == 4097) then -- Regen
                tick = 3;
                player:delAlliedNotes(50);
            elseif (option == 8193) then -- Refresh
                tick = 3;
                player:delAlliedNotes(50);
            elseif (option == 12289) then -- Regen and Refresh
                tick = 3;
                player:delAlliedNotes(100);
            elseif (option == 16385) then -- Meal Duration
                player:delAlliedNotes(50);
            elseif (option == 20481) then -- Regen and Meal Duration
                tick = 3;
                player:delAlliedNotes(100);
            elseif (option == 24577) then -- Refresh and Meal Duration
                tick = 3;
                player:delAlliedNotes(100);
            elseif (option == 28673) then -- Regen, Refresh, and Meal Duration
                tick = 3;
                player:delAlliedNotes(150);
            elseif (option == 32769) then -- Reduced EXP loss.
                player:delAlliedNotes(100);
            elseif (option == 36865) then -- Regen and Reduced EXP loss.
                tick = 3;
                player:delAlliedNotes(150);
            elseif (option == 40961) then -- Refresh and Reduced EXP loss.
                tick = 3;
                player:delAlliedNotes(150);
            elseif (option == 45057) then -- Regen, Refresh, and Reduced EXP loss.
                tick = 3;
                player:delAlliedNotes(150);
            elseif (option == 49153) then -- Meal Duration and Reduced EXP loss.
                player:delAlliedNotes(100);
            elseif (option == 53249) then -- Regen, Meal Duration, and Reduced EXP loss.
                tick = 3;
                player:delAlliedNotes(150);
            elseif (option == 57345) then -- Refresh, Meal Duration, and Reduced EXP loss.
                tick = 3;
                -- player:delAlliedNotes(150);
            elseif (option == 61441) then -- Everything
                tick = 3;
                player:delAlliedNotes(200);
            end

            player:delStatusEffect(EFFECT_SIGIL);
            player:delStatusEffect(EFFECT_SANCTION);
            player:delStatusEffect(EFFECT_SIGNET);
            player:addStatusEffect(EFFECT_SIGIL,Power,tick,duration,0,subPower,0);
            -- player:setPlayerVar(timestamp);
            player:messageSpecial(ALLIED_SIGIL);

        elseif (option >=2 and option <= 2050) then -- player bought item
        -- currently only "ribbons" rank coded.
            item, price = getSandOriaNotesItem(option)
            if (player:getFreeSlotsCount() >= 1) then
                player:delAlliedNotes(price);
                player:addItem(item);
                player:messageSpecial(ITEM_OBTAINED,item);
            else
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,item);
            end
        end
    end
end;