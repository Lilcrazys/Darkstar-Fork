-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Melo_Melo
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
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(VARIEGATED_URAGNITE_SHELL) == false) then
        killer:addKeyItem(VARIEGATED_URAGNITE_SHELL);
        killer:messageSpecial(6385, VARIEGATED_URAGNITE_SHELL);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_AQUATIC_ARDOR) == false) then
        killer:addKeyItem(ATMA_OF_AQUATIC_ARDOR);
        killer:messageSpecial(6385, ATMA_OF_AQUATIC_ARDOR);
    end
end;
