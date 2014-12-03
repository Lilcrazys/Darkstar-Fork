-----------------------------------
--  Area: Bastok Markets
--  NPC: Artisian Moogle
--  Mythic Weapon merchant
--  @pos -211 -8 -25
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/shop");
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)

player:showText(npc,PAUNELIE_SHOP_DIALOG,513);

stock =
{
	18994,425000000, -- Laevateinn
	18991,325000000, -- Conqueror
	18993,225000000, -- Yargush
	18995,325000000, -- Murgleis
	18996,325000000, -- Vajra
	18997,350000000, -- Burtgang
	18998,350000000, -- Liberator
	18992,325000000, -- Glanzfaust
	19000,225000000, -- Carnwenah
	19001,225000000, -- Gastraphetes
	19002,375000000, -- Kogarasamaru
	19003,335000000, -- Nagi
	19005,325000000, --Nirvana
	18989,450000000, -- Terpsichore
	19007,525000000, -- Death Penalty
	19006,475000000, -- Tizona
	--19004,225000000, -- Ryunohige
	--18990,150000000, -- Tupsimati
}
showShop(player, STATIC, stock);
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
end;


