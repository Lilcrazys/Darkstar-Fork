-----------------------------------
-- Area: Arrapago Reef
--  ZNM: Velionis
-----------------------------------
package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/spoofchat");
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

function onMobDeath(mob, killer)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_3");
        if (KILLED < 5) then
            killer:setVar("C_TRIAL_OBJ_3", KILLED + 1);
        end
        cTrialProgress(killer,MYTHIC);
    end
end;