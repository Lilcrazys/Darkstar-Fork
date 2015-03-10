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
    mob:addMod(MOD_ATT,90);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGEN,90);
    mob:addMod(MOD_REGAIN,20);
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

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(OVERGROWN_MANDRAGORA_FLOWER) == false) then
        killer:addKeyItem(OVERGROWN_MANDRAGORA_FLOWER);
        killer:messageSpecial(6385, OVERGROWN_MANDRAGORA_FLOWER);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_HARVESTER) == false) then
        killer:addKeyItem(ATMA_OF_THE_HARVESTER);
        killer:messageSpecial(6385, ATMA_OF_THE_HARVESTER);
    end
end;
