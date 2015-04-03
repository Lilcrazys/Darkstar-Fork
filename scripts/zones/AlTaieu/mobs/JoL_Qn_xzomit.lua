-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'xzomit
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
    local XZOMITS = GetServerVariable("JoL_Qn_xzomit_Killed");
    SetServerVariable("JoL_Qn_xzomit_Killed", XZOMITS+1);
end;