-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Raja
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/zones/Abyssea-Grauberg/TextIDs");
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
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,45);
    mob:addMod(MOD_MACC,500);
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
                player:addTreasure(21195, mob); -- Uffrat +1
            elseif (selectWeapon == 2) then
                player:addTreasure(20870, mob); -- Iclamar +1
            elseif (selectWeapon == 3) then
                player:addTreasure(21194, mob); -- Lehbrailg +1
            elseif (selectWeapon == 4) then
                player:addTreasure(21004, mob); -- Kannakiri +1
            elseif (selectWeapon == 5) then
                player:addTreasure(20824, mob); -- Faizzeer +1
            end
        end
    end

    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_DESPOT) == false) then
        player:addKeyItem(ATMA_OF_THE_DESPOT);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_DESPOT);
    end
end;
