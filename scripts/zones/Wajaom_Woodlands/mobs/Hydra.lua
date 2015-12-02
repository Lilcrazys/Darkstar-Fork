-----------------------------------
-- Area: Wajaom Woodlands
--  NM:  Hydra
-- @pos -282 -24 -1 51
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

function onMobFight(mob, target)

	local battletime = mob:getBattleTime();
    local headgrow = mob:getLocalVar("headgrow");
	local broken = mob:AnimationSub();

	if (headgrow < battletime and broken > 0) then
		mob:AnimationSub(broken - 1);
		mob:setLocalVar("headgrow", battletime + 300);
	end

end;

function onCriticalHit(mob)

	local rand = math.random();
	local battletime = mob:getBattleTime();
    local headgrow = mob:getLocalVar("headgrow");
	local headbreak = mob:getLocalVar("headbreak");
	local broken = mob:AnimationSub();

	if (rand <= 0.15 and battletime >= headbreak and broken < 2) then
		mob:AnimationSub(broken + 1);
		mob:setLocalVar("headgrow", battletime + math.random(120, 240))
        mob:setLocalVar("headbreak", battletime + 300);
	end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

	killer:addTitle(HYDRA_HEADHUNTER);


    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, MYTHIC, 1);
    end

end;