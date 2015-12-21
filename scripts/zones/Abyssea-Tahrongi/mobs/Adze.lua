-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Mictlantecuhtli
-----------------------------------
require("scripts/zones/Abyssea-Tahrongi/textIDs");
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
    mob:addMod(MOD_MATT,90);
    mob:addMod(MOD_MACC,300);
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
    local CHANCE = 17;
    local KI = 60
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_CALAMITY) == false) then
        ally:addKeyItem(ATMA_OF_CALAMITY);
        ally:messageSpecial(6385, ATMA_OF_CALAMITY);
    end

    if (math.random(0,99) < KI  and ally:hasKeyItem(STICKY_GNAT_WING) == false) then
        ally:addKeyItem(STICKY_GNAT_WING);
        ally:messageSpecial(6385, STICKY_GNAT_WING);
    end
end;

