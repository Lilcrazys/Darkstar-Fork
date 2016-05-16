-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Alfard
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

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
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 250);
    mob:setMod(MOD_HASTE_ABILITY, 30);
    mob:setMod(MOD_MATT,80);
    mob:setMod(MOD_MACC,800);
    mob:setMod(MOD_TRIPLE_ATTACK, 30);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobSpawn(mob)
end;

function onMobFight(mob, target)
    local battletime = mob:getBattleTime();
    local headgrow = mob:getLocalVar("headgrow");
    local broken = mob:AnimationSub();

    if (headgrow < battletime and broken > 0) then
        mob:AnimationSub(broken - 1);
        mob:setLocalVar("headgrow", battletime + 300);
    end
end;

function onCriticalHit(mob)
    local rand = math.random();
    local battletime = mob:getBattleTime();
    local headgrow = mob:getLocalVar("headgrow");
    local headbreak = mob:getLocalVar("headbreak");
    local broken = mob:AnimationSub();

    if (rand <= 0.15 and battletime >= headbreak and broken < 2) then
        mob:AnimationSub(broken + 1);
        mob:setLocalVar("headgrow", battletime + math.random(120, 240))
        mob:setLocalVar("headbreak", battletime + 300);
    end
end;
-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if (target:hasStatusEffect(EFFECT_POISON)) then
        target:delStatusEffect(EFFECT_POISON);
    end

    duration = 30 * applyResistanceAddEffect(mob, target, ELE_WATER, EFFECT_POISON)
    utils.clamp(duration,1,30);
    target:addStatusEffect(EFFECT_POISON, 100, 3, duration);

    return SUBEFFECT_POISON, 160, EFFECT_POISON;
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_SOLITARY_ONE) == false) then
        player:addKeyItem(ATMA_OF_THE_SOLITARY_ONE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SOLITARY_ONE);
    end
end;