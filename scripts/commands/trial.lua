-----------------------------------------------
-- func: @trial
-- desc: Shows what trials and how many kills.
-----------------------------------------------
-- require("scripts/globals/common");
-- require("scripts/globals/status");
-- require("scripts/globals/spoofchat");
-----------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local TRIAL = player:getVar("CustomTrial");
    if (TRIAL == 0 or TRIAL == nil) then
        player:PrintToPlayer("The 'CustomTrial' variable is missing!");
    else
        local Relic1 = {18318, 15070, 18336, 18306, 18294, 18330, 18276, 18342, 18300, 18288, 18312, 18270, 18324, 18282, 18264, 18348}
        local Relic2 = {18646, 16196, 18649, 18644, 18642, 18648, 18639, 18578, 18643, 18641, 18645, 18638, 18647, 18640, 18637, 18650}
        local Relic3 = {18674, 16198, 18677, 18672, 18670, 18676, 18667, 18580, 18671, 18669, 18673, 18666, 18675, 18668, 18665, 18678}
        local Mythic1 = {18999, 18997, 19000, 18991, 19007, 19001, 18992, 19002, 18994, 18998, 18995, 19003, 19005, 19004, 18989, 19006, 18990}
        local Mythic2 = {19088, 19086, 19089, 19080, 19096, 19090, 19081, 19091, 19803, 19087, 19084, 19092, 19094, 19093, 19098, 19095, 19099}
        local Mythic3 = {19718, 19716, 19719, 19710, 19726, 19720, 19711, 19721, 19713, 19717, 19714, 19722, 19724, 19723, 19728, 19725, 19729}

        player:PrintToPlayer(string.format("Trial ID: %u", TRIAL));
        player:PrintToPlayer(string.format("Completion status: %u", player:getVar("TRIAL_COMPLETE")));

        if (utils.inTable(Relic1, player:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Megalobugard_KILLS %u", player:getVar("Megalobugard_KILLS")));
            player:PrintToPlayer(string.format("Intulo_KILLS %u", player:getVar("Intulo_KILLS")));
            player:PrintToPlayer(string.format("Keeper_of_Halidom_KILLS %u", player:getVar("Keeper_of_Halidom_KILLS")));
            player:PrintToPlayer(string.format("Dune_Widow_KILLS %u", player:getVar("Dune_Widow_KILLS")));
            player:PrintToPlayer(string.format("Seww_the_Squidlimbed_KILLS %u", player:getVar("Seww_the_Squidlimbed_KILLS")));
            player:PrintToPlayer(string.format("Mischievous_Micholas_KILLS %u", player:getVar("Mischievous_Micholas_KILLS")));
        elseif (utils.inTable(Relic2, player:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Adamantoise_KILLS %u", player:getVar("Adamantoise_KILLS")));
            player:PrintToPlayer(string.format("Behemoth_KILLS %u", player:getVar("Behemoth_KILLS")));
            player:PrintToPlayer(string.format("Fafnir_KILLS %u", player:getVar("Fafnir_KILLS")));
        elseif (utils.inTable(Relic3, player:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Aspidochelone_KILLS %u", player:getVar("Aspidochelone_KILLS")));
            player:PrintToPlayer(string.format("King_Behemoth_KILLS %u", player:getVar("King_Behemoth_KILLS")));
            player:PrintToPlayer(string.format("Juggler_Hecatomb_KILLS %u", player:getVar("Juggler_Hecatomb_KILLS")));
            player:PrintToPlayer(string.format("Ash_Dragon_KILLS %u", player:getVar("Ash_Dragon_KILLS")));
            player:PrintToPlayer(string.format("Nidhogg_KILLS %u", player:getVar("Nidhogg_KILLS")));
        elseif (utils.inTable(Mythic1, player:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Zareehkl_the_Jubilant_KILLS %u", player:getVar("Zareehkl_the_Jubilant_KILLS")));
            player:PrintToPlayer(string.format("Brass_Borer_KILLS %u", player:getVar("Brass_Borer_KILLS")));
            player:PrintToPlayer(string.format("Iriri_Samariri_KILLS %u", player:getVar("Iriri_Samariri_KILLS")));
            player:PrintToPlayer(string.format("Dextrose_KILLS %u", player:getVar("Dextrose_KILLS")));
            player:PrintToPlayer(string.format("Velionis_KILLS %u", player:getVar("Velionis_KILLS")));
            player:PrintToPlayer(string.format("Iriz_Irma_KILLS %u", player:getVar("Iriz_Irma_KILLS")));
        elseif (utils.inTable(Mythic2, player:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Experimental_Lamia_KILLS %u", player:getVar("Experimental_Lamia_KILLS")));
            player:PrintToPlayer(string.format("Nosferatu_KILLS %u", player:getVar("Nosferatu_KILLS")));
            player:PrintToPlayer(string.format("Armed_Gears_KILLS %u", player:getVar("Armed_Gears_KILLS")));
            player:PrintToPlayer(string.format("Achamoth_KILLS %u", player:getVar("Achamoth_KILLS")));
        elseif (utils.inTable(Mythic3, player:getVar("CustomTrial")) == true) then
            player:PrintToPlayer(string.format("Gurfurlur_the_Menacing_KILLS %u", player:getVar("Gurfurlur_the_Menacing_KILLS")));
            player:PrintToPlayer(string.format("Gulool_Ja_Ja_KILLS %u", player:getVar("Gulool_Ja_Ja_KILLS")));
            player:PrintToPlayer(string.format("Cerberus_KILLS %u", player:getVar("Cerberus_KILLS")));
            player:PrintToPlayer(string.format("Khimara_KILLS %u", player:getVar("Khimara_KILLS")));
            player:PrintToPlayer(string.format("Medusa_KILLS %u", player:getVar("Medusa_KILLS")));
            player:PrintToPlayer(string.format("Hydra_KILLS %u", player:getVar("Hydra_KILLS")));
        else
            player:PrintToPlayer("You have a CustomTrial variable set, but it is one not handled by this command.");
        end
    end

--[[ Broken and unfinished Omnicode past this point...
function RelicTrial1(player,npc)
	local kill1 = player:getVar("Megalobugard_KILLS");
	local kill2 = player:getVar("Intulo_KILLS");
	local kill3 = player:getVar("Keeper_of_Halidom_KILLS");
	local kill4 = player:getVar("Dune_Widow_KILLS");
	local kill5 = player:getVar("Seww_the_Squidlimbed_KILLS");
	local kill6 = player:getVar("Mischievous_Micholas_KILLS");

	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Megalobugard" , kill1, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Intulo" , kill2, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Keeper of Halidom" , kill3, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Dune Widow" , kill4, "/3)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Seww the Squidlimbed" , kill5, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Mischievous Micholas" , kill6, "/4)."), MESSAGE_ECHO, nil );
end;

function MythicTrial1(player,npc)
	local kill15 = player:getVar("Zareehkl_the_Jubilant_KILLS");
	local kill16 = player:getVar("Iriz_Irma_KILLS");
	local kill17 = player:getVar("Velionis_KILLS");
	local kill18 = player:getVar("Brass_Borer_KILLS");
	local kill19 = player:getVar("Dextrose_KILLS");
	local kill20 = player:getVar("Iriri_Samariri_KILLS");

	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Zareehkl the Jubilant" , kill15, "/5)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Iriz Irma" , kill16, "/5)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Velionis" , kill17, "/5)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Brass Borer" , kill18, "/5)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Dextrose" , kill19, "/5)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Iriri Samariri" , kill20, "/5)."), MESSAGE_ECHO, nil );
end;

function MythicTrial2(player,npc)
	local kill21 = player:getVar("Armed_Gears_KILLS");
	local kill22 = player:getVar("Nosferatu_KILLS");
	local kill23 = player:getVar("Achamoth_KILLS");
	local kill24 = player:getVar("Experimental_Lamia_KILLS");

	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Armed Gears" , kill21, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Nosferatu" , kill22, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Achamoth" , kill23, "/4)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Experimental Lamia" , kill24, "/4)."), MESSAGE_ECHO, nil );
end;

function MythicTrial3(player,npc)
	local kill25 = player:getVar("Cerberus_KILLS");
	local kill26 = player:getVar("Khimara_KILLS");
	local kill27 = player:getVar("Medusa_KILLS");
	local kill28 = player:getVar("Gulool_Ja_Ja_KILLS");
	local kill29 = player:getVar("Gurfurlur_the_Menacing_KILLS");
	local kill30 = player:getVar("Hydra_KILLS");

	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Cerberus" , kill25, "/3)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Khimara" , kill26, "/3)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Medusa" , kill27, "/3)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Gulool Ja Ja" , kill28, "/3)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Gurfurlur the Menacing" , kill29, "/3)."), MESSAGE_ECHO, nil );
	player:SpoofChatPlayer( string.format( "%s %s%s",":////(Hydra" , kill30, "/3)."), MESSAGE_ECHO, nil );
end;


function onTrigger(player,npc)
	local trail = player:getVar("CustomTrial");

	if (player:getVar("CustomTrial") == 0) then
		player:SpoofChatPlayer("You are not currently undertaking any trials.", MESSAGE_ECHO, nil );
	end

	if (player:getVar("CustomTrial") == 18318) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Amanomurakumo [75-85]   ~~~~~"," Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 15070) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aegis [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18336) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Annihilator [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18306) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Apocalypse [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18294) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Bravura [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18330) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Claustrum [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18276) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Excalibur [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18342) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gjallarhorn [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18300) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gungnir [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18288) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Guttler [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18312) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kikoku [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18270) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Mandau [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18324) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Mjollnir [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18282) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ragnarok [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18264) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Spharai [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18348) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Yoichinoyumi [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		RelicTrial1(player,npc);
	end

	---------------------
	-- Mythic Trials 75-85
	---------------------
	if (player:getVar("CustomTrial") == 18999) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aymur [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 18997) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Burtgang [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
	if (player:getVar("CustomTrial") == 19000) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Carnwenhan [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18991) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Conqueror [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19007) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Death Penalty [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19001) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gastraphetes [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18992) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Glanzfaust [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19002) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kogarasumaru [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18994) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Laevateinn [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18998) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Liberator [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18995) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Murgleis [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19003) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nagi [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19005) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nirvana [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19004) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ryunohige [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18989) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Terpsichore [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 19006) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tizona [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
		if (player:getVar("CustomTrial") == 18990) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tupsimati [75-85]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial1(player,npc);
	end
	---------------------
	-- Mythic Trials 85-95
	---------------------
	if (player:getVar("CustomTrial") == 19088) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aymur [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
	if (player:getVar("CustomTrial") == 19086) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Burtgang [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
	if (player:getVar("CustomTrial") == 19089) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Carnwenhan [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19080) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Conqueror [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19096) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Death Penalty [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19090) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gastraphetes [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19081) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Glanzfaust [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19091) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kogarasumaru [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19083) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Laevateinn [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19087) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Liberator [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19084) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Murgleis [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19092) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nagi [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19094) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nirvana [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19093) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ryunohige [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19098) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Terpsichore [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19095) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tizona [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
		if (player:getVar("CustomTrial") == 19099) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tupsimati [85-95]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial2(player,npc);
	end
	---------------------
	-- Mythic Trials 95-99
	---------------------
	if (player:getVar("CustomTrial") == 19718) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aymur [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
	if (player:getVar("CustomTrial") == 19716) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Burtgang [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
	if (player:getVar("CustomTrial") == 19719) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Carnwenhan [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19710) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Conqueror [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19726) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Death Penalty [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19720) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gastraphetes [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19711) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Glanzfaust [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19721) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kogarasumaru [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19713) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Laevateinn [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19717) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Liberator [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19714) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Murgleis [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19722) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nagi [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19724) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nirvana [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19723) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ryunohige [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19728) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Terpsichore [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19725) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tizona [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
		if (player:getVar("CustomTrial") == 19729) then
		player:SpoofChatPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tupsimati [95-99]   ~~~~~","Objectives Defeated:"), MESSAGE_ECHO, nil );
		MythicTrial3(player,npc);
	end
]]
end;