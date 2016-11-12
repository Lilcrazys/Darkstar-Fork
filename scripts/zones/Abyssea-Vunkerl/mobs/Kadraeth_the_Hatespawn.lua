-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Kadraeth_the_Hatespawn
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
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
    mob:addMod(MOD_MATT,75);
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
    local CHANCE = 100;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(PULSATING_SOULFLAYER_BEARD) == false) then
        player:addKeyItem(PULSATING_SOULFLAYER_BEARD);
        player:messageSpecial(KEYITEM_OBTAINED, PULSATING_SOULFLAYER_BEARD);
    end
end;

