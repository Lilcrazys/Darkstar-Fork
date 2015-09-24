-----------------------------------
-- Area: Caedarva Mire
--  NM:  Khimaira
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_REGAIN,33);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	killer:addTitle(KHIMAIRA_CARVER);
	mob:setRespawnTime(math.random((75600),(86400))); -- 21-24 hours

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, MYTHIC, 3);
    end

end;