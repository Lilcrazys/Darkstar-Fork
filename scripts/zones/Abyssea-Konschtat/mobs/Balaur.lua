-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Balaur
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,1900);    

    -- addMod
    mob:addMod(MOD_EVA,-75);
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
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 40;
    local SPELL_CHANCE = 40;
  
    if (math.random(0,99) < KI_CHANCE and ally:hasKeyItem(ATMA_OF_STORMBREATH) == false) then
        ally:addKeyItem(ATMA_OF_STORMBREATH);
        ally:messageSpecial(6385, ATMA_OF_STORMBREATH);
    end

    if (math.random(0,99) < SPELL_CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(695) == false) then
        ally:addSpell(695);
    end
end;