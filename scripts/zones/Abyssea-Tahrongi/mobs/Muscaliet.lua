-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Mictlantecuhtli
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
    mob:addMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,900);
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_DOUBLE_ATTACK, 30);
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
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(LUXURIANT_MANTICORE_MANE) == false) then
        killer:addKeyItem(LUXURIANT_MANTICORE_MANE);
        killer:messageSpecial(6385, LUXURIANT_MANTICORE_MANE);
    end
end;

