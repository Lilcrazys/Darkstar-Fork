-----------------------------------
-- Area: Caedarva Mire
--  MOB: Jazaraat
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/settings");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:setVar("TOAUM13",2);
end;
