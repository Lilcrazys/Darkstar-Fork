-----------------------------------
-- Area: Al'Taieu
-- NPC:  Jailer of Love
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- Server Variables used by JoL and AV
    SetServerVariable("JoL_Qn_xzomit_Killed",0) -- Must reset this every spawn
    SetServerVariable("JoL_Qn_hpemde_Killed",0) -- Must reset this every spawn
    -- All new code below this line please.


end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
    -- Might need this later, not sure yet..
    -- mob:setLocalVar("XZOMITS_POPPED", GetServerVariable("JoL_Qn_xzomit_Killed"));
    -- mob:setLocalVar("HPEMDES_POPPED", GetServerVariable("JoL_Qn_hpemde_Killed"));
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- Only 9 Qn'xzomit and 9 Qn'hpemde can be summoned. Ru'phuabo (Sharks) are unlimited.
    local XZOMITS = GetServerVariable("JoL_Qn_xzomit_Killed");
    local HPEMDES = GetServerVariable("JoL_Qn_hpemde_Killed");
    -- Increment these by 1 each time they are slain, in that mobs onMobDeath() script.
    if (GetServerVariable("JoL_Regen_Reduction") == 0) then
        -- Had to serverVar the regen instead of localVar because localVar reset on claim loss.
        if (GetServerVariable("JoL_Qn_xzomit_Killed") == 9
        and GetServerVariable("JoL_Qn_hpemde_Killed") == 9) then
            SetServerVariable("JoL_Regen_Reduction", 1);
            mob:addMod(MOD_REGEN, -260)
        end
    end
    -- Don't use those server vars to know how many have been popped, just how many have died.
    -- All new code below this line please.


end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SetServerVariable("JoL_Regen_Reduction", 0);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    local CHANCE = 25;
    if (CHANCE > math.random(0,99)) then
        SpawnMob(16912876,180):updateEnmity(killer);
    end
    SetServerVariable("JoL_Regen_Reduction", 0);
end;