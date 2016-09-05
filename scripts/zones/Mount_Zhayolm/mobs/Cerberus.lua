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
    if (math.random(1,100) <= 3) then
        SetDropRate(502,10954,1000); -- Alchemist's Torque
        SetDropRate(502,21228,0); -- Falubeza
        SetDropRate(502,18385,0); -- Algol
    elseif (math.random(1,1000) <= 66) then -- this is 6.6 %
        SetDropRate(502,10950,0); -- Alchemist's Torque
        SetDropRate(502,21228,1000); -- Falubeza
        SetDropRate(502,8727,0); -- Algol
    else
        SetDropRate(502,10950,0); -- Alchemist's Torque
        SetDropRate(502,21228,0); -- Falubeza
        SetDropRate(502,8727,1000); -- Algol
    end
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

function onMobDeath(mob, player, isKiller)
    player:addTitle(CERBERUS_MUZZLER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------   

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, MYTHIC, 2);
    end 

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    --[[
    mob:setRespawnTime((math.random(0,24)*3600)+172800); -- 48-72 hours proper 1 hour windows
    ]]
    mob:setRespawnTime((math.random(21,36)*3600)+0); -- 21-36 hours proper 1 hour windows

end;