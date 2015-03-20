-----------------------------------
--
--
--
-----------------------------------
package.loaded["scripts/globals/conquest"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/conquest");
require("scripts/globals/status");
require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
--
-----------------------------------

-- function onMobDeathEx(mob, killer, isKillShot, killType)
function onMobDeathEx(mob, killer, isKillShot, isWeaponSkillKill)
	-- DRK quest - Blade Of Darkness
	local BladeofDarkness = killer:getQuestStatus(BASTOK, BLADE_OF_DARKNESS);
	local BladeofDeath = killer:getQuestStatus(BASTOK, BLADE_OF_DEATH);
	local ChaosbringerKills = killer:getVar("ChaosbringerKills");

	if (BladeofDarkness == QUEST_ACCEPTED or BladeofDeath == QUEST_ACCEPTED) then
		if (killer:getEquipID(SLOT_MAIN) == 16607 and isKillShot == true and isWeaponSkillKill == false) then
			if (ChaosbringerKills < 200) then
				killer:setVar("ChaosbringerKills", ChaosbringerKills + 1);
				if(ChaosbringerKills == 1) then
					killer:SpoofChatPlayer( string.format( "has felled %u foe using the Chaosbringer...", ChaosbringerKills + 1), MESSAGE_EMOTION, nil );
				else
					killer:SpoofChatPlayer( string.format( "has felled %u foes using the Chaosbringer...", ChaosbringerKills + 1), MESSAGE_EMOTION, nil );
				end
			end
		end
	end

	if (killer:getCurrentMission(WINDURST) == A_TESTING_TIME) then
		if (killer:hasCompletedMission(WINDURST,A_TESTING_TIME) and killer:getZoneID() == 118) then
			killer:setVar("testingTime_crea_count",killer:getVar("testingTime_crea_count") + 1);
		elseif (killer:hasCompletedMission(WINDURST,A_TESTING_TIME) == false and killer:getZoneID() == 117) then
			killer:setVar("testingTime_crea_count",killer:getVar("testingTime_crea_count") + 1);
		end
	end

	-- doMagiantTrialCheck(mob, killer, isKillShot, killType);

	-----------------------------------
	-- Legion XI custom section
	-----------------------------------

	-- Custom trials
	if (killer:getVar("customtrial") ~= nil) then
		-- doCustomTrial(mob, killer, isKillShot, killType);
		doCustomTrial(mob, killer, isKillShot, isWeaponSkillKill);
	end

	-- Bonus points
	if (mob:getSystem() == SYSTEM_BEASTMEN) then
		-- Bonus Imperial Standing for ToAU beastmen
		if (killer:hasStatusEffect(EFFECT_SANCTION) and killer:checkDistance(mob) < 100
		and killer:getCurrentRegion() >= 28 and killer:getCurrentRegion() <= 32 ) then
			if (mob:checkBaseExp()) then -- mob must give exp to get full bonus
				killer:addCurrency("imperial_standing", 1+mob:getMainLvl()*0.5);
			else -- Not an exp mob, no soup and only 1 point for you!
				killer:addCurrency("imperial_standing", 1);
			end
		-- Bonus Allied notes for WotG beastmen
		elseif (killer:hasStatusEffect(EFFECT_SIGIL) and killer:checkDistance(mob) < 100
		and killer:getCurrentRegion() >= 33 and killer:getCurrentRegion() <= 40 ) then
			if (mob:checkBaseExp()) then -- mob must give exp to get full bonus
				killer:addCurrency("allied_notes", 1+mob:getMainLvl()*0.5);
			else -- Not an exp mob, no soup and only 1 point for you!
				killer:addCurrency("allied_notes", 1);
			end
		end
	end
end;