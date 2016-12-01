-----------------------------------
-- Area: Abyssea - Tahrongi (45)
--  Mob: Iratham
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_ATT,90);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGEN,90);
    mob:addMod(MOD_REGAIN,20);
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
    if (mob:getHPP() < 20) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 155);
    elseif (mob:getHPP() < 50) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 154);
    else
        -- I'm assuming that if it heals up, it goes back to the its original spell list.
        mob:setMobMod(MOBMOD_SPELL_LIST, 153);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(IRATHAM_CAPTURER);

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_COSMOS) == false) then
        player:addKeyItem(ATMA_OF_THE_COSMOS);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_COSMOS);
    end

end;

