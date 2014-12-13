-----------------------------------------------
-- func: trial
-- auth: Omni
-- desc: Shows what trial and how many kills.
-----------------------------------------------
require("scripts/globals/common");
require("scripts/globals/status");
-----------------------------------------------
cmdprops =
{
    permission = 1,
    parameters = "i"
};
function RelicTrial1(player,npc)
	local kill1 = player:getVar("Megalobugard_KILLS");
	local kill2 = player:getVar("Intulo_KILLS");
	local kill3 = player:getVar("Keeper_of_Halidom_KILLS");
	local kill4 = player:getVar("Dune_Widow_KILLS");
	local kill5 = player:getVar("Seww_the_Squidlimbed_KILLS");
	local kill6 = player:getVar("Mischievous_Micholas_KILLS");

	player:EchoToPlayer( string.format( "%s %s%s",":////(Megalobugard" , kill1, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Intulo" , kill2, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Keeper of Halidom" , kill3, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Dune Widow" , kill4, "/3)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Seww the Squidlimbed" , kill5, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Mischievous Micholas" , kill6, "/4)."));
end;

function MythicTrial1(player,npc)
	local kill15 = player:getVar("Zareehkl_the_Jubilant_KILLS");
	local kill16 = player:getVar("Iriz_Irma_KILLS");
	local kill17 = player:getVar("Velionis_KILLS");
	local kill18 = player:getVar("Brass_Borer_KILLS");
	local kill19 = player:getVar("Dextrose_KILLS");
	local kill20 = player:getVar("Iriri_Samariri_KILLS");

	player:EchoToPlayer( string.format( "%s %s%s",":////(Zareehkl the Jubilant" , kill15, "/5)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Iriz Irma" , kill16, "/5)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Velionis" , kill17, "/5)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Brass Borer" , kill18, "/5)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Dextrose" , kill19, "/5)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Iriri Samariri" , kill20, "/5)."));
end;

function MythicTrial2(player,npc)
	local kill21 = player:getVar("Armed_Gears_KILLS");
	local kill22 = player:getVar("Nosferatu_KILLS");
	local kill23 = player:getVar("Achamoth_KILLS");
	local kill24 = player:getVar("Experimental_Lamia_KILLS");

	player:EchoToPlayer( string.format( "%s %s%s",":////(Armed Gears" , kill21, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Nosferatu" , kill22, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Achamoth" , kill23, "/4)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Experimental Lamia" , kill24, "/4)."));
end;

function MythicTrial3(player,npc)
	local kill25 = player:getVar("Cerberus_KILLS");
	local kill26 = player:getVar("Khimara_KILLS");
	local kill27 = player:getVar("Medusa_KILLS");
	local kill28 = player:getVar("Gulool_Ja_Ja_KILLS");
	local kill29 = player:getVar("Gurfurlur_the_Menacing_KILLS");
	local kill30 = player:getVar("Hydra_KILLS");

	player:EchoToPlayer( string.format( "%s %s%s",":////(Cerberus" , kill25, "/3)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Khimara" , kill26, "/3)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Medusa" , kill27, "/3)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Gulool Ja Ja" , kill28, "/3)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Gurfurlur the Menacing" , kill29, "/3)."));
	player:EchoToPlayer( string.format( "%s %s%s",":////(Hydra" , kill30, "/3)."));
end;


function onTrigger(player,npc)
	local trail = player:getVar("customtrial");

	if (player:getVar("customtrial") == 0) then
		player:EchoToPlayer("You are not currently undertaking any trials.");
	end

	if (player:getVar("customtrial") == 1) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Amanomurakumo [75-85]   ~~~~~"," Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 2) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aegis [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 3) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Annihilator [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 4) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Apocalypse [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 5) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Bravura [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 6) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Claustrum [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 7) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Excalibur [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 8) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gjallarhorn [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 9) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gungnir [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 10) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Guttler [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 11) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kikoku [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 12) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Mandau [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 13) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Mjollnir [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 14) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ragnarok [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 15) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Spharai [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 16) then
		player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Yoichinoyumi [75-85]   ~~~~~","Objectives Defeated:"));
		RelicTrial1(player,npc);
	end

	---------------------
	------ Mythic Trials 75-85
	---------------------
	if (player:getVar("customtrial") == 100) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aymur [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 101) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Burtgang [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
	if (player:getVar("customtrial") == 102) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Carnwenhan [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 103) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Conqueror [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 104) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Death Penalty [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 105) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gastraphetes [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 106) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Glanzfaust [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 107) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kogarasumaru [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 108) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Laevateinn [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 109) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Liberator [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 110) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Murgleis [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 111) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nagi [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 112) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nirvana [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 113) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ryunohige [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 114) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Terpsichore [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 115) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tizona [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		if (player:getVar("customtrial") == 116) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tupsimati [75-85]   ~~~~~","Objectives Defeated:"));
	MythicTrial1(player,npc);
	end
		---------------------
	------ Mythic Trials 85-95
	---------------------
	if (player:getVar("customtrial") == 117) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aymur [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
	if (player:getVar("customtrial") == 118) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Burtgang [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
	if (player:getVar("customtrial") == 119) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Carnwenhan [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 120) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Conqueror [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 121) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Death Penalty [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 122) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gastraphetes [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 123) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Glanzfaust [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 124) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kogarasumaru [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 125) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Laevateinn [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 126) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Liberator [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 127) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Murgleis [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 128) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nagi [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 129) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nirvana [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 130) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ryunohige [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 131) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Terpsichore [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 132) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tizona [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
		if (player:getVar("customtrial") == 133) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tupsimati [85-95]   ~~~~~","Objectives Defeated:"));
	MythicTrial2(player,npc);
	end
	---------------------
	------ Mythic Trials 95-99
	---------------------
	if (player:getVar("customtrial") == 134) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Aymur [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
	if (player:getVar("customtrial") == 135) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Burtgang [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
	if (player:getVar("customtrial") == 136) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Carnwenhan [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 137) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Conqueror [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 138) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Death Penalty [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 139) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Gastraphetes [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 140) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Glanzfaust [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 141) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Kogarasumaru [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 142) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Laevateinn [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 143) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Liberator [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 144) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Murgleis [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 145) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nagi [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 146) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Nirvana [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 147) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Ryunohige [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 148) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Terpsichore [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 149) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tizona [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
		if (player:getVar("customtrial") == 150) then
	player:EchoToPlayer( string.format( "%s%s","~~~~~  Currently undertaking Custom Trial Tupsimati [95-99]   ~~~~~","Objectives Defeated:"));
	MythicTrial3(player,npc);
	end
end;