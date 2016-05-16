-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Ouzelum
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Altepa/TextIDs");
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

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(RESPLENDENT_ROC_QUILL) == false) then
        player:addKeyItem(RESPLENDENT_ROC_QUILL);
        player:messageSpecial(KEYITEM_OBTAINED, RESPLENDENT_ROC_QUILL);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_SCARLET_WING) == false) then
        player:addKeyItem(ATMA_OF_THE_SCARLET_WING);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SCARLET_WING);
    end
end;

