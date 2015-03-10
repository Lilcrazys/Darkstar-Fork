-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Caoineag
-----------------------------------
require("scripts/zones/Abyssea-Tahrongi/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,275);
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(CHIPPED_SANDWORM_TOOTH) == false) then
        killer:addKeyItem(CHIPPED_SANDWORM_TOOTH);
        killer:messageSpecial(6385, CHIPPED_SANDWORM_TOOTH);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_DUNES) == false) then
        killer:addKeyItem(ATMA_OF_DUNES);
        killer:messageSpecial(6385, ATMA_OF_DUNES);
    end
end;
