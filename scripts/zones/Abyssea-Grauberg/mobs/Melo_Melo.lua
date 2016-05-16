-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Melo_Melo
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/zones/Abyssea-Grauberg/TextIDs");
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
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(VARIEGATED_URAGNITE_SHELL) == false) then
        player:addKeyItem(VARIEGATED_URAGNITE_SHELL);
        player:messageSpecial(6385, VARIEGATED_URAGNITE_SHELL);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_AQUATIC_ARDOR) == false) then
        player:addKeyItem(ATMA_OF_AQUATIC_ARDOR);
        player:messageSpecial(6385, ATMA_OF_AQUATIC_ARDOR);
    end
end;
