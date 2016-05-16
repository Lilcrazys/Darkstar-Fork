-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Mictlantecuhtli
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_COUNTER, 30);
    mob:setMod(MOD_MACC,1725);
    mob:setMod(MOD_MATT,110);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_ATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);


    mob:addMod(MOD_DEF,150);
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

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(OVERGROWN_MANDRAGORA_FLOWER) == false) then
        player:addKeyItem(OVERGROWN_MANDRAGORA_FLOWER);
        player:messageSpecial(6385, OVERGROWN_MANDRAGORA_FLOWER);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_HARVESTER) == false) then
        player:addKeyItem(ATMA_OF_THE_HARVESTER);
        player:messageSpecial(6385, ATMA_OF_THE_HARVESTER);
    end
end;
