-----------------------------------
-- Area: Yuhtunga Jungle
--  NM:  Mischievous Micholas
-----------------------------------
require("scripts/globals/fieldsofvalor");
require("scripts/globals/custom_trials");

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,126,1);
    checkRegime(player,mob,128,1);
end;

function onMobDespawn(mob)

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 1, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
