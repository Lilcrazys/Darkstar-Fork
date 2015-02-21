-----------------------------------
-- Area: 
-- NPC:  Armed Gears
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local SPELL_ID = 712;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU) and killer:player:hasSpell(SPELL_ID) == false) then
        killer:addSpell(SPELL_ID);
    end
end;