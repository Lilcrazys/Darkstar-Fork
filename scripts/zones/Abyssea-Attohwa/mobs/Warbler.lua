-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Warbler
-----------------------------------

require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");
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
    mob:addMod(MOD_MATT,100);
    mob:addMod(MOD_MACC,1500);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
    mob:addMod(MOD_EVA,-100);
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

function onMobDeath(mob,killer)
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(JADE_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(JADE_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, JADE_ABYSSITE_OF_MERIT);
    end
end;