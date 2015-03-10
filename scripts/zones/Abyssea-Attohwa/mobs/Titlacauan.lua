-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Titlacauan
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_MATT,15);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_MEVA,50);
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_UNDYING) == false) then
        killer:addKeyItem(ATMA_OF_THE_UNDYING);
        killer:messageSpecial(6385, ATMA_OF_THE_UNDYING);
    end
end;

