-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Assailer_Chariot
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

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
    local ATMA_CHANCE = 30;
    local SPELL_ID = 713;
    local CHANCE = 25;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(WARPED_CHARIOT_PLATE) == false) then
        killer:addKeyItem(WARPED_CHARIOT_PLATE);
        killer:messageSpecial(6385, WARPED_CHARIOT_PLATE);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(INDIGO_ABYSSITE_OF_SOJOURN) == false) then
        killer:addKeyItem(INDIGO_ABYSSITE_OF_SOJOURN);
        killer:messageSpecial(6385, INDIGO_ABYSSITE_OF_SOJOURN);
    end

    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        killer:addSpell(SPELL_ID);
    end
end;
