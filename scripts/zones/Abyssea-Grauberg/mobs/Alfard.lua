-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Alfard
-----------------------------------

-- require("scripts/zones/Abyssea-Grauberg/MobIDs");
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)	
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_MATT,375);
	mob:addMod(MOD_MACC,500);
	mob:addMod(MOD_REGAIN,33);
	
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)	
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)

	local battletime = mob:getBattleTime();
	local headbreak, headgrow = mob:getExtraVar(2);
	local broken = mob:AnimationSub();
	
	if (headgrow < battletime and broken > 0) then
		mob:AnimationSub(broken - 1);
		mob:setExtraVar(headbreak, battletime + 300);
	end

end;

function OnCriticalHit(mob)

	local rand = math.random();
	local battletime = mob:getBattleTime();
	local headbreak, headgrow = mob:getExtraVar(2);
	local broken = mob:AnimationSub();
	
	if (rand <= 0.15 and battletime >= headbreak and broken < 2) then
		mob:AnimationSub(broken + 1);
		mob:setExtraVar(battletime + math.random(120, 240), battletime + 300);
	end

end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)	
end;

