-----------------------------------
-- Area: Aydeewa Subterrane
--  ZNM: Nosferatu
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN,20);
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
    local mobHP = mob:getHPP();
    local MobID = mob:getID();
    local Nos_SMN_Used = mob:getLocalVar("Nos_SMN");
    if (mobHP <= 25 and Nos_SMN_Used == 2) then
        mob:setLocalVar("Nos_SMN", 3); -- Nosferatu_Murk
        for Murks = MobID+7, MobID+9 do
            SpawnMob(Murks):updateEnmity(target);
        end
    elseif (mobHP <= 50 and Nos_SMN_Used == 1) then
        mob:setLocalVar("Nos_SMN", 2); -- Nosferatu_Wolf
        for Wolfs = MobID+4, MobID+6 do
            SpawnMob(Wolfs):updateEnmity(target);
        end
    elseif (mobHP <= 75 and Nos_SMN_Used == 0) then
        mob:setLocalVar("Nos_SMN", 1); -- Nosferatu_Bats
        for Bats = MobID+1, MobID+3 do
            SpawnMob(Bats):updateEnmity(target);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local MobID = mob:getID();
    for pets = MobID+1, MobID+9 do
        DespawnMob(pets);
    end

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 2, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
