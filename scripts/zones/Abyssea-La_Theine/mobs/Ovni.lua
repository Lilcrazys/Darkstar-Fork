-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Ovni
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
    mob:hideName(true);
    mob:untargetable(true);
    mob:AnimationSub(5);
    mob:addMod(MOD_MATT,600);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
    mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(SCARLET_ABYSSITE_OF_SOJOURN) == false) then
        killer:addKeyItem(SCARLET_ABYSSITE_OF_SOJOURN);
        killer:messageSpecial(6385, SCARLET_ABYSSITE_OF_SOJOURN);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_HEAVENS) == false) then
        killer:addKeyItem(ATMA_OF_THE_HEAVENS);
        killer:messageSpecial(6385, ATMA_OF_THE_HEAVENS);
    end
end;