-----------------------------------
-- Area: Gusgen Mines
--  MOB: Ghoul
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_CURE_POTENCY_RCVD,-25);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,679,1);
    checkGoVregime(player,mob,680,2);
end;