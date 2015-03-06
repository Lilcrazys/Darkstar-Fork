-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Flame_Skimmer
-----------------------------------

require("scripts/zones/Abyssea-Misareaux/MobIDs");
require("scripts/globals/keyitems");
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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
    mob:addMod(MOD_DEF,75);
    mob:addMod(MOD_ATT,75);
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

function onMobDeath(mob,killer)
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SAPPHIRE_ABYSSITE_OF_FURTHERANCE) == false) then
        killer:addKeyItem(SAPPHIRE_ABYSSITE_OF_FURTHERANCE);
        killer:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_FURTHERANCE);
    end
end;

