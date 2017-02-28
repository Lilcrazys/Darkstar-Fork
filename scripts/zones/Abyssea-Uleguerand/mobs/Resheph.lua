-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Resheph
-----------------------------------
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 60);
    mob:setMod(MOD_ZANSHIN, 25);
    mob:setMod(MOD_COUNTER, 15);

    -- addMod
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_ATT, -50);
    mob:addMod(MOD_EVA, -100);
    mob:addMod(MOD_ACC, 100);
    mob:addMod(MOD_DOUBLE_ATTACK, 10)
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
    local has2hr = mob:hasStatusEffect(EFFECT_MEIKYO_SHISUI);
    local do2hr = mob:getLocalVar("do2hr");
    local delay = mob:getLocalVar("delay");

    if (mob:getTP() > 100 and do2hr == 0 and has2hr == false) then
        mob:setLocalVar("do2hr", 1);
    elseif (delay < 2 and do2hr == 1 and has2hr == false) then
        mob:setLocalVar("delay", delay+1);
    elseif (delay >= 2 and do2hr == 1 and has2hr == false) then
        mob:useMobAbility(730); -- Meikyo_Shisui
        mob:setLocalVar("do2hr", 0);
        mob:setLocalVar("delay", 0);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(RESHEPH_ERADICATOR);
    local ATMA = 15;
    if (math.random(0,99) < ATMA and player:hasKeyItem(ATMA_OF_THE_PLAGUEBRINGER) == false) then
        player:addKeyItem(ATMA_OF_THE_PLAGUEBRINGER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_PLAGUEBRINGER);
    end

end;
