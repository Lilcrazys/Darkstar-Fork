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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(TURBID_SLIME_OIL) == false) then
        ally:addKeyItem(TURBID_SLIME_OIL);
        ally:messageSpecial(6385, TURBID_SLIME_OIL);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_VICISSITUDE) == false) then
        ally:addKeyItem(ATMA_OF_VICISSITUDE);
        ally:messageSpecial(6385, ATMA_OF_VICISSITUDE);
    end
end;