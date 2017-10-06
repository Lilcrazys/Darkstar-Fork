-----------------------------------
-- Area: Mount Zhayolm
--  MOB: Sarameya
--  ZNM: Sarameya
-- !pos 322 -14 -581 61
-- Spawned with Buffalo Corpse: @additem 2583
-- Wiki: http://ffxiclopedia.wikia.com/wiki/Sarameya
-- TODO: PostAIRewrite: Code the Howl effect and gradual resists.
-----------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/msg");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
    mob:setMobMod(MOBMOD_GA_CHANCE, 50);
    mob:setMobMod(MOBMOD_ADD_EFFECT, mob:getShortID());

    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_UFASTCAST, 45);

    -- addMod
    mob:addMod(MOD_ACC,150);
    mob:addMod(MOD_DOUBLE_ATTACK,10)
    mob:setMod(MOD_MACC,950);
    mob:setMod(MOD_MATT,80);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_DEF, 50);
    mob:addMod(MOD_ATT, 50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MEVA, 95);
    mob:addMod(MOD_MDEF, 30);
    mob:addMod(MOD_SILENCERES, 20);
    mob:addMod(MOD_GRAVITYRES, 20);
    mob:addMod(MOD_LULLABYRES, 30);
    --[[
    mob:setMobMod(MOBMOD_RAGE, 3600); -- 60 minute rage timer
    ]]
end;

-----------------------------------
-- onMobRoam Action
-----------------------------------

function onMobRoam(mob)
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

    local hpp = mob:getHPP();
    local useChainspell = false;
    if (hpp < 90 and mob:getLocalVar("chainspell89") == 0) then
        mob:setLocalVar("chainspell89",1);
        useChainspell = true;
    elseif (hpp < 70 and mob:getLocalVar("chainspell69") == 0) then
        mob:setLocalVar("chainspell69",1);
        useChainspell = true;
    elseif (hpp < 50 and mob:getLocalVar("chainspell49") == 0) then
        mob:setLocalVar("chainspell49",1);
        useChainspell = true;
    elseif (hpp < 30 and mob:getLocalVar("chainspell29") == 0) then
        mob:setLocalVar("chainspell29",1);
        useChainspell = true;
    elseif (hpp < 10 and mob:getLocalVar("chainspell9") == 0) then
        mob:setLocalVar("chainspell9",1);
        useChainspell = true;
    end;

    if (useChainspell == true) then
        mob:useMobAbility(692); -- Chainspell
        mob:setMobMod(MOBMOD_GA_CHANCE, 100);

    end

    -- Spams TP moves and -ga spells
    if (mob:hasStatusEffect(EFFECT_CHAINSPELL) == true) then
        mob:setTP(2000);
    else
        if (mob:getMobMod(MOBMOD_GA_CHANCE) == 100) then
            mob:setMobMod(MOBMOD_GA_CHANCE, 50);
        end
    end;

    -- Regens 1% of his HP a tick with Blaze Spikes on
    if (mob:hasStatusEffect(EFFECT_BLAZE_SPIKES) == true) then
        mob:setMod(MOD_REGEN, math.floor(mob:getMaxHP()/100));
    else
        --[[
        if (mob:getMod(MOD_REGEN) > 0) then
            mob:setMod(MOD_REGEN, 0);
        ]]
        if (mob:getMod(MOD_REGEN) > 10) then
            mob:setMod(MOD_REGEN, 10);
        end
    end

    if (mob:getBattleTime() > 3600 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end
end;

-----------------------------------
-- onAdditionalEffect
-----------------------------------

function onAdditionalEffect(mob, player)
    local chance = 40;
    local resist = applyResistanceAddEffect(mob,player,ELE_WATER,EFFECT_POISON);
    if (math.random(0,99) >= chance or resist <= 0.5) then
        return 0,0,0;
    else
        local duration = 30;
        if (mob:getMainLvl() > player:getMainLvl()) then
            duration = duration + (mob:getMainLvl() - player:getMainLvl())
        end
        duration = utils.clamp(duration,1,30);
        duration = duration * resist;
        if (player:hasStatusEffect(EFFECT_POISON) == false) then
            player:addStatusEffect(EFFECT_POISON, 50, 3, duration); -- Don't know potency on the poison.
        end
        return SUBEFFECT_POISON, msgBasic.ADD_EFFECT_STATUS, EFFECT_POISON;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    mob:setLocalVar("RAGED", 0);
end;