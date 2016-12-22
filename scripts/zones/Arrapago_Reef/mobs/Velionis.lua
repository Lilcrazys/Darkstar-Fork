-----------------------------------
-- Area: Arrapago Reef
--  ZNM: Velionis
-----------------------------------
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_MACC,420);
    mob:addMod(MOD_MATT,115);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    -- Custom Trial Check
    cTrialProgress(player, 1, "mythic");

end;