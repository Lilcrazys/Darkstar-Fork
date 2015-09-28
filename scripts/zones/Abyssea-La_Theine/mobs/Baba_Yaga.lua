-----------------------------------
-- Area: Abyssea - La Theine (132)
--  NM:  Baba Yaga
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/zones/Abyssea-La_Theine/textIDs");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SHIMMERING_PIXIE_PINION) == false) then
        killer:addKeyItem(SHIMMERING_PIXIE_PINION);
        killer:messageSpecial(KEYITEM_OBTAINED, SHIMMERING_PIXIE_PINION);
    end
end;