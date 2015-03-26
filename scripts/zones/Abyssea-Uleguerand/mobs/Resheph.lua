-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Resheph
-----------------------------------
require("scripts/zones/Abyssea-Uleguerand/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 60);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_EVA, -150);
    mob:addMod(MOD_ACC, 150);
    mob:setMod(MOD_ZANSHIN, 30);
    mob:setMod(MOD_COUNTER, 15);
    mob:addMod(MOD_DOUBLE_ATTACK, 10)
    mob:addMod(MOD_DMGMAGIC, -50);
    mob:addMod(MOD_DMGRANGE, -50);
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
    if (mob:getTP() > 100) and
       (mob:hasStatusEffect(EFFECT_MEIKYO_SHISUI) == false) then
        mob:useMobAbility(474);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 15;
    local LUNAR = 25;

    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_PLAGUEBRINGER) == false) then
        killer:addKeyItem(ATMA_OF_THE_PLAGUEBRINGER);
        killer:messageSpecial(6385, ATMA_OF_THE_PLAGUEBRINGER);
    end

    if (math.random(0,99) < LUNAR  and killer:hasKeyItem(LUNAR_ABYSSITE2) == false) then
        killer:addKeyItem(LUNAR_ABYSSITE2);
        killer:messageSpecial(6385, LUNAR_ABYSSITE2);
    end
end;

