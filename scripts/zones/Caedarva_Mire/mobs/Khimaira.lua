-----------------------------------
-- Area: Caedarva Mire
--  NM:  Khimaira
-----------------------------------

require("scripts/globals/titles");
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

    if (math.random(1,1000) <= 72) then
        SetDropRate(1893,20827,1000); -- Kerehcatl
        SetDropRate(1893,17738,0); -- Hauteclaire
        SetDropRate(1893,4023,0); -- Snowsteel Ore
        SetDropRate(1893,4023,0); -- Snowsteel Ore
    elseif (math.random(1,100) <= 30) then
        SetDropRate(1893,20827,0); -- Kerehcatl
        SetDropRate(1893,17738,1000); -- Hauteclaire
        SetDropRate(1893,4023,0); -- Snowsteel Ore
        SetDropRate(1893,4023,0); -- Snowsteel Ore
    else
        SetDropRate(1893,18852,0); -- Kerehcatl
        SetDropRate(1893,17440,0); -- Hauteclaire
        SetDropRate(1893,4023,1000); -- Snowsteel Ore
        SetDropRate(1893,4023,1000); -- Snowsteel Ore
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(KHIMAIRA_CARVER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------
    
    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, MYTHIC, 3);
    end

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;