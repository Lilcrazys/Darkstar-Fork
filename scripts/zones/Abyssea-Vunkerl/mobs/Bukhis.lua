-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Bukhis
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- OnMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_ATT,90);
    mob:addMod(MOD_ACC,90);
    mob:addMod(MOD_MATT,90);
    mob:addMod(MOD_DEF,175);
    mob:addMod(MOD_MACC,500);
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

function onMobDeath(mob,killer)
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_SANGUINE_SCYTHE) == false) then
        killer:addKeyItem(ATMA_OF_THE_SANGUINE_SCYTHE);
        killer:messageSpecial(6385, ATMA_OF_THE_SANGUINE_SCYTHE);
    end
end;