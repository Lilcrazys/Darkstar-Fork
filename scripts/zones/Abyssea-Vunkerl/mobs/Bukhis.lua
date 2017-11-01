-----------------------------------
-- Area: Abyssea - Vunkerl (217)
--  Mob: Bukhis
-----------------------------------
package.loaded["scripts/zones/Abyssea-Vunkerl/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- OnMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_HP_STANDBACK,-1); -- No standing back, you get in there and melee mage it up!

    -- addMod
    mob:addMod(MOD_DEF, 100);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_MACC, 100);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
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
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_SANGUINE_SCYTHE) == false) then
        player:addKeyItem(ATMA_OF_THE_SANGUINE_SCYTHE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SANGUINE_SCYTHE);
    end
end;
