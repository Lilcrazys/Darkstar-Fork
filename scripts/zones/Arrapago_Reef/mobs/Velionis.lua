-----------------------------------
-- Area: Arrapago Reef
--  ZNM: Velionis
-----------------------------------
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/zones/Arrapago_Reef/TextIDs");
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

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, MYTHIC, 3);
    end
end;