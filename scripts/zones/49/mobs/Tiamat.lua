-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Tiamat
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_DMGMAGIC, -50);
    mob:addMod(MOD_DMGRANGE, -50);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1925);
    mob:setMod(MOD_MATT,130);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_FIRE_AFFINITY,30);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,50);
    mob:setMod(MOD_PARALYZE,30);
end;
-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
    local Tia_2hr_Used = 0;
    if (mob:getLocalVar("Tia_2hr") ~= nil) then
           Tia_2hr_Used = mob:getLocalVar("Tia_2hr");
    end

    if (mob:getHPP() <= 20) then
        if (Tia_2hr_Used == 3) then
             mob:useMobAbility(432); -- MS
             mob:setLocalVar("Tia_2hr", 4);
             mob:addStatusEffect(EFFECT_HASTE,200,0,200);
             mob:addMod(MOD_DOUBLE_ATTACK, 15);
             mob:addMod(MOD_REGAIN, 10);
        end
    elseif (mob:getHPP() <= 40) then
        if (Tia_2hr_Used == 2) then
             mob:useMobAbility(432); -- MS
             mob:setLocalVar("Tia_2hr", 3);
        end
    elseif (mob:getHPP() <= 60) then
        if (Tia_2hr_Used == 1) then
             mob:useMobAbility(432); -- MS
             mob:setLocalVar("Tia_2hr", 2);
        end
    elseif (mob:getHPP() <= 80) then
        if (Tia_2hr_Used == 0) then
             mob:useMobAbility(432); -- MS
             mob:setLocalVar("Tia_2hr", 1);
        end
    end
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
    -- Wiki says nothing about proc rate, going with 80% for now.
    -- I remember it going off every hit when I fought him.
    local chance = 35;
    local LV_diff = target:getMainLvl() - mob:getMainLvl();

    if (target:getMainLvl() > mob:getMainLvl()) then
        chance = chance - 5 * LV_diff;
        chance = utils.clamp(chance, 5, 95);
    end

    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
         local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);

         if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20) / 2;
         end

         local dmg = INT_diff+LV_diff+damage/2;
         local params = {};
         params.bonusmab = 0;
         params.includemab = false;
         dmg = addBonusesAbility(mob, ELE_FIRE, target, dmg, params);
         dmg = dmg * applyResistanceAddEffect(mob,target,ELE_FIRE,0);
         dmg = adjustForTarget(target,dmg,ELE_FIRE);

         if (dmg < 0) then
            dmg = 10
         end

         dmg = finalMagicNonSpellAdjustments(mob,target,ELE_FIRE,dmg);

         return SUBEFFECT_FIRE_DAMAGE,163,dmg;
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(TIAMAT_TROUNCER);
    mob:setRespawnTime(math.random((75600),(86400)));   -- 21 to 24 hours
end;