-----------------------------------
-- Area: Al'Taieu
--  NM:  Jailer of Prudence
-- IDs: 16912846, 16912847
-- AnimationSubs: 0 - Normal, 3 - Mouth Open
-- Wiki: http://ffxiclopedia.wikia.com/wiki/Jailer_of_Prudence
-----------------------------------
require("scripts/zones/AlTaieu/MobIDs");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    --[[
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
    ]]
    -- Only 1 JoP will drop loot. Mod will be removed at death.
    mob:setMobMod(MOBMOD_NO_DROPS, 1);

    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 30);
    mob:setMod(MOD_TRIPLE_ATTACK, 35);

    -- addMod
    mob:addMod(MOD_MDEF,100);
    mob:addMod(MOD_DEF,120);
    mob:addMod(MOD_ATT,120);
    mob:addMod(MOD_ACC,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:AnimationSub(0); -- Mouth closed
    mob:addStatusEffectEx(EFFECT_FLEE,0,100,0,60);
    --[[
    mob:setMod(MOD_TRIPLE_ATTACK, 20);
    mob:setMod(MOD_REGEN, 10);
    ]]

    mob:addMod(MOD_BINDRES, 30);
    mob:addMod(MOD_SLOWRES, 10);
    mob:addMod(MOD_BLINDRES, 10);
    mob:addMod(MOD_SLEEPRES, 30);
    mob:addMod(MOD_PETRIFYRES, 10);
    mob:addMod(MOD_GRAVITYRES, 10);
    mob:addMod(MOD_LULLABYRES, 30);
end;

-----------------------------------
-- onMobDisEngage Action
-----------------------------------

function onMobDisEngage(mob, target)
    mob:setLocalVar("RAGED", 0);
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local BattleTime = mob:getBattleTime();
    local JoP_2hr_Used =  mob:getLocalVar("JoP_2hr");

    if (mob:getHPP() <= 10) then
        if (JoP_2hr_Used == 3) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 4);
        end
    elseif (mob:getHPP() <= 25) then
        if (JoP_2hr_Used == 2) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (JoP_2hr_Used == 1) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (JoP_2hr_Used == 0) then
            mob:useMobAbility(437);
            mob:setLocalVar("JoP_2hr", 1);
        end
    end

    if (BattleTime > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onMobskill -- When this functionlity is added, this should work.
-----------------------------------

-- function onUseAbility(mob,target,ability)

    -- if (ability:getID() == 437) then -- Perfect Dodge
        -- mob:addStatusEffectEx(EFFECT_FLEE,0,100,0,30);
    -- else
        -- if (mob:getID() == JAILER_OF_PRUDENCE_1 and GetMobAction(JAILER_OF_PRUDENCE_2) > 0 and GetMobAction(JAILER_OF_PRUDENCE_2) ~= ACTION_SLEEP and GetMobAction(JAILER_OF_PRUDENCE_2) ~= ACTION_STUN) then
            -- if (GetMobByID(PrudenceTwo):checkDistance(mob) <= 10) then
                -- GetMobByID(PrudenceTwo):useMobAbility(ability:getID());
            -- end
        -- elseif (mob:getID() == JAILER_OF_PRUDENCE_2 and GetMobAction(JAILER_OF_PRUDENCE_1) > 0 and GetMobAction(JAILER_OF_PRUDENCE_1) ~= ACTION_SLEEP and GetMobAction(PrudenJAILER_OF_PRUDENCE_1eOne) ~= ACTION_STUN) then
            -- if (GetMobByID(PrudenceOne):checkDistance(mob) <= 10) then
                -- GetMobByID(PrudenceOne):useMobAbility(ability:getID());
            -- end
        -- end
    -- end
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (isKiller == true) then
        local firstPrudence     = GetMobByID(JAILER_OF_PRUDENCE_1);
        local secondPrudence    = GetMobByID(JAILER_OF_PRUDENCE_2);
        if (mob:getID() == JAILER_OF_PRUDENCE_1) then
            secondPrudence:setMobMod(MOBMOD_NO_DROPS, 0);
            secondPrudence:AnimationSub(3); -- Mouth Open
            secondPrudence:addMod(MOD_ATTP, 100);
            secondPrudence:delMod(MOD_DEFP, -50);
        else
            firstPrudence:setMobMod(MOBMOD_NO_DROPS, 0);
            firstPrudence:AnimationSub(3); -- Mouth Open
            firstPrudence:addMod(MOD_ATTP, 100);
            firstPrudence:delMod(MOD_DEFP, -50);
        end
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    --[[
    local firstPrudence     = GetMobByID(JAILER_OF_PRUDENCE_1);
    local secondPrudence    = GetMobByID(JAILER_OF_PRUDENCE_2);
    if (mob:getID() == JAILER_OF_PRUDENCE_1) then
        secondPrudence:setMobMod(MOBMOD_NO_DROPS, 0);
        secondPrudence:AnimationSub(3); -- Mouth Open
        secondPrudence:addMod(MOD_ATTP, 100);
        secondPrudence:delMod(MOD_DEFP, -50);
    else
        firstPrudence:setMobMod(MOBMOD_NO_DROPS, 0);
        firstPrudence:AnimationSub(3); -- Mouth Open
        firstPrudence:addMod(MOD_ATTP, 100);
        firstPrudence:delMod(MOD_DEFP, -50);
    end;
    ]]
end;
