-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Itzpapalotl
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/textIDs");
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
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,1800);

    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,50);
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
    local CHANCE = 15;
    killer:addTitle(ITZPAPALOTL_DECLAWER);
    
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_CLAWED_BUTTERFLY) == false) then
        killer:addKeyItem(ATMA_OF_THE_CLAWED_BUTTERFLY);
        killer:messageSpecial(6385, ATMA_OF_THE_CLAWED_BUTTERFLY);
    end
end;