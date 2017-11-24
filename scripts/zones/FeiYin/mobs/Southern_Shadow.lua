-----------------------------------
-- Area: Fei'Yin
--  NM:  Southern Shadow
-----------------------------------
require("scripts/globals/status");

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    local CHANCE = 40;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(699) == false) then
        player:addSpell(699);
    end
end;
