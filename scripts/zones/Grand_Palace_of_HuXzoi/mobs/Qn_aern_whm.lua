-----------------------------------
-- Area: The Garden of Ru'Hmet
-- MOB:  Qn_aern_whm
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------

-----------------------------------

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_SUPERLINK, mob:getShortID());
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,75);
end;

function onMobEngage(mob)
end;
-----------------------------------
-- onMobRoam Action
-- Autochange Aggro and Form
-----------------------------------

function onMobRoam(mob)

end;

-----------------------------------
-- OnMobFight Action
-- Set ball form and secondary form
-----------------------------------
function onMobFight(mob,target)

end;

function onMobDeath(mob)
end;
