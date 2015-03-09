-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Ophanim
-----------------------------------
require("scripts/zones/Abyssea-Tahrongi/textIDs");
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
    mob:addMod(MOD_ATT,90);
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

function onMobDeath(mob,killer)
    local CHANCE = 55;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(VEINOUS_HECTEYES_EYELID) == false) then
        killer:addKeyItem(VEINOUS_HECTEYES_EYELID);
        killer:messageSpecial(6385, VEINOUS_HECTEYES_EYELID);
    end
end;

