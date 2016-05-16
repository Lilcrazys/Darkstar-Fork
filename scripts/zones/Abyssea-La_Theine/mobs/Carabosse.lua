-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Carabosse
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
require("scripts/zones/Abyssea-La_Theine/TextIDs");
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
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,1700);

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

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(GLITTERING_PIXIE_CHOKER) == false) then
        player:addKeyItem(GLITTERING_PIXIE_CHOKER);
        player:messageSpecial(KEYITEM_OBTAINED, GLITTERING_PIXIE_CHOKER);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_ALLURE) == false) then
        player:addKeyItem(ATMA_OF_ALLURE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_ALLURE);
    end
end;