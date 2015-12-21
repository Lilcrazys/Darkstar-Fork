-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Impervious_Chariot
-----------------------------------

require("scripts/zones/Abyssea-Uleguerand/textIDs");
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
    local ATMA_CHANCE = 30;
    local SPELL_ID = 713;
    local CHANCE = 25;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(DENTED_CHARIOT_SHIELD) == false) then
        ally:addKeyItem(DENTED_CHARIOT_SHIELD);
        ally:messageSpecial(6385, DENTED_CHARIOT_SHIELD);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(VERMILLION_ABYSSITE_OF_KISMET) == false) then
        ally:addKeyItem(VERMILLION_ABYSSITE_OF_KISMET);
        ally:messageSpecial(6385, VERMILLION_ABYSSITE_OF_KISMET);
    end

    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(SPELL_ID) == false) then
        ally:addSpell(SPELL_ID);
    end
end;