-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Clingy_Clare
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
    WeaknessTriggerSet(mob,target,ws,spell);
end;

-----------------------------------
-- onMobFight
-----------------------------------


function onMobFight(mob,target)
    TriggerHint(mob,target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(DECAYING_MORBOL_TOOTH) == false) then
        killer:addKeyItem(DECAYING_MORBOL_TOOTH);
        killer:messageSpecial(6385, DECAYING_MORBOL_TOOTH);
    end
end;