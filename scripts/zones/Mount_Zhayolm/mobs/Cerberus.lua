-----------------------------------
-- Area: Mount Zhayolm
--  NM:  Cerberus
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,200);
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
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    if (mob:getHPP() > 25) then
        mob:setMod(MOD_REGAIN, 10)
    else
        mob:setMod(MOD_REGAIN, 70)
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addTitle(CERBERUS_MUZZLER);
    -- mob:setRespawnTime((math.random(0,24)*3600)+172800); -- 48-72 hours proper 1 hour windows
    mob:setRespawnTime((math.random(21,24)*3600)+0); -- 21-24 hours proper 1 hour windows

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(ally) == true) then
        cTrialProgress(ally, MYTHIC, 2);
    end

end;