-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Hadhayosh
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
require("scripts/zones/Abyssea-La_Theine/TextIDs");
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
    mob:addMod(MOD_MATT,35);
    mob:addMod(MOD_MACC,200);
    mob:addMod(MOD_ATT,75);
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
    -- First Meteor Spell cast at 20%.
    if (mob:getHPP() <=20 and mob:getLocalVar("meteorCount") == 0) then
        mob:setLocalVar("meteorCount", 1);
    -- https://www.youtube.com/results?search_query=Hadhayosh+ffxi
        mob:castSpell(218);
    -- Second Meteor Spell cast at 5%
    elseif (mob:getHPP() <= 5 and mob:getLocalVar("meteorCount") == 1) then
        mob:setLocalVar("meteorCount", 2);
        mob:castSpell(218);
    end;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(SCARLET_ABYSSITE_OF_FURTHERANCE) == false) then
        player:addKeyItem(SCARLET_ABYSSITE_OF_FURTHERANCE);
        player:messageSpecial(KEYITEM_OBTAINED, SCARLET_ABYSSITE_OF_FURTHERANCE);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_LION) == false) then
        player:addKeyItem(ATMA_OF_THE_LION);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_LION);
    end
end;