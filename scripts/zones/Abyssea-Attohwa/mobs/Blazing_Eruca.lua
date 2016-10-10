-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Blazing_Eruca
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT, 20);
    mob:addMod(MOD_MACC, 500);
    mob:addMod(MOD_MDEF, 20);
    mob:addMod(MOD_SLASHRES, 20);
    mob:addMod(MOD_PIERCERES, -25);
    mob:addMod(MOD_IMPACTRES, 25);
    mob:addMod(MOD_HTHRES, -10);
    mob:addMod(MOD_FIRERES, 80); -- You can't fire me, I quit!
    mob:addMod(MOD_ICERES, 5);
    mob:addMod(MOD_WINDRES, 33);
    mob:addMod(MOD_EARTHRES, 33);
    mob:addMod(MOD_THUNDERRES, 33);
    mob:addMod(MOD_WATERRES, -80);
    mob:addMod(MOD_LIGHTRES, 33);
    mob:addMod(MOD_DARKRES, 33);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 33);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(BULBOUS_CRAWLER_COCOON) == false) then
        player:addKeyItem(BULBOUS_CRAWLER_COCOON);
        player:messageSpecial(KEYITEM_OBTAINED, BULBOUS_CRAWLER_COCOON);
    end
end;

