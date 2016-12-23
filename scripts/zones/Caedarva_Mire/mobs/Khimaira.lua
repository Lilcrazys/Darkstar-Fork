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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(KHIMAIRA_CARVER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 33) then
            player:addTreasure(10953, mob); -- Boneworker's Torque
        elseif (RND <= 66) then
            player:addTreasure(20827, mob); -- Kerehcatl
        else
            player:addTreasure(4023, mob); -- Snowsteel Ore
            player:addTreasure(4023, mob); -- Snowsteel Ore
        end
    end

    -- Custom Trial Check
    cTrialProgress(player, 3, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;