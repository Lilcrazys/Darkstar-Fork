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
        local Chance = math.random(1,100); -- Weapon should be 50% chance
        local Weapon = math.random(1,5);

            if (Chance <= 50) then
                if (Weapon == 1) then
                    player:addTreasure(21236, mob); -- Bocluamni +1
                elseif (Weapon == 2) then              
                    player:addTreasure(20775, mob); -- Crobaci +1
                elseif (Weapon == 3) then              
                    player:addTreasure(21195, mob); -- Uffrat +1
                elseif (Weapon == 4) then
                    player:addTreasure(20870, mob); -- Iclamar +1
                elseif (Weapon == 5) then
                    player:addTreasure(21194, mob); -- Lehbrailg +1
                end
            end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_IMPREGNABLE_TOWER) == false) then
        player:addKeyItem(ATMA_OF_THE_IMPREGNABLE_TOWER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_IMPREGNABLE_TOWER);
    end
end;
