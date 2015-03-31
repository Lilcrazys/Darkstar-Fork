-----------------------------------
-- Area: Al'Taieu
-- NPC:  Jailer of Love
-----------------------------------

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    local CHANCE = 25;
    if (CHANCE > math.random(0,99)) then
        SpawnMob(16912876,180):updateEnmity(killer);
    end
end;