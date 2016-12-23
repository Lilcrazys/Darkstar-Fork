-----------------------------------
-- Area: Abyssea - Vunkerl (217)
--  Mob: Sippoy
-----------------------------------
package.loaded["scripts/zones/Abyssea-Vunkerl/textIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
require("scripts/globals/keyitems");
require("scripts/globals/abyssea");
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
    if (mob:getHPP() < 50) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 159);
    else
        -- I'm assuming that if it heals up, it goes back to the its original spell list.
        mob:setMobMod(MOBMOD_SPELL_LIST, 158);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(SIPPOY_CAPTURER);

    if (isKiller == true) then
        local itemRate = math.random(1,100); -- Weapon should be 50% chance
        local selectWeapon = math.random(1,5);

        if (itemRate <= 50) then
            if (selectWeapon == 1) then
                player:addTreasure(20961, mob); -- Qatsunoci +1
            elseif (selectWeapon == 2) then
                player:addTreasure(20915, mob); -- Iizamal +1
            elseif (selectWeapon == 3) then
                player:addTreasure(21236, mob); -- Bocluamni +1
            elseif (selectWeapon == 4) then
                player:addTreasure(20775, mob); -- Crobaci +1
            elseif (selectWeapon == 5) then
                player:addTreasure(21195, mob); -- Uffrat +1
            end
        end
    end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_WOULD_BE_KING) == false) then
        player:addKeyItem(ATMA_OF_THE_WOULD_BE_KING);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_WOULD_BE_KING);
    end
end;
