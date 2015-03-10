-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Briareus
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_MEVA,100);
    mob:addMod(MOD_EVA,-77);
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

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(BLOOD_SMEARED_GIGAS_HELM) == false) then
        killer:addKeyItem(BLOOD_SMEARED_GIGAS_HELM);
        killer:messageSpecial(6385, BLOOD_SMEARED_GIGAS_HELM);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_STOUT_ARM) == false) then
        killer:addKeyItem(ATMA_OF_THE_STOUT_ARM);
        killer:messageSpecial(6385, ATMA_OF_THE_STOUT_ARM);
    end
end;