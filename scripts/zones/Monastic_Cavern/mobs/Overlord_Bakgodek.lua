-----------------------------------
-- Area: Monastic Cavern
--  NM:  Overlord Bakgodek
-----------------------------------

require("scripts/globals/titles");
require("scripts/zones/Monastic_Cavern/TextIDs");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
-- mob:messagePublic(mob,ORC_KING_ENGAGE);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
		killer:addTitle(OVERLORD_OVERTHROWER);
-- mob:messagePublic(mob,ORC_KING_DEATH);
end;