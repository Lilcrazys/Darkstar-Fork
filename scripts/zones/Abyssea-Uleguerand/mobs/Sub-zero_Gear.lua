-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Sub-zero_Gear
-----------------------------------

-- require("scripts/zones/Abyssea-Uleguerand/MobIDs");

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

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local SPELL_ID = 712;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOB_BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
end;

