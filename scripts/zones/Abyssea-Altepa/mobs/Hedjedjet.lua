-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Hedjedjet
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
    mob:addMod(MOD_EVA,-150);
    mob:addMod(MOD_DEF,-200);
    mob:addMod(MOD_ATT,-100);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
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
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_SCORPION_QUEEN) == false) then
        killer:addKeyItem(ATMA_OF_THE_SCORPION_QUEEN);
        killer:messageSpecial(6385, ATMA_OF_THE_SCORPION_QUEEN);
    end
end;

