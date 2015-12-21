-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Amun
-----------------------------------

require("scripts/zones/Abyssea-Attohwa/textIDs");
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
    mob:addMod(MOD_INT,2);
    mob:addMod(MOD_MATT,15);
    mob:addMod(MOD_ATT,100);
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(SHRIVELED_HECTEYES_STALK) == false) then
        ally:addKeyItem(SHRIVELED_HECTEYES_STALK);
        ally:messageSpecial(6385, SHRIVELED_HECTEYES_STALK);
    end
end;

