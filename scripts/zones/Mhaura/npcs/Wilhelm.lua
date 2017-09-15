-----------------------------------
--  Area: Mhaura
--  NPC:  Wilhelm
--  Type: Standard NPC
-- !pos -22.746 -5 17.157 249
-----------------------------------
package.loaded["scripts/zones/Mhaura/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/armor_upgrade");
require("scripts/zones/Mhaura/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local armor = 0;
    if (trade:getItemCount() == 1) then
        for n = 1,#LIMBUSARMOR,2 do
            if (trade:hasItemQty( LIMBUSARMOR[n] ,1) ) then
                armor=LIMBUSARMOR[n+1][1];
            end
        end
    end
  --print("armor"..armor);
    if (armor > 0) then
        if (player:getFreeSlotsCount()==0 or player:hasItem(armor) ) then
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,armor);
        else
            player:setLocalVar("Wilhelm_Item",armor);
            if (armor == 15241 or armor == 14489 or armor == 14906 or armor == 15577 or armor == 15662) then  -- utlima
                player:startEvent(0x0148,armor);
            elseif (armor == 15576 or armor == 15661 or armor == 15240 or armor == 14905 or armor == 14488) then -- omega
                player:startEvent(0x014A,armor);
            end
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getCurrentMission(COP) > THE_WARRIOR_S_PATH) then
        player:startEvent(0x0146);
    else
       player:startEvent(0x0145);
    end

--Wilhelm     325 default
--Wilhelm     326 demande fragment de creature
--Wilhelm     327
--Wilhelm     328 apres trade fragment d'ultima
--Wilhelm     329
--Wilhelm     330  apres trade fragment omega
--Wilhelm     331
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

    --[[
    if (csid== 0x0148 or csid == 0x014A) then
    ]]
    local item = player:getLocalVar("Wilhelm_Item");
    if ((csid== 0x0148 or csid == 0x014A) and item == option) then
        player:addItem(option);
        player:messageSpecial(ITEM_OBTAINED,option);
        player:tradeComplete();
    elseif ((csid== 0x0148 or csid == 0x014A) and item ~= option) then
        -- Cs hack detection
        player:PrintToPlayer("Hack detected. AUTO JAIL ENACTED.");

        -- Log it
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/AUTO_jail.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. "NPC Wilhelm",
        "\n", "Target: ".. player:getName(),
        "\n", "Jail cell: 6",
        "\n", "Reason: CS_event_hack_detected",
        "\n", "item ID: ".. item,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();

        player:setVar( "inJail", 6 );
        player:setPos( -180, 11,  220, 0, 131 );
     end
end;

