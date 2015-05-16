-----------------------------------
-- Area: Uleguaerand Range
-- NPC:  Jormungand
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_DMGMAGIC, 50);
    mob:addMod(MOD_DMGRANGE, 50);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_MATT,120);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_ICE_AFFINITY,3);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:addMod(MOD_DEF,-100);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local Jorm_2hr_Used = mob:getLocalVar("Jorm_2hr");
    local Wings = mob:getLocalVar("Wings");

    if (mob:getBattleTime() - mob:getLocalVar("Wings") > 180) then
        if (mob:AnimationSub() == 1) then
             mob:AnimationSub(0); -- ground
             mob:SetMobSkillAttack(false);
             mob:useMobAbility(1026);
             mob:setLocalVar("Wings", mob:getBattleTime());
         elseif (mob:AnimationSub() == 0) then
             mob:AnimationSub(1); -- fly
             mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
             mob:SetMobSkillAttack(true);
             mob:setLocalVar("Wings", mob:getBattleTime());
         end
    end

    if (mob:getHPP() <= 20) then
        if (Jorm_2hr_Used == 3) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("Jorm_2hr", 4);
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);
            mob:addMod(MOD_DOUBLE_ATTACK, 15);
            mob:addMod(MOD_REGAIN, 10);
        end
    elseif (mob:getHPP() <= 40) then
        if (Jorm_2hr_Used == 2) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("Jorm_2hr", 3);
        end
    elseif (mob:getHPP() <= 60) then
        if (Jorm_2hr_Used == 1) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("Jorm_2hr", 2);
        end
    elseif (mob:getHPP() <= 80) then
        if (Jorm_2hr_Used == 0) then
            mob:useMobAbility(439); -- BW
            mob:setLocalVar("Jorm_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    -- Wiki says nothing about proc rate, going with 80% for now.
    -- I remember it going off every hit when I fought him.
    local chance = 33;
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
        dmg = addBonusesAbility(mob, ELE_ICE, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(mob,target,ELE_ICE,0);
        dmg = adjustForTarget(target,dmg,ELE_ICE);

        if (dmg < 0) then
            dmg = 10
        end

        dmg = finalMagicNonSpellAdjustments(mob,target,ELE_ICE,dmg);

        return SUBEFFECT_ICE_DAMAGE,163,dmg;
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(WORLD_SERPENT_SLAYER);
    mob:setRespawnTime(math.random((75600),(86400)));   -- 3 to 5 days
end;