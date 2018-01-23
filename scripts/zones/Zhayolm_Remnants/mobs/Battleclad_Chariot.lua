-----------------------------------
-- Area:
--  MOB: Battleclad Chariot
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(STAR_CHARIOTEER);
    local SPELL_ID = 713;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
end;