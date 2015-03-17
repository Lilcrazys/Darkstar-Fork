-----------------------------------
-- Area: Rolanberry Fields
--  NPC: Mayuyu
-- Legion NPC
-- @pos 240 24.399 468
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/zones/Rolanberry_Fields/TextIDs");
require("scripts/globals/custom_legion");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
    local LEGENDARY = 0;
    local CAPACITY = 0;

    if (player:hasTitle(LEGENDARY_LEGIONNAIRE)) then
        LEGENDARY = 1;
    end

    if (player:hasKeyItem(LEGION_TOME_PAGE_MAXIMUS)) then
        CAPACITY = CAPACITY+2; -- Enable 36 combatant option
    end
    if (player:hasKeyItem(LEGION_TOME_PAGE_MINIMUS)) then
        CAPACITY = CAPACITY+1; -- Enable 18 combatant option
    end

    -- player:startEvent(8008, 0, LEGENDARY, CAPACITY);
    player:SpoofChatPlayer( "I'm disabled because Teo punted me for not doing my job!", MESSAGE_SAY, npc:getID() );
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    print("CSID:", csid);
    print("RESULT:", option);
    if (option == 751) then
        --player:updateEvent(0, 0, 1, 14820, 2, 0, 42320, 0);
        player:updateEvent(0, 0, 1, 14820, 4, 0, 42320, 0);
    end

	--local party = player:getParty();
	--if (party ~= nil) then
	--	for i,v in ipairs(party) do
	--		if (v:getZone() == player:getZone() and v:checkDistance(player) > 50) then
	--			player:messageText(target,MEMBER_TOO_FAR, false);
	--			player:instanceEntry(target,1);
	--			return;
	--		end
	--	end
	--end
	player:createInstance(player:getLegionHall(), 183);

end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- print("CSID:", csid);
    -- print("RESULT:", option);
    if (option == 751) then
        player:setPos(0,0,0,0,183);
    end
    -- Event needs work, also the Legion Pass item is "tagged" via fields not yet implemented in core.

end;

-----------------------------------
-- onInstanceLoaded
-----------------------------------

function onInstanceCreated(player,instance,target)
	if (instance) then
		player:setInstance(instance);
		player:instanceEntry(target,4);
		if (party ~= nil) then
			for i,v in ipairs(party) do
				if v:getID() ~= player:getID() and v:getZone() == player:getZone() then
					v:setInstance(instance);
					v:startEvent(8009, 0);
				end
			end
		end
	else
		player:messageText(target,CANNOT_ENTER, false);
	end
end;