-----------------------------------
-- Area: Abyssea - Misareaux (216)
--  NM:  Cirein-croin
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1700);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,50);
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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;
    ally:addTitle(CIREINCROIN_HARPOONER);
    
    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT) == false) then
        ally:addKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT);
        ally:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_THE_DEEP_DEVOURER) == false) then
        ally:addKeyItem(ATMA_OF_THE_DEEP_DEVOURER);
        ally:messageSpecial(6385, ATMA_OF_THE_DEEP_DEVOURER);
    end
end;