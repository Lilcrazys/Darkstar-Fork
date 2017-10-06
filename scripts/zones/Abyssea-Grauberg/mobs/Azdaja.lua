-----------------------------------
-- Area: Abyssea - Grauberg (254)
--  Mob: Azdaja
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");

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
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1800);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
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
        target:addStatusEffect(EFFECT_AMNESIA,1,0,10);
    end
    return SUBEFFECT_NONE, chatType.ADD_EFFECT_DMG,EFFECT_AMNESIA;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_WINGED_GLOOM) == false) then
        player:addKeyItem(ATMA_OF_THE_WINGED_GLOOM);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_WINGED_GLOOM);
    end
end;
