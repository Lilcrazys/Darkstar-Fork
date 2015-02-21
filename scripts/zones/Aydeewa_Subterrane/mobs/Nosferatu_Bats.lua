-----------------------------------
-- Area: 
-- NPC:  Nos Bats
-----------------------------------

require("/scripts/globals/fieldsofvalor");
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/monstertpmoves");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
	mob:setMod(MOD_REGAIN,50);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function OnMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;