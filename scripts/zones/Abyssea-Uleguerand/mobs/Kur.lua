-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Kur
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

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(BEGRIMED_DRAGON_HIDE) == false) then
        ally:addKeyItem(BEGRIMED_DRAGON_HIDE);
        ally:messageSpecial(6385, BEGRIMED_DRAGON_HIDE);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_BLIGHTED_BREATH) == false) then
        ally:addKeyItem(ATMA_OF_BLIGHTED_BREATH);
        ally:messageSpecial(6385, ATMA_OF_BLIGHTED_BREATH);
    end
end;