-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Hazhdiha
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
    mob:addMod(MOD_MATT,175);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-150);
    mob:addMod(MOD_STR,50);
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(BLOODIED_DRAGON_EAR) == false) then
        killer:addKeyItem(BLOODIED_DRAGON_EAR);
        killer:messageSpecial(6385, BLOODIED_DRAGON_EAR);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_CRIMSON_SCALE) == false) then
        killer:addKeyItem(ATMA_OF_THE_CRIMSON_SCALE);
        killer:messageSpecial(6385, ATMA_OF_THE_CRIMSON_SCALE);
    end
end;