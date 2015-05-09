-----------------------------------
-- Area: Fei'Yin
-- NM:   Capricious_Cassie
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/magic");
require("scripts/zones/FeiYin/TextIDs");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 40;
  
    if (math.random(0,99) < CHANCE and killer:getMainJob() == JOB_BLU and killer:hasSpell(699) == false) then
        killer:addSpell(699);
    end
end;