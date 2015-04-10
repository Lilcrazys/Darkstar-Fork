-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
-- MOB:  Jailer of Temperance
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
-- onMobFight Action
-- Randomly change forms
-----------------------------------

function onMobFight(mob)

    local randomTime = math.random(15,45);
    local changeTime = mob:getLocalVar("changeTime");

    if(mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > randomTime) then
        mob:AnimationSub(math.random(2,3));
        mob:setLocalVar("changeTime", mob:getBattleTime());
    elseif(mob:AnimationSub() == 1 and mob:getBattleTime() - changeTime > randomTime) then
        mob:AnimationSub(math.random(2,3));
        mob:setLocalVar("changeTime", mob:getBattleTime());
    elseif(mob:AnimationSub() == 2 and mob:getBattleTime() - changeTime > randomTime) then
        local aniChance = math.random(0,1);
        if(aniChance == 0) then
            mob:AnimationSub(0);
            mob:setLocalVar("changeTime", mob:getBattleTime());
        else
            mob:AnimationSub(3)
            mob:setLocalVar("changeTime", mob:getBattleTime());
        end
    elseif(mob:AnimationSub() == 3 and mob:getBattleTime() - changeTime > randomTime) then
        mob:AnimationSub(math.random(0,2));
        mob:setLocalVar("changeTime", mob:getBattleTime());
    end

    if(mob:AnimationSub() == 0 then -- Only Blunt
        mob:setMod(MOD_SLASHRES, 1000);
        mob:setMod(MOD_PIERCERES, 1000);
        mob:setMod(MOD_IMPACTRES, 0);
        mob:setMod(MOD_HTHRES, 0);
    elseif(mob:AnimationSub() == 1 then -- Only Blunt
        mob:setMod(MOD_SLASHRES, 1000);
        mob:setMod(MOD_PIERCERES, 1000);
        mob:setMod(MOD_IMPACTRES, 0);
        mob:setMod(MOD_HTHRES, 0);
    elseif(mob:AnimationSub() == 2 then -- Only Piercing
        mob:setMod(MOD_SLASHRES, 1000);
        mob:setMod(MOD_PIERCERES, 0);
        mob:setMod(MOD_IMPACTRES, 1000);
        mob:setMod(MOD_HTHRES, 1000);
    elseif(mob:AnimationSub() == 3 then -- Only Slashing
        mob:setMod(MOD_SLASHRES, 0);
        mob:setMod(MOD_PIERCERES, 1000);
        mob:setMod(MOD_IMPACTRES, 1000);
        mob:setMod(MOD_HTHRES, 1000);
    end
end;

function onMobFight(mob)

    local Temp_2hr_Used = 0;
    if (mob:getLocalVar("Temp_2hr") ~= nil) then
        Temp_2hr_Used = mob:getLocalVar("Temp_2hr");
    end

    if (mob:getHPP() <= 10) then
        if (Temp_2hr_Used == 2) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Temp_2hr", 3);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
        end
    elseif (mob:getHPP() <= 30) then
        if (Temp_2hr_Used == 1) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Temp_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Temp_2hr_Used == 0) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Temp_2hr", 1);
        end
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