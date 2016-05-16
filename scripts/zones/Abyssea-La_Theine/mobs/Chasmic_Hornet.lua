-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Chasmic_Hornet
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(SCARLET_ABYSSITE_OF_PERSPICACITY) == false) then
        player:addKeyItem(SCARLET_ABYSSITE_OF_PERSPICACITY);
        player:messageSpecial(6385, SCARLET_ABYSSITE_OF_PERSPICACITY);
    end
end;

