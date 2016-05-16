-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Flame_Skimmer
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
require("scripts/zones/Abyssea-Misareaux/MobIDs");
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
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_DEF,75);
    mob:addMod(MOD_ATT,75);
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
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
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(SAPPHIRE_ABYSSITE_OF_FURTHERANCE) == false) then
        player:addKeyItem(SAPPHIRE_ABYSSITE_OF_FURTHERANCE);
        player:messageSpecial(KEYITEM_OBTAINED, SAPPHIRE_ABYSSITE_OF_FURTHERANCE);
    end
end;

