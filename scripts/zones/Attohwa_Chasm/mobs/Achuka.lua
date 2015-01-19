-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Achuka
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1); 
	mob:addMod(MOD_ACC,150);
	mob:addMod(MOD_DOUBLE_ATTACK,10)
    mob:addMod(MOD_REGEN, 30);
end;

-----------------------------------
-- OnMobSpawn
-----------------------------------

function onMobSpawn(mob)
	mob:setMod(MOD_REGAIN,15);	
end;
-----------------------------------

-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
	mob:setLocalVar("BattleStart", os.time())
end;
-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local Achuka_2hr_Used = 0;
    if (mob:getLocalVar("Achuka_2hr") ~= nil) then
        Achuka_2hr_Used = mob:getLocalVar("Achuka_2hr");
    end

    if (mob:getHPP() <= 10) then 
        if (Achuka_2hr_Used == 2) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 3);
        end
    elseif (mob:getHPP() <= 30) then 
        if (Achuka_2hr_Used == 1) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 2);
        end
    elseif (mob:getHPP() <= 70) then 
        if (Achuka_2hr_Used == 0) then
            mob:useMobAbility(432); -- PD
            mob:setLocalVar("Achuka_2hr", 1);
        end
    elseif (Achuka_2hr_Used == 3) then
            mob:addStatusEffect(EFFECT_HASTE,200,0,200);	
		end
	elseif (os.time() -BattleStart > 3600) then
			mob:setMod(MOD_MDEF,3000);
			mob:setMod(MOD_DEF,3000);	
			mob:setMod(MOD_MATT,3000);
			mob:setMod(MOD_ATT,3000);
			mob:setMod(MOD_STR,3000);
			mob:setMod(MOD_VIT,3000);
			mob:setMod(MOD_INT,3000);
			mob:setMod(MOD_AGI,3000);
			mob:setMod(MOD_TRIPLE_ATTACK,3000);	
		end		
    end
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
   -- mob:setRespawnTime(math.random((259200),(432000)));	-- 3 to 5 days	
end;