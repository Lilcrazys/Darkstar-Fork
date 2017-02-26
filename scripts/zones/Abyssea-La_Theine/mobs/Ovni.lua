-----------------------------------
-- Area: Abyssea - La Theine (132)
--  Mob: Ovni
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/abyssea");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ALWAYS_AGGRO, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:hideName(true);
    mob:untargetable(true);
    mob:AnimationSub(5);
    mob:addMod(MOD_MATT,600);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
end;

-----------------------------------
-- onMobDisengage
-----------------------------------

function onMobDisengage(mob)
    mob:hideName(true);
    mob:untargetable(true);
    mob:AnimationSub(5);
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
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(SCARLET_ABYSSITE_OF_SOJOURN) == false) then
        player:addKeyItem(SCARLET_ABYSSITE_OF_SOJOURN);
        player:messageSpecial(KEYITEM_OBTAINED, SCARLET_ABYSSITE_OF_SOJOURN);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_HEAVENS) == false) then
        player:addKeyItem(ATMA_OF_THE_HEAVENS);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_HEAVENS);
    end
end;
