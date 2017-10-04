-----------------------------------
-- Area: Abyssea - Attohwa (215)
--   NM: Yaanei
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/abyssea");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MOVE,12);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_ATT,220);
    mob:addMod(MOD_DEF,220);
    mob:addMod(MOD_MDEF,220);
    mob:addMod(MOD_MATT,40);
    mob:addMod(MOD_MACC,333);
    mob:addMod(MOD_REGEN,50);
    mob:addMod(MOD_REGAIN,10);
    mob:addMod(MOD_FASTCAST,33);
    mob:addMod(MOD_HASTE_ABILITY,25);
    mob:addMod(MOD_FIRERES,-25);
    mob:addMod(MOD_WINDRES,-10);
    mob:addMod(MOD_ICERES,20);
    mob:addMod(MOD_WINDRES,25);
    mob:addMod(MOD_EARTHRES,25);
    mob:addMod(MOD_THUNDERRES,25);
    mob:addMod(MOD_EARTHDEF,20);
    mob:addMod(MOD_THUNDERDEF,20);
    mob:addMod(MOD_EARTHACC,33);
    mob:addMod(MOD_STUNRES,50);
    mob:addMod(MOD_TERRORRES,50);

    -- setMobMod
    mob:setMobMod(MOBMOD_HP_STANDBACK,-1);
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
            [1] = 20775, -- Crobaci +1
            [2] = 20870, -- Iclamar +1
            [3] = 21194, -- Lehbrailg +1
            [4] = 21195, -- Uffrat +1
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_IMPREGNABLE_TOWER) == false) then
        player:addKeyItem(ATMA_OF_THE_IMPREGNABLE_TOWER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_IMPREGNABLE_TOWER);
    end
end;
