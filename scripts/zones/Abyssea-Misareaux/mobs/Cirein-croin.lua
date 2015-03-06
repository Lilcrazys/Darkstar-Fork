-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Cirein-croin
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/zones/Abyssea-Misareaux/TextIDs");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------
function onMobDeath(mob,killer)
    local CHANCE = 17;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_MERIT);
    end
end;


