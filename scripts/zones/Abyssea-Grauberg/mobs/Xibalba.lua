-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Xibalba
-----------------------------------

-- require("scripts/zones/Abyssea-Grauberg/MobIDs");
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
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
    mob:addMod(MOD_MATT,5);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_DEF,-200);
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
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(INDIGO_ABYSSITE_OF_MERIT) == false) then
        killer:addKeyItem(INDIGO_ABYSSITE_OF_MERIT);
        killer:messageSpecial(6385, INDIGO_ABYSSITE_OF_MERIT);
    end
end;

