-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
--  NM:  Jailer of Temperance
-- Animation Sub 0 Pot Form
-- Animation Sub 1 Pot Form (reverse eye position)
-- Animation Sub 2 Bar Form
-- Animation Sub 3 Ring Form
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- OnMobSpawn Action
-- Set AnimationSub to 0, put it in pot form
-----------------------------------

function onMobSpawn(mob)
    mob:AnimationSub(0);
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 15);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);

    -- addMod
    mob:addMod(MOD_MDEF,250);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,75);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage (mob)
    mob:AnimationSub(0)
end;

-----------------------------------
-- onMobFight Action
-- Randomly change forms
-----------------------------------

function onMobFight(mob)
    local DID_2HR = mob:getLocalVar("JoT_2hr");
    local randomTime = math.random(15,45);
    local changeTime = mob:getLocalVar("changeTime");
    local RND = math.random(1,2);

    if (mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > randomTime) then
        if (RND == 1) then
            mob:AnimationSub(2)
        else
            mob:AnimationSub(3)
        end
        mob:setLocalVar("changeTime", mob:getBattleTime());
    elseif (mob:AnimationSub() == 2 and mob:getBattleTime() - changeTime > randomTime) then
        if (RND == 1) then
            mob:AnimationSub(0)
        else
            mob:AnimationSub(3)
        end
        mob:setLocalVar("changeTime", mob:getBattleTime());
    elseif (mob:AnimationSub() == 3 and mob:getBattleTime() - changeTime > randomTime) then
        if (RND == 1) then
            mob:AnimationSub(0)
        else
            mob:AnimationSub(2)
        end
        mob:setLocalVar("changeTime", mob:getBattleTime());
    elseif (mob:getHPP() <= 10 and DID_2HR == 2) then
        mob:useMobAbility(474); -- SAM
        mob:setLocalVar("JoT_2hr", 3);
        mob:addStatusEffect(EFFECT_HASTE,200,0,200);
    elseif (mob:getHPP() <= 30 and DID_2HR == 1) then
        mob:useMobAbility(474); -- SAM
        mob:setLocalVar("JoT_2hr", 2);
    elseif (mob:getHPP() <= 70 and DID_2HR == 0) then
        mob:useMobAbility(474); -- SAM
        mob:setLocalVar("JoT_2hr", 1);
    end

    if (mob:AnimationSub() == 0) then -- Only Blunt
        mob:setMod(MOD_SLASHRES, 1000);
        mob:setMod(MOD_PIERCERES, 1000);
        mob:setMod(MOD_IMPACTRES, 0);
        mob:setMod(MOD_HTHRES, 0);
    -- elseif (mob:AnimationSub() == 1) then -- Unused!
    elseif (mob:AnimationSub() == 2) then -- Only Piercing
        mob:setMod(MOD_SLASHRES, 1000);
        mob:setMod(MOD_PIERCERES, 0);
        mob:setMod(MOD_IMPACTRES, 1000);
        mob:setMod(MOD_HTHRES, 1000);
    elseif (mob:AnimationSub() == 3) then -- Only Slashing
        mob:setMod(MOD_SLASHRES, 0);
        mob:setMod(MOD_PIERCERES, 1000);
        mob:setMod(MOD_IMPACTRES, 1000);
        mob:setMod(MOD_HTHRES, 1000);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;