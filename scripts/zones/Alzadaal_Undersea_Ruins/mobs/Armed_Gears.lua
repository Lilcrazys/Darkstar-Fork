-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  ZNM: Armed Gears
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        killer:addSpell(711);
    end
    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(SPELL_ID) == false) then
        killer:addSpell(712);
    end

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, MYTHIC, 2);
    end
end;