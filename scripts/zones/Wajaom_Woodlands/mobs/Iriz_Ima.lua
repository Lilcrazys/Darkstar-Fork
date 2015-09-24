-----------------------------------
-- Area: Wajaom Woodlands
--  ZNM: Iriz Ima
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_ATT,90);
    mob:addMod(MOD_DEF,75);
    mob:addMod(MOD_MACC,500);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, Mythic, 2);
    end
end;