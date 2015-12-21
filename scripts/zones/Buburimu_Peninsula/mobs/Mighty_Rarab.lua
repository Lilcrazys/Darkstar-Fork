-----------------------------------
-- Area: Buburimu Peninsula
--  MOB: Mighty Rarab
-----------------------------------

require("scripts/globals/fieldsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    checkRegime(ally,mob,32,2);

    local SPELL_ID = 578;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(SPELL_ID) == false) then
        ally:addSpell(SPELL_ID);
    end

end;
