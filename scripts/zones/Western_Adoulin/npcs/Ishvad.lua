-----------------------------------
--  Area: Western Adoulin
--  NPC: Ishvad
--   merchant
--  @pos
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

player:showText(npc,9889);

stock =
{
	14969,250000000, -- Usukane Gote
	14554,250000000, -- Usukane Haramaki
	15633,250000000, -- Usukane Hizayoroi
	16092,250000000, -- Usukane Somen
	15719,250000000, -- Usukane Sune-ate
	18348,950000000, -- Yoichinoyumi (relic)
	18264,950000000, -- Spharai (Relic)
	18270,950000000, -- Mandau (relic)
	18276,950000000, -- Excalibur (Relic)
	18282,950000000, -- Ragnarok (Relic)
	18294,950000000, -- Bravura  (Relic)
	18306,950000000, -- Apocolypse (Relic)
	18312,950000000, -- Kikoku   (Relic)
	18318,950000000, -- Amanomurakumo (Relic)
	15070,950000000, -- Aegis (Relic)
	18342,950000000, -- Gjallarhorn  (Relic)

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



