-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Cuijatender
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_A_THOUSAND_NEEDLES) == false) then
        ally:addKeyItem(ATMA_OF_A_THOUSAND_NEEDLES);
        ally:messageSpecial(6385, ATMA_OF_A_THOUSAND_NEEDLES);
    end
end;

