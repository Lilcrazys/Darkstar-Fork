-----------------------------------
--  Area: Southern Sandoria
--  NPC: Artisian Moogle
--  Salvage merchant
--  @pos -142 -1 -25 236
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
	16084,250000000, -- Ares' Mask
	14961,250000000, -- Ares' Gauntlets
	14546,250000000, -- Ares' Cuirass
	15625,250000000, -- Ares' Flanchard
	15711,250000000, -- Ares' Sollerets
	16088,250000000, -- Skadi's Visor
	14965,250000000, -- Skadi's Bazubands
	14550,250000000, -- Skadi's Cuirie
	15629,250000000, -- Skadi's Chausses
	15715,250000000, -- Skadi's Jambeaux
	16096,250000000, -- Marduk's Tiara
	14973,250000000, -- Marduk's Dastanas
	14558,250000000, -- Marduk's Jubbah
	15637,250000000, -- Marduk's Shalwar
	15723,250000000, -- Marduk's Crackows

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



