-----------------------------------
-- Area: Aydeewa Subterrane
-- NPC:  Nosferatu
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
	mob:setMod(MOD_REGAIN,20);
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
	local mobHP = mob:getHPP();
	local mobID = mob:getID();
	local petIDs1 = {17056158,17056159,17056160};
	local petIDs2 = {17056161,17056162,17056163};
	local petIDs3 = {17056164,17056165,17056166};

	
	if(target:getAnimation() == 0) then
		mob:resetEnmity(target);
		mob:ActionDisengage(true);
	end
	
    local Nos_SMN_Used = 0;
    if (mob:getLocalVar("Nos_SMN") ~= nil) then
        Nos_SMN_Used = mob:getLocalVar("Nos_SMN");
    end	
	
	
    if(mobHP <= 25) then
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

function onMobDeath(mob,killer)
	local petIDs1 = {17056160,17056161,17056159};
	local petIDs2 = {17056162,17056163,17056164};
	local petIDs3 = {17056165,17056166,17056167};
	
	for i = 1, 3 do
		DespawnMob(petIDs1[i]);
		DespawnMob(petIDs2[i]);
		DespawnMob(petIDs3[i]);
	end	
end;
