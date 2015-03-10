-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Cirein-croin
-----------------------------------
require("scripts/zones/Abyssea-Misareaux/textIDs");
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
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------
function onMobEngaged(mob,target)
    WeaknessTriggerSet(mob,target,ws,spell);
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
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_DEEP_DEVOURER) == false) then
        killer:addKeyItem(ATMA_OF_THE_DEEP_DEVOURER);
        killer:messageSpecial(6385, ATMA_OF_THE_DEEP_DEVOURER);
    end
end;
