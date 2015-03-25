-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Fistule
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
    mob:setMod(MOD_REGAIN,25);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK,25);
    mob:addMod(MOD_MATT,100);
    mob:addMod(MOD_MACC,200);
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
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(TURBID_SLIME_OIL) == false) then
        killer:addKeyItem(TURBID_SLIME_OIL);
        killer:messageSpecial(6385, TURBID_SLIME_OIL);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_VICISSITUDE) == false) then
        killer:addKeyItem(ATMA_OF_VICISSITUDE);
        killer:messageSpecial(6385, ATMA_OF_VICISSITUDE);
    end
end;