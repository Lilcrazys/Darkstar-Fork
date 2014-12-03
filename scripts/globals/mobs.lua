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
require("scripts/globals/common");

-----------------------------------
--
-----------------------------------

function onMobDeathEx(mob, killer, isWeaponSkillKill)
	print("mob:checkBaseExp()",mob:checkBaseExp());
	-- DRK quest - Blade Of Darkness
	local BladeofDarkness = killer:getQuestStatus(BASTOK, BLADE_OF_DARKNESS);
	local BladeofDeath = killer:getQuestStatus(BASTOK, BLADE_OF_DEATH);
	local ChaosbringerKills = killer:getVar("ChaosbringerKills");
	
	if (BladeofDarkness == QUEST_ACCEPTED or BladeofDeath == QUEST_ACCEPTED) then

		if(killer:getEquipID(SLOT_MAIN) == 16607 and isWeaponSkillKill == false) then
			if(ChaosbringerKills < 200) then
				killer:setVar("ChaosbringerKills", ChaosbringerKills + 1);	
			end
		end
		
	end
	
	if(killer:getCurrentMission(WINDURST) == A_TESTING_TIME) then
		if(killer:hasCompletedMission(WINDURST,A_TESTING_TIME) and killer:getZone():getID() == 118) then
			killer:setVar("testingTime_crea_count",killer:getVar("testingTime_crea_count") + 1);
		elseif(killer:hasCompletedMission(WINDURST,A_TESTING_TIME) == false and killer:getZone():getID() == 117) then
			killer:setVar("testingTime_crea_count",killer:getVar("testingTime_crea_count") + 1);
		end
	end
	
	---------------------------------------------------
	-- Custom Trials
	---------------------------------------------------
	local trial = killer:getVar("customtrial");
	local partyType = killer:checkSoloPartyAlliance();
	local Weapon = killer:getEquipID(SLOT_MAIN);
	local Weapon = killer:getEquipID(SLOT_SUB);
	local Weapon = killer:getEquipID(SLOT_RANGED);
	---------------------
	-- Relic 1 75-85
	---------------------
	
	local kill1 = killer:getVar("Megalobugard_KILLS");
	local kill2 = killer:getVar("Intulo_KILLS");
	local kill3 = killer:getVar("Keeper_of_Halidom_KILLS");
	local kill4 = killer:getVar("Dune_Widow_KILLS");
	local kill5 = killer:getVar("Seww_the_Squidlimbed_KILLS");
	local kill6 = killer:getVar("Mischievous_Micholas_KILLS");
	
	if(killer == nil or killer:getHP() == 0) then
        return;
    end
	---------------------
	-- Trial start count
	---------------------
	if (trial == 1)  or (trial == 2)  or (trial == 3)  or (trial == 4)  or (trial == 5)  or
	   (trial == 6)  or (trial == 7)  or (trial == 8)  or (trial == 9)  or (trial == 10) or 
	   (trial == 11) or (trial == 12) or (trial == 13) or (trial == 14) or (trial == 15) or 
	   (trial == 16) and 
	   (Weapon == 18318) or (Weapon == 15070) or (Weapon == 18336) or (Weapon == 18306) or 
	   (Weapon == 18294) or (Weapon == 18330) or (Weapon == 18276) or (Weapon == 18342) or 
	   (Weapon == 18300) or (Weapon == 18288) or (Weapon == 18312) or (Weapon == 18270) or 
	   (Weapon == 18324) or (Weapon == 18282) or (Weapon == 18264) or (Weapon == 18348) and 
	   (isWeaponSkillKill == false) then 
	   
		if (kill1 < 4) and (mob:getID() == 16875741) then
			killer:setVar("Megalobugard_KILLS", kill1 + 1);
		end
		if (kill2 < 4) and (mob:getID() == 16793742) then
			killer:setVar("Intulo_KILLS", kill2 + 1);
		end
		if (kill3 < 4) and (mob:getID() == 17272978) then
			killer:setVar("Keeper_of_Halidom_KILLS", kill3 + 1);
		end
		if (kill4 < 3) and (mob:getID() == 17244396) then
			killer:setVar("Dune_Widow_KILLS", kill4 + 1);
		end
		if (kill5 < 4) and (mob:getID() == 17498301) then
			killer:setVar("Seww_the_Squidlimbed_KILLS", kill5 + 1);
		end
		if (kill6 < 4) and (mob:getID() == 17281149) then
			killer:setVar("Mischievous_Micholas_KILLS", kill6 + 1);
		end
		------------------
		-- trial complete
		------------------
		if (kill1 == 4) and (kill2 == 4) and (kill3 == 4) and (kill4 == 3) and (kill5 == 4) and (kill6 == 4) then
			killer:setVar("TRIAL_COMPLETE",1);
		end
	end
	
	---------------------
	-- Mythic 1 75-85
	---------------------
	
	local kill15 = killer:getVar("Zareehkl_the_Jubilant_KILLS");
	local kill16 = killer:getVar("Iriz_Irma_KILLS");
	local kill17 = killer:getVar("Velionis_KILLS");
	local kill18 = killer:getVar("Brass_Borer_KILLS");
	local kill19 = killer:getVar("Dextrose_KILLS");
	local kill20 = killer:getVar("Iriri_Samariri_KILLS");
	
	
	---------------------
	-- Mythic Trial start count
	---------------------
	if (trial == 100)  or (trial == 101)  or (trial == 102)  or (trial == 103)  or (trial == 104)  or
	   (trial == 105)  or (trial == 106)  or (trial == 107)  or (trial == 108)  or (trial == 109) or 
	   (trial == 110) or (trial == 111) or (trial == 112) or (trial == 113) or (trial == 114) or 
	   (trial == 115) or (trial == 116) and 
	   (Weapon == 18999) or (Weapon == 18997) or (Weapon == 19000) or (Weapon == 18991) or 
	   (Weapon == 19007) or (Weapon == 19001) or (Weapon == 18992) or (Weapon == 19002) or 
	   (Weapon == 18994) or (Weapon == 18998) or (Weapon == 18995) or (Weapon == 19003) or 
	   (Weapon == 19005) or (Weapon == 19004) or (Weapon == 18989) or (Weapon == 19006) or (Weapon == 18990) and 
	   (isWeaponSkillKill == false) then 
	   
		if (kill15 < 5) and (mob:getID() == 16998873) then
			killer:setVar("Zareehkl_the_Jubilant_KILLS", kill7 + 1);
		end
		if (kill16 < 5) and (mob:getID() == 16986429) then
			killer:setVar("Iriz_Irma_KILLS", kill8 + 1);
		end
		if (kill17 < 5) and (mob:getID() == 16998872) then
			killer:setVar("Velionis_KILLS", kill9 + 1);
		end
		if (kill18 < 5) and (mob:getID() == 17027471) then
			killer:setVar("Brass_Borer_KILLS", kill10 + 1);
		end
		if (kill19 < 5) and (mob:getID() == 17031598) then
			killer:setVar("Dextrose_KILLS", kill11 + 1);
		end
		if (kill20 < 5) and (mob:getID() == 17043888) then
			killer:setVar("Iriri_Samariri_KILLS", kill12 + 1);
		end
		------------------
		-- trial complete
		------------------
		if (kill15 == 5) and (kill16 == 5) and (kill17 == 5) and (kill18 == 5) and (kill19 == 5) and (kill20 == 5) then
			killer:setVar("TRIAL_COMPLETE",1);
		end
	end
	
	---------------------
	-- Mythic 2 85-95
	---------------------
	local kill21 = killer:getVar("Armed_Gears_KILLS");
	local kill22 = killer:getVar("Nosferatu_KILLS");
	local kill23 = killer:getVar("Achamoth_KILLS");
	local kill24 = killer:getVar("Experimental_Lamia_KILLS");
	
	if (trial == 117)  or (trial == 118)  or (trial == 119)  or (trial == 120)  or (trial == 121)  or
	   (trial == 122)  or (trial == 123)  or (trial == 124)  or (trial == 125)  or (trial == 126) or 
	   (trial == 127) or (trial == 128) or (trial == 129) or (trial == 130) or (trial == 131) or 
	   (trial == 132) or (trial == 133) and 
	   (Weapon == 19088) or (Weapon == 19086) or (Weapon == 19089) or (Weapon == 19080) or 
	   (Weapon == 19096) or (Weapon == 19090) or (Weapon == 19081) or (Weapon == 19091) or 
	   (Weapon == 19083) or (Weapon == 19087) or (Weapon == 19084) or (Weapon == 19092) or 
	   (Weapon == 19094) or (Weapon == 19093) or (Weapon == 19098) or (Weapon == 19095) or (Weapon == 19099) and 
	   (isWeaponSkillKill == false) then 
	   
		if (kill21 < 4) and (mob:getID() == 17072178) then
			killer:setVar("Armed_Gears_KILLS", kill21 + 1);
		end
		if (kill22 < 4) and (mob:getID() == 17056158) then
			killer:setVar("Nosferatu_KILLS", kill22 + 1);
		end
		if (kill23 < 4) and (mob:getID() == 17031600) then
			killer:setVar("Achamoth_KILLS", kill23 + 1);
		end
		if (kill24 < 4) and (mob:getID() == 17101205) then
			killer:setVar("Expermimental_Lamia_KILLS", kill24 + 1);
		end
		------------------
		-- trial complete
		------------------
		if (kill21 == 4) and (kill22 == 4) and (kill23 == 4) and (kill24 == 4) then
			killer:setVar("TRIAL_COMPLETE",1);
		end
	end
	
		---------------------
	-- Relic 2 85-95
	---------------------
	local Fafnir = killer:getVar("Fafnir_KILLS");
	local Adamantoise = killer:getVar("Adamantoise_KILLS");
	local Behemoth = killer:getVar("Behemoth_KILLS");
	
	if (trial == 17)  or (trial == 18)  or (trial == 19)  or (trial == 20)  or (trial == 21)  or
	   (trial == 22)  or (trial == 23)  or (trial == 24)  or (trial == 25)  or (trial == 26) or 
	   (trial == 27) or (trial == 28) or (trial == 29) or (trial == 30) or (trial == 31) or 
	   (trial == 32) and 
	   (Weapon == 18646) or (Weapon == 16196) or (Weapon == 18649) or (Weapon == 18644) or 
	   (Weapon == 18642) or (Weapon == 18648) or (Weapon == 18639) or (Weapon == 18578) or 
	   (Weapon == 18643) or (Weapon == 18641) or (Weapon == 18645) or (Weapon == 18638) or 
	   (Weapon == 18647) or (Weapon == 18640) or (Weapon == 18637) or (Weapon == 18650) and 
	   (isWeaponSkillKill == false) then 
	   
		if (Fafnir < 7) and (mob:getID() == 17408018) then
			killer:setVar("Fafnir_KILLS", Fafnir + 1);
		end
		if (Adamantose < 7) and (mob:getID() == 17301537) then
			killer:setVar("Adamantoise_KILLS", Adamantoise + 1);
		end
		if (Behemoth < 7) and (mob:getID() == 17297440) then
			killer:setVar("Behemoth_KILLS", Behemoth + 1);
		end
		------------------
		-- trial complete
		------------------
		if (Fafnir == 7) and (Adamantose == 7) and (Behemoth == 7) then
			killer:setVar("TRIAL_COMPLETE",1);
		end
	end
	
	---------------------
	-- Relic 2 95-99
	---------------------
	local kill10 = killer:getVar("Juggler_Hecatomb_KILLS");
	local kill11 = killer:getVar("Nidhogg_KILLS");
	local kill12 = killer:getVar("King_Behemoth_KILLS");
	local kill13 = killer:getVar("Aspidochelone_KILLS");
	local kill14 = killer:getVar("Ash_Dragon_KILLS");
	
	if (trial == 33)  or (trial == 34)  or (trial == 35)  or (trial == 36)  or (trial == 37)  or
	   (trial == 38)  or (trial == 39)  or (trial == 40)  or (trial == 41)  or (trial == 42) or 
	   (trial == 43) or (trial == 44) or (trial == 45) or (trial == 46) or (trial == 47) or 
	   (trial == 48) and 
	   (Weapon == 18674) or (Weapon == 16198) or (Weapon == 18677) or (Weapon == 18672) or 
	   (Weapon == 18670) or (Weapon == 18676) or (Weapon == 18667) or (Weapon == 18580) or 
	   (Weapon == 18671) or (Weapon == 18669) or (Weapon == 18673) or (Weapon == 18666) or 
	   (Weapon == 18675) or (Weapon == 18668) or (Weapon == 18665) or (Weapon == 18678) and 
	   (isWeaponSkillKill == false) then 
	   
		if (kill10 < 4) and (mob:getID() == 17580248) then
			killer:setVar("Juggler_Hecatomb_KILLS", kill10 + 1);
		end
		if (kill11 < 4) and (mob:getID() == 17408019) then
			killer:setVar("Nidhogg_KILLS", kill11 + 1);
		end
		if (kill12 < 4) and (mob:getID() == 17297441) then
			killer:setVar("King_Behemoth_KILLS", kill12 + 1);
		end
		if (kill13 < 3) and (mob:getID() == 17301538) then
			killer:setVar("Aspidochelone_KILLS", kill13 + 1);
		end
		if (kill14 < 4) and (mob:getID() == 17617147) then
			killer:setVar("Ash_Dragon_KILLS", kill14 + 1);
		end
		------------------
		-- trial complete
		------------------
		if (kill10 == 4) and (kill11 == 4) and (kill12 == 4) and (kill13 == 3) and (kill14 == 4) then
			killer:setVar("TRIAL_COMPLETE",1);
		end
	end
	
		---------------------
	-- Mythic 2 95-99
	---------------------
	local kill25 = killer:getVar("Cerberus_KILLS");
	local kill26 = killer:getVar("Khimara_KILLS");
	local kill27 = killer:getVar("Medusa_KILLS");
	local kill28 = killer:getVar("Gulool_Ja_Ja_KILLS");
	local kill29 = killer:getVar("Gurfurlur_the_Menacing_KILLS");
	local kill30 = killer:getVar("Hydra_KILLS");
	
	if (trial == 134) or (trial == 135)  or (trial == 136)  or (trial == 137)  or (trial == 138) or
	   (trial == 139) or (trial == 140)  or (trial == 141)  or (trial == 142)  or (trial == 143) or 
	   (trial == 144) or (trial == 145) or (trial == 146) or (trial == 147) or (trial == 148) or 
	   (trial == 149) or (trial == 150) and 
	   (Weapon == 19718) or (Weapon == 19716) or (Weapon == 19719) or (Weapon == 19710) or 
	   (Weapon == 19726) or (Weapon == 19720) or (Weapon == 19711) or (Weapon == 19721) or 
	   (Weapon == 19713) or (Weapon == 19717) or (Weapon == 19714) or (Weapon == 19722) or 
	   (Weapon == 19724) or (Weapon == 19723) or (Weapon == 19728) or (Weapon == 19725) or (Weapon == 19729) and 
	   (isWeaponSkillKill == false) then 
	   
		if (kill25 < 3) and (mob:getID() == 17027458) then
			killer:setVar("Cerberus_KILLS", kill25 + 1);
		end
		if (kill26 < 3) and (mob:getID() == 17101201) then
			killer:setVar("Khimara_KILLS", kill26 + 1);
		end
		if (kill27 < 3) and (mob:getID() == 16998862) then
			killer:setVar("Medusa_KILLS", kill27 + 1);
		end
		if (kill28 < 3) and (mob:getID() == 16973900) then
			killer:setVar("Gulool_Ja_Ja_KILLS", kill28 + 1);
		end
		if (kill29 < 3) and (mob:getID() == 17031592) then
			killer:setVar("Gurfurlur_the_Menacing_KILLS", kill29 + 1);
		end
		if (kill30 < 3) and (mob:getID() == 16986355) then
			killer:setVar("Hydra_KILLS", kill30 + 1);
		end		
		------------------
		-- trial complete
		------------------
		if (kill25 == 3) and (kill26 == 3) and (kill27 == 3) and (kill28 == 3) and (kill29 == 3) and (kill30 == 3) then
			killer:setVar("TRIAL_COMPLETE",1);
		end
	end
	
end;