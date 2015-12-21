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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 20;
    local SPELL_ID = 713;
    local CHANCE = 25;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(RUSTED_CHARIOT_GEAR) == false) then
        ally:addKeyItem(RUSTED_CHARIOT_GEAR);
        ally:messageSpecial(6385, RUSTED_CHARIOT_GEAR);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(EMERALD_ABYSSITE_OF_FORTUNE) == false) then
        ally:addKeyItem(EMERALD_ABYSSITE_OF_FORTUNE);
        ally:messageSpecial(6385, EMERALD_ABYSSITE_OF_FORTUNE);
    end

    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(SPELL_ID) == false) then
        ally:addSpell(SPELL_ID);
    end
end;
