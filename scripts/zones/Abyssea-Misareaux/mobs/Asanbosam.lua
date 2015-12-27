-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Asanbosam
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(BLOODIED_BAT_FUR) == false) then
        ally:addKeyItem(BLOODIED_BAT_FUR);
        ally:messageSpecial(6385, BLOODIED_BAT_FUR);
    end
end;

