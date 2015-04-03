-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'hpemde
-- Jailor of Love Pet version
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
    local HPEMDES = GetServerVariable("JoL_Qn_hpemde_Killed");
    SetServerVariable("JoL_Qn_hpemde_Killed", HPEMDES+1);
end;