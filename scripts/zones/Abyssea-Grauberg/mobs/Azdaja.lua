-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Azdaja
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_MACC,800);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);

    -- addMod
    mob:addMod(MOD_DMGRANGE, -50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,100);
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

    -- Gains a large attack boost when health is under 25% which cannot be Dispelled.
    if(mob:getHP() < ((mob:getMaxHP() / 10) * 2.5)) then
        if(mob:hasStatusEffect(EFFECT_ATTACK_BOOST) == false) then
            mob:addStatusEffect(EFFECT_ATTACK_BOOST,75,0,0);
            mob:getStatusEffect(EFFECT_ATTACK_BOOST):setFlag(32);
        end
    end
    if (mob:hasStatusEffect(EFFECT_MIGHTY_STRIKES) == false and mob:actionQueueEmpty() == true) then
        local changeTime = mob:getLocalVar("changeTime")
        local twohourTime = mob:getLocalVar("twohourTime")
        local changeHP = mob:getLocalVar("changeHP")

        if (twohourTime == 0) then
            twohourTime = math.random(8, 14);
            mob:setLocalVar("twohourTime", twohourTime);
        end

        if (mob:AnimationSub() == 2 and mob:getBattleTime()/15 > twohourTime) then
            mob:useMobAbility(432);
            mob:setLocalVar("twohourTime", math.random((mob:getBattleTime()/15)+4, (mob:getBattleTime()/15)+8));
        elseif(mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > 60) then
            mob:AnimationSub(1);
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            mob:SetMobSkillAttack(true);
            --and record the time and HP this phase was started
            mob:setLocalVar("changeTime", mob:getBattleTime());
            mob:setLocalVar("changeHP", mob:getHP()/1000);
        -- subanimation 1 is flight, so check if she should land
        elseif(mob:AnimationSub() == 1 and (mob:getHP()/1000 <= changeHP - 10 or
                mob:getBattleTime() - changeTime > 120)) then
            mob:useMobAbility(1026);
            mob:setLocalVar("changeTime", mob:getBattleTime());
            mob:setLocalVar("changeHP", mob:getHP()/1000);
        -- subanimation 2 is grounded mode, so check if she should take off
        elseif(mob:AnimationSub() == 2 and (mob:getHP()/1000 <= changeHP - 10 or
                mob:getBattleTime() - changeTime > 120)) then
            mob:AnimationSub(1);
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            mob:SetMobSkillAttack(true);
            mob:setLocalVar("changeTime", mob:getBattleTime());
            mob:setLocalVar("changeHP", mob:getHP()/1000);
        end
    end
end;
-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 5) or (target:hasStatusEffect(EFFECT_DOOM) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_DOOM,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_DOOM;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_WINGED_GLOOM) == false) then
        killer:addKeyItem(ATMA_OF_THE_WINGED_GLOOM);
        killer:messageSpecial(6385, ATMA_OF_THE_WINGED_GLOOM);
    end
end;

