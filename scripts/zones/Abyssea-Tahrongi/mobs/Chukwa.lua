-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Chukwa
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(MOSSY_ADAMANTOISE_SHELL) == false) then
        killer:addKeyItem(MOSSY_ADAMANTOISE_SHELL);
        killer:messageSpecial(6385, MOSSY_ADAMANTOISE_SHELL);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_ADAMANTINE) == false) then
        killer:addKeyItem(ATMA_OF_THE_ADAMANTINE);
        killer:messageSpecial(6385, ATMA_OF_THE_ADAMANTINE);
    end
end;

