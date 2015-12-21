-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Npfundlwa
-----------------------------------
require("scripts/zones/Abyssea-Misareaux/textIDs");
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
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(SAPPHIRE_ABYSSITE_OF_FORTUNE) == false) then
        ally:addKeyItem(SAPPHIRE_ABYSSITE_OF_FORTUNE);
        ally:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_FORTUNE);
    end
end;

