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
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,10);
    mob:addMod(MOD_MACC,500);
    --mob:addMod(MOD_EVA,-100);
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
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(BULBOUS_CRAWLER_COCOON) == false) then
        ally:addKeyItem(BULBOUS_CRAWLER_COCOON);
        ally:messageSpecial(6385, BULBOUS_CRAWLER_COCOON);
    end
end;

