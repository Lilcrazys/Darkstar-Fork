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
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

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
        mob:setMobMod(MOBMOD_SPELL_LIST, 162);
    elseif (mob:getHPP() < 75) then
        mob:setMobMod(MOBMOD_SPELL_LIST, 161);
    else
        -- I'm assuming that if it heals up, it goes back to the its original spell list.
        mob:setMobMod(MOBMOD_SPELL_LIST, 160);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(RANI_DECROWNER);

    if (isKiller == true) then
        local itemRate = math.random(1,100); -- Weapon should be 50% chance
        local selectWeapon = math.random(1,5);

            if (Chance <= 50) then
                if (selectWeapon == 1) then
                    player:addTreasure(20736, mob); -- Iztaasu +1
                elseif (selectWeapon == 2) then
                    player:addTreasure(21126, mob); -- Aedold +1
                elseif (selectWeapon == 3) then
                    player:addTreasure(20546, mob); -- Ninzas +1
                elseif (selectWeapon == 4) then
                    player:addTreasure(21286, mob); -- Hgafircian +1
                elseif (selectWeapon == 5) then
                    player:addTreasure(21051, mob); -- Shichishito +1
                end
            end
    end


    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH) == false) then
        player:addKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_MERCILESS_MATRIARCH);
    end

end;
