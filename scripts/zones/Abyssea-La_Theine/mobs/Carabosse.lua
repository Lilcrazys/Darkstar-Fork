-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Carabosse
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
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
    mob:setMod(MOD_MACC,700);

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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(GLITTERING_PIXIE_CHOKER) == false) then
        killer:addKeyItem(GLITTERING_PIXIE_CHOKER);
        killer:messageSpecial(6385, GLITTERING_PIXIE_CHOKER);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_ALLURE) == false) then
        killer:addKeyItem(ATMA_OF_ALLURE);
        killer:messageSpecial(6385, ATMA_OF_ALLURE);
    end
end;