-----------------------------------
-- Area: Gusgen Mines
--  MOB: Wight
-----------------------------------
require("scripts/globals/groundsofvalor");
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_CURE_POTENCY_RCVD,-20);
end;

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,679,1);
    checkGoVregime(player,mob,680,2);
    checkGoVregime(player,mob,683,1);
end;