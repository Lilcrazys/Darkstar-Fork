-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Balaur
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
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

function onMobDeath(mob,killer)
    local KI_CHANCE = 40;
    local SPELL_CHANCE = 40;
  
    if (math.random(0,99) < KI_CHANCE and killer:hasKeyItem(ATMA_OF_STORMBREATH) == false) then
        killer:addKeyItem(ATMA_OF_STORMBREATH);
        killer:messageSpecial(6385, ATMA_OF_STORMBREATH);
    end

    if (math.random(0,99) < SPELL_CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(695) == false) then
        killer:addSpell(695);
    end
end;