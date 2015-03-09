-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Keratyrannos
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(CRACKED_WIVRE_HORN) == false) then
        killer:addKeyItem(CRACKED_WIVRE_HORN);
        killer:messageSpecial(6385, CRACKED_WIVRE_HORN);
    end
end;