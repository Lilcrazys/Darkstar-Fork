-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Dragua
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
    -- setMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMod(MOD_REGAIN,20);

    -- addMod
    mob:addMod(MOD_MATT,475);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-100);
    mob:addMod(MOD_DMGMAGIC, -50);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 10;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(IVORY_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(IVORY_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, IVORY_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_EARTH_WYRM) == false) then
        killer:addKeyItem(ATMA_OF_THE_EARTH_WYRM);
        killer:messageSpecial(6385, ATMA_OF_THE_EARTH_WYRM);
    end
end;