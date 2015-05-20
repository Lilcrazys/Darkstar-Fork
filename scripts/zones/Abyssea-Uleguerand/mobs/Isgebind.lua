-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Isgebind
-----------------------------------

require("scripts/zones/Abyssea-Uleguerand/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- OnMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,110);
    mob:setMod(MOD_MACC,1800);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:addMod(MOD_DEF,120);
    mob:addMod(MOD_MDEF,70);
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

    if (mob:hasStatusEffect(EFFECT_BLOOD_WEAPON) == false and mob:actionQueueEmpty() == true) then
        local changeTime = mob:getLocalVar("changeTime");
        local twohourTime = mob:getLocalVar("twohourTime");

        if (twohourTime == 0) then
                twohourTime = math.random(8, 14);
                mob:setLocalVar("twohourTime", twohourTime);
        end

        if (mob:AnimationSub() == 2 and mob:getBattleTime()/15 > twohourTime) then
                mob:useMobAbility(439);
                mob:setLocalVar("twohourTime", (mob:getBattleTime()/15)+20);
        elseif(mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > 60) then
                mob:AnimationSub(1);
                mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
                mob:SetMobSkillAttack(true);
                 --and record the time this phase was started
                mob:setLocalVar("changeTime", mob:getBattleTime());
        -- subanimation 1 is flight, so check if he should land
        elseif(mob:AnimationSub() == 1 and
                mob:getBattleTime() - changeTime > 30) then
                mob:useMobAbility(1036);
                mob:setLocalVar("changeTime", mob:getBattleTime());
        -- subanimation 2 is grounded mode, so check if he should take off
        elseif(mob:AnimationSub() == 2 and
                mob:getBattleTime() - changeTime > 60) then
                mob:AnimationSub(1);
                mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
                mob:SetMobSkillAttack(true);
                mob:setLocalVar("changeTime", mob:getBattleTime());
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(IVORY_ABYSSITE_OF_FURTHERANCE) == false) then
        killer:addKeyItem(IVORY_ABYSSITE_OF_FURTHERANCE);
        killer:messageSpecial(6385, IVORY_ABYSSITE_OF_FURTHERANCE);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_FROZEN_FETTERS) == false) then
        killer:addKeyItem(ATMA_OF_THE_FROZEN_FETTERS);
        killer:messageSpecial(6385, ATMA_OF_THE_FROZEN_FETTERS);
    end
end;