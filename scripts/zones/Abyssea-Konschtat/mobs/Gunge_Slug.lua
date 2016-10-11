-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Gunge_Slug
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");

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
    local SPELL_ID = 651;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
end;