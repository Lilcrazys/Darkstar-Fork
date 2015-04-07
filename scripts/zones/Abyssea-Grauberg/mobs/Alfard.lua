-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Alfard
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_HASTE_ABILITY, 20);
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
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_SOLITARY_ONE) == false) then
        killer:addKeyItem(ATMA_OF_THE_SOLITARY_ONE);
        killer:messageSpecial(6385, ATMA_OF_THE_SOLITARY_ONE);
    end
end;