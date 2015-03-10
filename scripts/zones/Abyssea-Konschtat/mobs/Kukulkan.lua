-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Kukulkan
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
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
    mob:setMod(MOD_REGAIN,30);

    -- addMod
    mob:addMod(MOD_MATT,100);
    mob:addMod(MOD_MACC,200);
    mob:addMod(MOD_EVA,-50);
    mob:addMod(MOD_DEF,50);
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
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(VENOMOUS_PEISTE_CLAW) == false) then
        killer:addKeyItem(VENOMOUS_PEISTE_CLAW);
        killer:messageSpecial(6385, VENOMOUS_PEISTE_CLAW);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_NOXIOUS_FANG) == false) then
        killer:addKeyItem(ATMA_OF_THE_NOXIOUS_FANG);
        killer:messageSpecial(6385, ATMA_OF_THE_NOXIOUS_FANG);
    end
end;