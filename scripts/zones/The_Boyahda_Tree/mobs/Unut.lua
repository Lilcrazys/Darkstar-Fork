-----------------------------------
-- Area: The Boyhoda Tree
-- MOB:  Unut
-----------------------------------
package.loaded["scripts/zones/The_Boyahda_Tree/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/status");
require("scripts/globals/fieldsofvalor");
require("scripts/zones/The_Boyahda_Tree/TextIDs");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)

end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    local SPELL_ID = 578;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and ally:getMainJob() == JOB_BLU and ally:hasSpell(SPELL_ID) == false) then
        ally:addSpell(SPELL_ID);
    end
    checkRegime(killer,mob,90,3);
end;