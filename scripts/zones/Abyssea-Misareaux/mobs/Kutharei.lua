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
        local Chance = math.random(1,100); -- Weapon should be 50% chance
        local Weapon = math.random(1,5);

            if (Chance <= 50) then
                if (Weapon == 1) then
                    player:addTreasure(21051, mob); -- Shichishito +
                elseif (Weapon == 2) then
                    player:addTreasure(20634, mob); -- Leisilonu +1
                elseif (Weapon == 3) then
                    player:addTreasure(20961, mob); -- Qatsunoci +1
                elseif (Weapon == 4) then
                    player:addTreasure(20915, mob); -- Iizamal +1
                elseif (Weapon == 5) then
                    player:addTreasure(21236, mob); -- Bocluamni +1
                end
            end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_MOUNTED_CHAMPION) == false) then
        player:addKeyItem(ATMA_OF_THE_MOUNTED_CHAMPION);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_MOUNTED_CHAMPION);
    end
end;
