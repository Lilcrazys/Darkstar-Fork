-----------------------------------
-- NPC: Cavernous Maw
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/North_Gustaberg/TextIDs");

-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	local npcid = npc:getID();
    if (ENABLE_ABYSEA == 1 and player:getMainLvl() >= 30) then
        -- local HasStone = getTravStonesTotal(player);
        player:startEvent(0x038c,0,1);
	else
        player:messageSpecial(NOTHING_HAPPENS);
    end
	print("npcid",npcid);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	--printf("CSID: %u",csid);
	--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	--printf("CSID: %u",csid);
	--printf("RESULT: %u",option);
	-- if (csid == 0x0000) then
        -- player:addQuest(ABYSSEA, MEGADRILE_MENACE);
	-- elseif (csid ==1) then
        -- -- Killed Boss	
	if(csid == 0x038c and option == 1) then
		player:setPos(-554, 31, -760, 0, 254);
	end
	
end;