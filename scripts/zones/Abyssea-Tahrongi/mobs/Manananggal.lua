-----------------------------------
-- Area: Abyssea - Tahrongi (45)
--  Mob: Manananggal
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/abyssea");
require("scripts/globals/status");

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
    mob:setMod(MOD_UDMGPHYS,100); -- 2x normal dmg
    mob:setMod(MOD_UDMGBREATH,50);
    mob:setMod(MOD_UDMGMAGIC,100);
    mob:setMod(MOD_UDMGRANGE,50);

    -- addMod
    mob:addMod(MOD_MATT,90);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGEN,90);
    mob:addMod(MOD_REGAIN,20);
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
    local CHANCE = 55;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(VIRIDIAN_ABYSSITE_OF_DESTINY) == false) then
        player:addKeyItem(VIRIDIAN_ABYSSITE_OF_DESTINY);
        player:messageSpecial(KEYITEM_OBTAINED, VIRIDIAN_ABYSSITE_OF_DESTINY);
    end
end;

