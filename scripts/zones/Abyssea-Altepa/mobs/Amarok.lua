-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Amarok
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
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,175);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-200);
    mob:addMod(MOD_ACC,250);
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

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(STEAMING_CERBERUS_TONGUE) == false) then
        killer:addKeyItem(STEAMING_CERBERUS_TONGUE);
        killer:messageSpecial(6385, STEAMING_CERBERUS_TONGUE);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_LONE_WOLF) == false) then
        killer:addKeyItem(ATMA_OF_THE_LONE_WOLF);
        killer:messageSpecial(6385, ATMA_OF_THE_LONE_WOLF);
    end
end;

