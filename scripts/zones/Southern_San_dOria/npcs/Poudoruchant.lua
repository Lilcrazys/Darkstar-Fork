-----------------------------------
--	Area: Southern San d'Oria
--	NPC: Poudoruchant
--  General Info NPC
-------------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
-- "Flyers for Regine" conditional script
FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

	if (FlyerForRegine == 1) then
		count = trade:getItemCount();
		MagicFlyer = trade:hasItemQty(532,1);
		if (MagicFlyer == true and count == 1) then
			player:messageSpecial(FLYER_REFUSED);
		end
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	-- player:startEvent(0x30B);
	local month = tonumber(os.date("%m"));
	local day = tonumber(os.date("%d"));
	if ((month == 12 and day >= 10 and day <= 27) ) then -- Xmas gear: Dec 10 ~ Dec 27
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
			18846,   7500,    -- Battledore
			10875,   7500,    -- Snowman Cap
			176,     6000,    -- Snowman Knight
			177,     6000,    -- Snowman Miner
			178,     6000,    -- Snowman Mage
			192,     6000,    -- Hoary Spire
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