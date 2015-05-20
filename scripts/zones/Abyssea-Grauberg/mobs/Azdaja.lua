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
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1800);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);

    -- addMod
    mob:addMod(MOD_DMGRANGE, 50);
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

function onMobFight(mob,target)

end;
-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 5) or (target:hasStatusEffect(EFFECT_AMNESIA) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_AMNESIA,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,163,EFFECT_AMNESIA;
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

