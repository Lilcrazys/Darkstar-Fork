-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Heqet
-----------------------------------
require("scripts/zones/Abyssea-Misareaux/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MATT,5);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_MEVA,100);
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(DOFFED_POROGGO_HAT) == false) then
        killer:addKeyItem(DOFFED_POROGGO_HAT);
        killer:messageSpecial(6385, DOFFED_POROGGO_HAT);
    end
end;

