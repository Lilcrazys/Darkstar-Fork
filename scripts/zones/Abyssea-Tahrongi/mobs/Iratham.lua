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

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
    mob:addMod(MOD_ATT,90);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGEN,90);
    mob:addMod(MOD_REGAIN,20);
end;

function onMobEngaged(mob,target)
end;

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

function onMobDeath(mob, player, isKiller)
    player:addTitle(IRATHAM_CAPTURER);

    if (isKiller == true) then
        local itemRate = math.random(1,100);
        local lootTable =
        {
            [1] = 20546, -- Ninzas +1
            [2] = 20634, -- Leisilonu +1
            [3] = 20961, -- Qatsunoci +1
            [4] = 21051, -- Shichishito +1
            [5] = 21286  -- Hgafircian +1
        }
        if (itemRate >= 50) then -- First drop is 50 in 100.
            player:addTreasure(lootTable[math.random(1,5)], mob);
        end
        if (itemRate >= 90) then -- You lucky high roller, 2nd drop is only 10 in 100
            player:addTreasure(lootTable[math.random(1,5)], mob);
        end
    end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_COSMOS) == false) then
        player:addKeyItem(ATMA_OF_THE_COSMOS);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_COSMOS);
    end

end;

