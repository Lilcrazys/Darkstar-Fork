-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Hadhayosh
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/textIDs");
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(SCARLET_ABYSSITE_OF_FURTHERANCE) == false) then
        killer:addKeyItem(SCARLET_ABYSSITE_OF_FURTHERANCE);
        killer:messageSpecial(6385, SCARLET_ABYSSITE_OF_FURTHERANCE);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_LION) == false) then
        killer:addKeyItem(ATMA_OF_THE_LION);
        killer:messageSpecial(6385, ATMA_OF_THE_LION);
    end
end;