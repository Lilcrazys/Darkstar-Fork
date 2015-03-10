-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Long-Barreled_Chariot
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
    local ATMA_CHANCE = 20;
    local SPELL_ID = 713;
    local CHANCE = 25;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(RUSTED_CHARIOT_GEAR) == false) then
        killer:addKeyItem(RUSTED_CHARIOT_GEAR);
        killer:messageSpecial(6385, RUSTED_CHARIOT_GEAR);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(EMERALD_ABYSSITE_OF_FORTUNE) == false) then
        killer:addKeyItem(EMERALD_ABYSSITE_OF_FORTUNE);
        killer:messageSpecial(6385, EMERALD_ABYSSITE_OF_FORTUNE);
    end

    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        killer:addSpell(SPELL_ID);
    end
end;
