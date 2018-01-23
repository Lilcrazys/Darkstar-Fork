-----------------------------------
-- Area: Gusgen Mines
--  MOB: Ghast
-----------------------------------
require("scripts/globals/groundsofvalor");
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_CURE_POTENCY_RCVD,-15);
end;


function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,679,1);
    checkGoVregime(player,mob,680,2);
    checkGoVregime(player,mob,684,1);
end;