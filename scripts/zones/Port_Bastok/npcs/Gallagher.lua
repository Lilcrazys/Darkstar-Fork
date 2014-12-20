-----------------------------------
-- Area: Port Bastok
-- NPC: Gallagher
-- Standard Info NPC
-----------------------------------


package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;
require("scripts/zones/Port_Bastok/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	-- player:startEvent(0x015D);
	local month = tonumber(os.date("%m"));
	local day = tonumber(os.date("%d"));
	if ((month == 12 and day >= 10 and day <= 27) ) then -- Xmass gear: Dec 10 ~ Dec 27
		local stock_1 =
		{
			15179,   7500,    -- Dream Hat +1
			18864,   7500,    -- Dream Bell +1
			14520,   7500,    -- Dream Robe +1
			10383,   7500,    -- Dream Mittens +1
			11966,   7500,    -- Dream Trousers
			11968,   7500,    -- Dream Pants +1
			15753,   7500,    -- Dream Boots +1
			155,     5000,    -- Dream Sock
			141,     5000,    -- Dream Coffer
			140,     5000,    -- Dream Platter
			86,      6000,    -- San d'Orean Tree
			115,     6000,    -- Bastokan Tree
			116,     6000,    -- Windurstian Tree
			138,     8000,    -- Jeunoan Tree
		};
		showShop(player, STATIC, stock_1);
	elseif ((month == 12 and day >= 28) or (month == 1 and day <= 10)) then -- New Years: Dec 28 ~ Jan 10
		local stock_2 =
		{
			18846,   5000,    -- Battledore
		};
		showShop(player, STATIC, stock_2);
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