-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Trudging_Thomas
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
require("scripts/zones/Abyssea-La_Theine/TextIDs");
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

function onMobDeath(mob, player, isKiller)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(MARBLED_MUTTON_CHOP) == false) then
        player:addKeyItem(MARBLED_MUTTON_CHOP);
        player:messageSpecial(KEYITEM_OBTAINED, MARBLED_MUTTON_CHOP);
    end
end;

