-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Bennu
-----------------------------------
require("scripts/zones/Abyssea-Altepa/textIDs");
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
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-200);
    mob:addMod(MOD_DEF,-150);
    mob:addMod(MOD_ATT,183);
    mob:addMod(MOD_DOUBLE_ATTACK,25);
    mob:addMod(MOD_AGI,83);
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
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_ASCENDING_ONE) == false) then
        killer:addKeyItem(ATMA_OF_THE_ASCENDING_ONE);
        killer:messageSpecial(6385, ATMA_OF_THE_ASCENDING_ONE);
    end
end;

