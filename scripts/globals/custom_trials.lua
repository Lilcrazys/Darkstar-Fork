-----------------------------------
--
-- Functions for LegionXI custom trials content
-- Author: Teo & Omni LegionFFXI
-----------------------------------

function doCustomTrial(mob, killer, isWeaponSkillKill)
	-- print("mob:checkBaseExp()",mob:checkBaseExp());
	-- killer:PrintToPlayer("TEST!");
	---------------------------------------------------
	-- Custom Trials
	---------------------------------------------------
	local trial = killer:getVar("customtrial");
	local partyType = killer:checkSoloPartyAlliance();
	local MAIN = killer:getEquipID(SLOT_MAIN);
	local SUB = killer:getEquipID(SLOT_SUB);
	local RANGED = killer:getEquipID(SLOT_RANGED);
	---------------------
	-- Relic 1 75-85
	---------------------
	local SewwtheSquidlimbedKillCount = 0;
	local MegalobugardKillCount = 0;
	local DuneWidowKillCount = 0;
	local MischievousCount = 0;
	local IntuloKillCount = 0;
	local KeeperKillCount = 0;

	if (killer:getVar("Seww_the_Squidlimbed_KILLS") ~= nil) then
		SewwtheSquidlimbedKillCount = killer:getVar("Seww_the_Squidlimbed_KILLS")
	end
	if (killer:getVar("Mischievous_Micholas_KILLS") ~= nil) then
		MischievousCount = killer:getVar("Mischievous_Micholas_KILLS")
	end
	if (killer:getVar("Megalobugard_KILLS") ~= nil) then
		MegalobugardKillCount = killer:getVar("Megalobugard_KILLS")
	end
	if (killer:getVar("Keeper_of_Halidom_KILLS") ~= nil) then
		KeeperKillCount = killer:getVar("Keeper_of_Halidom_KILLS")
	end
	if (killer:getVar("Dune_Widow_KILLS") ~= nil) then
		DuneWidowKillCount = killer:getVar("Dune_Widow_KILLS")
	end
	if (killer:getVar("Intulo_KILLS") ~= nil) then
		IntuloKillCount = killer:getVar("Intulo_KILLS")
	end

	---------------------
	-- Trial start count
	---------------------

	if ( (trial >= 1 and trial <= 16) and (MAIN == 18318 or SUB == 15070 or
		MAIN == 18306 or MAIN == 18294 or MAIN == 18330 or MAIN == 18276 or
		RANGED == 18342 or MAIN == 18300 or MAIN == 18288 or MAIN == 18312 or
		MAIN == 18270 or MAIN == 18324 or MAIN == 18282 or MAIN == 18264 or
		RANGED == 18348 or RANGED == 18336 ) ) then

		if (SewwtheSquidlimbedKillCount < 4 and mob:getID() == 17498301) then
			killer:setVar("Seww_the_Squidlimbed_KILLS", SewwtheSquidlimbedKillCount + 1);
		end
		if (MischievousCount < 4 and mob:getID() == 17281149) then
			killer:setVar("Mischievous_Micholas_KILLS", MischievousCount + 1);
		end
		if (KeeperKillCount < 4 and mob:getID() == 17272978) then
			killer:setVar("Keeper_of_Halidom_KILLS", KeeperKillCount + 1);
		end
		if (MegalobugardKillCount < 4 and mob:getID() == 16875741) then
			killer:setVar("Megalobugard_KILLS", MegalobugardKillCount + 1);
		end
		if (DuneWidowKillCount < 3 and mob:getID() == 17244396) then
			killer:setVar("Dune_Widow_KILLS", DuneWidowKillCount + 1);
		end
		if (IntuloKillCount < 4 and mob:getID() == 16793742) then
			killer:setVar("Intulo_KILLS", IntuloKillCount + 1);
		end

		------------------
		-- trial complete
		------------------
		if (MegalobugardKillCount == 4 and Seww_the_SquidlimbedKillCount == 4 and MischievousCount == 4 and
			Dune_WidowKillCount == 3 and Keeper_of_HalidomKillCount == 4 and  IntuloKillCount == 4) then
			killer:setVar("TRIAL_COMPLETE",1);
			killer:PrintToPlayer("Your trial is complete!.");
		end
	end

	---------------------
	-- Relic 2 85-95
	---------------------
	local AdamantoiseKillCount = 0;
	local BehemothKillCount = 0;
	local FafnirKillCount = 0;

	if (killer:getVar("Adamantoise_KILLS") ~= nil) then
		AdamantoiseKillCount = killer:getVar("Adamantoise_KILLS")
	end

	if (killer:getVar("Behemoth_KILLS") ~= nil) then
		BehemothKillCount = killer:getVar("Behemoth_KILLS")
	end

	if (killer:getVar("Fafnir_KILLS") ~= nil) then
		FafnirKillCount = killer:getVar("Fafnir_KILLS")
	end

	if ((trial >= 17 and trial <= 32) and (MAIN == 18646 or SUB == 16196 or
		MAIN == 18644 or MAIN == 18642 or MAIN == 18648 or MAIN == 18639 or
		RANGED == 18578 or MAIN == 18643 or MAIN == 18641 or MAIN == 18645 or
		MAIN == 18638 or MAIN == 18647 or MAIN == 18640 or MAIN == 18637 or
		RANGED == 18650 or RANGED == 18649) ) then

		if (AdamantoiseKillCount < 7 and mob:getID() == 17301537) then
			killer:setVar("Adamantoise_KILLS", AdamantoiseKillCount + 1);
		end
		if (BehemothKillCount < 7 and mob:getID() == 17297440) then
			killer:setVar("Behemoth_KILLS", BehemothKillCount + 1);
		end
		if (FafnirKillCount < 7 and mob:getID() == 17408018) then
			killer:setVar("Fafnir_KILLS", FafnirKillCount + 1);
		end
		------------------
		-- trial complete
		------------------
		if (AdamantoiseKillCount == 7 and BehemothKillCount == 7 and FafnirKillCount == 7) then
			killer:setVar("TRIAL_COMPLETE",1);
			killer:PrintToPlayer("Your trial is complete!.");
		end
	end

	---------------------
	-- Relic 3 95-99
	---------------------
	local AspidocheloneKillCount = 0;
	local KingBehemothKillCount = 0;
	local AshDragonKillCount = 0;
	local JugglerKillCount = 0;
	local NidhoggKillCount = 0;

	if (killer:getVar("Aspidochelone_KILLS") ~= nil) then
		AspidocheloneKillCount = killer:getVar("Aspidochelone_KILLS")
	end
	if (killer:getVar("King_Behemoth_KILLS") ~= nil) then
		KingBehemothKillCount = killer:getVar("King_Behemoth_KILLS")
	end
	if (killer:getVar("Juggler_Hecatomb_KILLS") ~= nil) then
		JugglerKillCount = killer:getVar("Juggler_Hecatomb_KILLS")
	end
	if (killer:getVar("Ash_Dragon_KILLS") ~= nil) then
		AshDragonKillCount = killer:getVar("Ash_Dragon_KILLS")
	end
	if (killer:getVar("Nidhogg_KILLS") ~= nil) then
		NidhoggKillCount = killer:getVar("Nidhogg_KILLS")
	end

	if ((trial >= 33 and trial <= 48) and (MAIN == 18674 or
		SUB == 16198 or RANGED == 18677 or MAIN == 18672 or MAIN == 18670 or
		MAIN == 18676 or MAIN == 18667 or RANGED == 18580 or MAIN == 18671 or
		MAIN == 18669 or MAIN == 18673 or MAIN == 18666 or MAIN == 18675 or
		MAIN == 18668 or MAIN == 18665 or RANGED == 18678) ) then

		if (JugglerKillCount < 4 and mob:getID() == 17580248) then
			killer:setVar("Juggler_Hecatomb_KILLS", JugglerKillCount + 1);
		end
		if (NidhoggKillCount < 4 and mob:getID() == 17408019) then
			killer:setVar("Nidhogg_KILLS", NidhoggKillCount + 1);
		end
		if (KingBehemothKillCount < 4 and mob:getID() == 17297441) then
			killer:setVar("King_Behemoth_KILLS", KingBehemothKillCount + 1);
		end
		if (AspidocheloneKillCount < 3 and mob:getID() == 17301538) then
			killer:setVar("Aspidochelone_KILLS", AspidocheloneKillCount + 1);
		end
		if (AshDragonKillCount < 4 and mob:getID() == 17617147) then
			killer:setVar("Ash_Dragon_KILLS", AshDragonKillCount + 1);
		end
		------------------
		-- trial complete
		------------------
		if (JugglerKillCount == 4 and NidhoggKillCount == 4 and KingBehemothKillCount == 4 and
			AspidocheloneKillCount == 3 and AshDragonKillCount == 4) then
			killer:setVar("TRIAL_COMPLETE",1);
			killer:PrintToPlayer("Your trial is complete!.");
		end
	end

-- The below needs cleanup badly.
--[[


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
	if (trial == 100)  or (trial == 101)  or (trial == 102)	 or (trial == 103)	or (trial == 104)  or
	   (trial == 105)  or (trial == 106)  or (trial == 107)	 or (trial == 108)	or (trial == 109) or
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

	if ( (trial >= 117 and trial <= 133) and
	   (Weapon == 19088) or (Weapon == 19086) or (Weapon == 19089) or (Weapon == 19080) or
	   (Weapon == 19096) or (Weapon == 19090) or (Weapon == 19081) or (Weapon == 19091) or
	   (Weapon == 19083) or (Weapon == 19087) or (Weapon == 19084) or (Weapon == 19092) or
	   (Weapon == 19094) or (Weapon == 19093) or (Weapon == 19098) or (Weapon == 19095) or (Weapon == 19099) and
	   (isWeaponSkillKill == false) ) then

		if (kill21 < 4 and mob:getID() == 17072178) then
			killer:setVar("Armed_Gears_KILLS", kill21 + 1);
		end
		if (kill22 < 4 and mob:getID() == 17056158) then
			killer:setVar("Nosferatu_KILLS", kill22 + 1);
		end
		if (kill23 < 4 and mob:getID() == 17031600) then
			killer:setVar("Achamoth_KILLS", kill23 + 1);
		end
		if (kill24 < 4 and mob:getID() == 17101205) then
			killer:setVar("Expermimental_Lamia_KILLS", kill24 + 1);
		end
		------------------
		-- trial complete
		------------------
		if (kill21 == 4 and kill22 == 4 and kill23 == 4 and kill24 == 4) then
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

	if (trial == 134) or (trial == 135)	 or (trial == 136)	or (trial == 137)  or (trial == 138) or
	   (trial == 139) or (trial == 140)	 or (trial == 141)	or (trial == 142)  or (trial == 143) or
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
]]--
end;