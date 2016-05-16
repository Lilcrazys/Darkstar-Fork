-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Ironclad_Smiter
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Altepa/TextIDs");
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
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1800);
    mob:setMod(MOD_MATT,110);    
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
    if ((math.random(1,10) ~= 3) or (target:hasStatusEffect(EFFECT_STUN) == true)) then
        return 0,0,0;
    else
        local duration = 5;
        target:addStatusEffect(EFFECT_STUN,1,0,duration);
        mob:resetEnmity(target);
        return SUBEFFECT_NONE,0,EFFECT_STUN;
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(BROKEN_IRON_GIANT_SPIKE) == false) then
        player:addKeyItem(BROKEN_IRON_GIANT_SPIKE);
        player:messageSpecial(6385, BROKEN_IRON_GIANT_SPIKE);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_SMITING_BLOW) == false) then
        player:addKeyItem(ATMA_OF_THE_SMITING_BLOW);
        player:messageSpecial(6385, ATMA_OF_THE_SMITING_BLOW);
    end
end;
