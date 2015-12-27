-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Mictlantecuhtli
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(VIRIDIAN_ABYSSITE_OF_MERIT) == false) then
        ally:addKeyItem(VIRIDIAN_ABYSSITE_OF_MERIT);
        ally:messageSpecial(6385, VIRIDIAN_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_BALEFUL_BONES) == false) then
        ally:addKeyItem(ATMA_OF_BALEFUL_BONES);
        ally:messageSpecial(6385, ATMA_OF_BALEFUL_BONES);
    end
end;
