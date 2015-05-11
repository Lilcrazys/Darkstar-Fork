-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Sedna
-----------------------------------

require("scripts/zones/Abyssea-Vunkerl/textIDs");
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
    -- setMod
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_MACC,1700);
    mob:addMod(MOD_DEF,50);
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
    killer:addTitle(SEDNA_TUSKBREAKER);
    
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_TUSKED_TERROR) == false) then
        killer:addKeyItem(ATMA_OF_THE_TUSKED_TERROR);
        killer:messageSpecial(6385, ATMA_OF_THE_TUSKED_TERROR);
    end
end;

