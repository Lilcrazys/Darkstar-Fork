-----------------------------------
-- Area: Abyssea - Grauberg (254)
--  Mob: Ironclad_Sunderer
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_STUNRES, 33);
    mob:setMod(MOD_TERRORRES, 90);
    mob:SetMobSkillAttack(4167); -- Enable Special Animation for melee attacks.
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
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(SHATTERED_IRON_GIANT_CHAIN) == false) then
        player:addKeyItem(SHATTERED_IRON_GIANT_CHAIN);
        player:messageSpecial(KEYITEM_OBTAINED, SHATTERED_IRON_GIANT_CHAIN);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_SUNDERING_SLASH) == false) then
        player:addKeyItem(ATMA_OF_THE_SUNDERING_SLASH);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SUNDERING_SLASH);
    end
end;
