-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Minhocao
-----------------------------------
require("scripts/zones/Abyssea-Tahrongi/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_MACC,700);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SODDEN_SANDWORM_HUSK) == false) then
        killer:addKeyItem(SODDEN_SANDWORM_HUSK);
        killer:messageSpecial(6385, SODDEN_SANDWORM_HUSK);
    end
end;

