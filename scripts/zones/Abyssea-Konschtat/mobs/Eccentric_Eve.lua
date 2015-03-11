-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Eccentric_Eve
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
    mob:setMod(MOD_REGAIN,30);
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
    local CHANCE = 35;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_VORACIOUS_VIOLET) == false) then
        killer:addKeyItem(ATMA_OF_THE_VORACIOUS_VIOLET);
        killer:messageSpecial(6385, ATMA_OF_THE_VORACIOUS_VIOLET);
    end
end;