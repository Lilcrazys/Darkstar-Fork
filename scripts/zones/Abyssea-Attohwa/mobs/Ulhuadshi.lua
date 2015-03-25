-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Ulhuadshi
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/textIDs");
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
    mob:addMod(MOD_MATT,425);
    mob:addMod(MOD_MACC,1500);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
    mob:addMod(MOD_EVA,-100);
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_DESERT_WORM) == false) then
        killer:addKeyItem(ATMA_OF_THE_DESERT_WORM);
        killer:messageSpecial(6385, ATMA_OF_THE_DESERT_WORM);
    end
end;