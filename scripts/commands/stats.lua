
---------------------------------------------------------------------------------------------------
-- func: @stats
-- auth: Omni
-- desc: Prints current Player stats to the in game chatlog.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "is"
};

function onTrigger(player,job)
	local job = player:getMainJob();
	local sjob = player:getSubJob();
	if (job == 1) then 
		job = "WAR";
	elseif (job == 2) then 
		job = "MNK";
	elseif (job == 3) then 
		job = "WHM";
	elseif (job == 4) then 
		job = "BLM";
	elseif (job == 5) then 
		job = "RDM";
	elseif (job == 6) then 
		job = "THF";
	elseif (job == 7) then 
		job = "PLD";
	elseif (job == 8) then 
		job = "DRK";
	elseif (job == 9) then 
		job = "BST";
	elseif (job == 10) then 
		job = "BRD";
	elseif (job == 11) then 
		job = "RNG";
	elseif (job == 12) then 
		job = "SAM";
	elseif (job == 13) then 
		job = "NIN";
	elseif (job == 14) then 
		job = "DRG";
	elseif (job == 15) then 
		job = "SMN";
	elseif (job == 16) then 
		job = "BLU";
	elseif (job == 17) then 
		job = "COR";
	elseif (job == 18) then 
		job = "PUP";
	elseif (job == 19) then 
		job = "DNC";
	elseif (job == 20) then 
		job = "SCH";
	elseif (job == 21) then 
		job = "GEO";
	elseif (job == 22) then 
		job = "RUN";
	return job;
	end
	if (sjob == 1) then 
		sjob = "WAR";
	elseif (sjob == 2) then 
		sjob = "MNK";
	elseif (sjob == 3) then 
		sjob = "WHM";
	elseif (sjob == 4) then 
		sjob = "BLM";
	elseif (sjob == 5) then 
		sjob = "RDM";
	elseif (sjob == 6) then 
		sjob = "THF";
	elseif (sjob == 7) then 
		sjob = "PLD";
	elseif (sjob == 8) then 
		sjob = "DRK";
	elseif (sjob == 9) then 
		sjob = "BST";
	elseif (sjob == 10) then 
		sjob = "BRD";
	elseif (sjob == 11) then 
		sjob = "RNG";
	elseif (sjob == 12) then 
		sjob = "SAM";
	elseif (sjob == 13) then 
		sjob = "NIN";
	elseif (sjob == 14) then 
		sjob = "DRG";
	elseif (sjob == 15) then 
		sjob = "SMN";
	elseif (sjob == 16) then 
		sjob = "BLU";
	elseif (sjob == 17) then 
		sjob = "COR";
	elseif (sjob == 18) then 
		sjob = "PUP";
	elseif (sjob == 19) then 
		sjob = "DNC";
	elseif (sjob == 20) then 
		sjob = "SCH";
	elseif (sjob == 21) then 
		sjob = "GEO";
	elseif (sjob == 22) then 
		sjob = "RUN";
	return sjob;
	end
	player:SpoofChatPlayer( string.format( "JOB: %s:%s/%s:%s", job, player:getMainLvl(), sjob, player:getSubLvl() ), 20);
	player:SpoofChatPlayer( string.format( "HP: %s/%s (%s%%)", player:getHP(), player:getMaxHP(), player:getHPP()), 0x0F);
	player:SpoofChatPlayer( string.format( "MP: %s/%s (%s%%)", player:getMP(), player:getMaxMP(), (player:getMaxMP()/player:getMP()*100)), 0x1C);
	player:SpoofChatPlayer( string.format( "DEF: %s         STR: %s", player:getStat(MOD_DEF), player:getStat(MOD_STR)), 20);
	player:SpoofChatPlayer("--------------------------", 20);
    player:SpoofChatPlayer( string.format( "DEX: %s         VIT: %s", player:getStat(MOD_DEX), player:getStat(MOD_VIT)), 20);
	player:SpoofChatPlayer("--------------------------", 20);
    player:SpoofChatPlayer( string.format( "AGI: %s         INT: %s", player:getStat(MOD_AGI), player:getStat(MOD_INT)), 20);
	player:SpoofChatPlayer("--------------------------", 20);
    player:SpoofChatPlayer( string.format( "MND: %s         CHR: %s", player:getStat(MOD_MND), player:getStat(MOD_CHR)), 20);
	player:SpoofChatPlayer("--------------------------", 20);
    player:SpoofChatPlayer( string.format( "Haste: %s%%", player:getMod(MOD_DOUBLE_ATTACK)), 20);
	player:SpoofChatPlayer( string.format( "Treasure Hunter level: %s%%", player:getMod(MOD_TREASURE_HUNTER)), 20);
	player:SpoofChatPlayer( string.format( "Attack: %s", player:getStat(MOD_ATT)), 20);
	player:SpoofChatPlayer( string.format( "Accuracy: %s%%", player:getMod(MOD_ACC)), 20);
	player:SpoofChatPlayer( string.format( "Double Attack rate: %s%%", player:getMod(MOD_DOUBLE_ATTACK)), 20);
	player:SpoofChatPlayer( string.format( "Triple Attack rate: %s%%", player:getMod(MOD_TRIPLE_ATTACK)), 20);
	player:SpoofChatPlayer( string.format( "Quadruple Attack rate: %s%%", player:getMod(MOD_QUAD_ATTACK)), 20);
	player:SpoofChatPlayer( string.format( "Critical Hit rate: %s%%", player:getMod(MOD_CRITHITRATE)), 20);
	player:SpoofChatPlayer( string.format( "Ranged Attack: %s%%", player:getMod(MOD_RATTP)), 20);
	player:SpoofChatPlayer( string.format( "Ranged Attack Accuracy: %s%%", player:getMod(MOD_RACCP)), 20);
	player:SpoofChatPlayer( string.format( "Weaponskill Accuracy: %s%%", player:getMod(MOD_WSACC)), 20);
	player:SpoofChatPlayer( string.format( "Magic Attack: +%s", player:getMod(MOD_MATT)), 20);
	player:SpoofChatPlayer( string.format( "Magic Defense: +%s", player:getMod(MOD_MATT)), 20);
	player:SpoofChatPlayer( string.format( "Magic Accuracy: +%s", player:getMod(MOD_MACC)), 20);
	player:SpoofChatPlayer( string.format( "Cure Potency: +%s", player:getMod(MOD_CURE_POTENCY)), 20);
end;