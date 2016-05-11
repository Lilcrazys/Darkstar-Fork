-----------------------------------
-- Area:
--  MOB: Battleclad Chariot
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addTitle(STAR_CHARIOTEER);
    local SPELL_ID = 713;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(SPELL_ID) == false) then
        ally:addSpell(SPELL_ID);
    end
end;