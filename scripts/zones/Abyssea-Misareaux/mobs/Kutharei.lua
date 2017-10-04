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
        local itemRate = math.random(1,100);
        local lootTable =
        {
            [1] = 20634, -- Leisilonu +1
            [2] = 20915, -- Iizamal +1
            [3] = 20961, -- Qatsunoci +1
            [4] = 21051, -- Shichishito +1
            [5] = 21236  -- Bocluamni +1
        }
        if (itemRate >= 50) then -- First drop is 50 in 100.
            player:addTreasure(lootTable[math.random(1,5)], mob);
        end
        if (itemRate >= 90) then -- You lucky high roller, 2nd drop is only 10 in 100
            player:addTreasure(lootTable[math.random(1,5)], mob);
        end
    end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_MOUNTED_CHAMPION) == false) then
        player:addKeyItem(ATMA_OF_THE_MOUNTED_CHAMPION);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_MOUNTED_CHAMPION);
    end
end;
