-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Hazhdiha
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
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_MACC,900);


    -- addMod
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_DEF,100);

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
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(BLOODIED_DRAGON_EAR) == false) then
        player:addKeyItem(BLOODIED_DRAGON_EAR);
        player:messageSpecial(KEYITEM_OBTAINED, BLOODIED_DRAGON_EAR);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_CRIMSON_SCALE) == false) then
        player:addKeyItem(ATMA_OF_THE_CRIMSON_SCALE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_CRIMSON_SCALE);
    end
end;