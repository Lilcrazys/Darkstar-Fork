-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Hadhayosh
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/zones/Abyssea-La_Theine/TextIDs");
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
    mob:addMod(MOD_EVA,-32);
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SCARLET_ABYSSITE_OF_FURTHERANCE) == false) then
        killer:addKeyItem(SCARLET_ABYSSITE_OF_FURTHERANCE);
        killer:messageSpecial(6385, SCARLET_ABYSSITE_OF_FURTHERANCE);
    end
end;