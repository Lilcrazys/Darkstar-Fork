-----------------------------------
-- Area: Den of Rancor
--  MOB: Cave Worm
-----------------------------------
require("scripts/globals/groundsofvalor");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,796,2);
end;