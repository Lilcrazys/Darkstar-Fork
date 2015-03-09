-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Tonberry_Lieje
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
    mob:addMod(MOD_MATT,100);
    mob:addMod(MOD_MACC,200);
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(TWISTED_TONBERRY_CROWN) == false) then
        killer:addKeyItem(TWISTED_TONBERRY_CROWN);
        killer:messageSpecial(6385, TWISTED_TONBERRY_CROWN);
    end
end;