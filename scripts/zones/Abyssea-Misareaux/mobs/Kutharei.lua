-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Kutharei
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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

    if (isKiller == true) then
        local itemRate = math.random(1,100); -- Weapon should be 50% chance
        local selectWeapon = math.random(1,5);

        if (itemRate <= 50) then
            if (selectWeapon == 1) then
                player:addTreasure(21051, mob); -- Shichishito +
            elseif (selectWeapon == 2) then
                player:addTreasure(20634, mob); -- Leisilonu +1
            elseif (selectWeapon == 3) then
                player:addTreasure(20961, mob); -- Qatsunoci +1
            elseif (selectWeapon == 4) then
                player:addTreasure(20915, mob); -- Iizamal +1
            elseif (selectWeapon == 5) then
                player:addTreasure(21236, mob); -- Bocluamni +1
            end
        end
    end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_MOUNTED_CHAMPION) == false) then
        player:addKeyItem(ATMA_OF_THE_MOUNTED_CHAMPION);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_MOUNTED_CHAMPION);
    end
end;
