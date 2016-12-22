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
	local petIDs1 = {MobID+1, MobID+2, MobID+3}; -- Nosferatu_Bats
	local petIDs2 = {MobID+4, MobID+5, MobID+6}; -- Nosferatu_Wolf
	local petIDs3 = {MobID+7, MobID+8, MobID+9}; -- Nosferatu_Murk

	if (target:getAnimation() == 0) then
		mob:resetEnmity(target);
		mob:ActionDisengage(true);
	end

    local Nos_SMN_Used = 0;
    if (mob:getLocalVar("Nos_SMN") ~= nil) then
        Nos_SMN_Used = mob:getLocalVar("Nos_SMN");
    end


    if (mobHP <= 25) then
        if (Nos_SMN_Used == 2) then
            SpawnMob(petIDs3[i],800):updateEnmity(target);
            mob:setLocalVar("Nos_SMN", 3);
        end
    elseif (mobHP <= 50) then
        if (Nos_SMN_Used == 1) then
            SpawnMob(petIDs2[i],800):updateEnmity(target);
            mob:setLocalVar("Nos_SMN", 2);
        end
    elseif (mobHP <= 75) then
        if (Nos_SMN_Used == 0) then
            SpawnMob(petIDs3[i],800):updateEnmity(target);
            mob:setLocalVar("Nos_SMN", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
	local MobID = mob:getID();
	local petIDs1 = {MobID+1, MobID+2, MobID+3}; -- Nosferatu_Bats
	local petIDs2 = {MobID+4, MobID+5, MobID+6}; -- Nosferatu_Wolf
	local petIDs3 = {MobID+7, MobID+8, MobID+9}; -- Nosferatu_Murk
	for i = 1, 3 do
		DespawnMob(petIDs1[i]);
		DespawnMob(petIDs2[i]);
		DespawnMob(petIDs3[i]);
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