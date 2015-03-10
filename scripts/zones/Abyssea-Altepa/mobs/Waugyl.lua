-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Waugyl
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

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(WAUGYLS_CLAW) == false) then
        killer:addKeyItem(WAUGYLS_CLAW);
        killer:messageSpecial(6385, WAUGYLS_CLAW);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(EMERALD_ABYSSITE_OF_SOJOURN) == false) then
        killer:addKeyItem(EMERALD_ABYSSITE_OF_SOJOURN);
        killer:messageSpecial(6385, EMERALD_ABYSSITE_OF_SOJOURN);
    end
end;

