-----------------------------------
-- Area: Abyssea - Altepa (218)
--  Mob: Rani
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Altepa/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/titles");
-----------------------------------

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_UFASTCAST, 55);
    -- addMod
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,900);
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,125);
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_DEF,140);

end;

function onMobEngaged(mob,target)
end;

function onMobFight(mob,target)
    if (mob:getHPP() < 50) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 162);
    elseif (mob:getHPP() < 75) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 161);
    else
        -- I'm assuming that if it heals up, it goes back to the its original spell list.
        mob:setMobMod(MOBMOD_SPELL_LIST, 160);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(RANI_DECROWNER);

    if (isKiller == true) then
        local itemRate = math.random(1,100);
        local lootTable =
        {
            [1] = 20546, -- Ninzas +1
            [2] = 20736, -- Iztaasu +1
            [3] = 21051, -- Shichishito +1
            [4] = 21126, -- Aedold +1
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH) == false) then
        player:addKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_MERCILESS_MATRIARCH);
    end

end;
