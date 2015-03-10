-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Ouzelum
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
    mob:addMod(MOD_MATT,15);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-150);
    mob:addMod(MOD_DEF,-75);
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

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(RESPLENDENT_ROC_QUILL) == false) then
        killer:addKeyItem(RESPLENDENT_ROC_QUILL);
        killer:messageSpecial(6385, RESPLENDENT_ROC_QUILL);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_SCARLET_WING) == false) then
        killer:addKeyItem(ATMA_OF_THE_SCARLET_WING);
        killer:messageSpecial(6385, ATMA_OF_THE_SCARLET_WING);
    end
end;

