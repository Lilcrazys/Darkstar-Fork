-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Deelgeed
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/textIDs");
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
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
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

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(VACANT_BUGARD_EYE) == false) then
        killer:addKeyItem(VACANT_BUGARD_EYE);
        killer:messageSpecial(6385, VACANT_BUGARD_EYE);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_HORNED_BEAST) == false) then
        killer:addKeyItem(ATMA_OF_THE_HORNED_BEAST);
        killer:messageSpecial(6385, ATMA_OF_THE_HORNED_BEAST);
    end
end;

