-----------------------------------
--	Area: Ru'Lud Gardens
--	NPC:  Venessa
--	Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/common");
require("scripts/globals/settings");
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Text
-----------------------------------
function textRelic1(player,npc,trade)
	player:SpoofChatPlayer( ": ........FFXILegion Custom Trials!........", MESSAGE_ECHO, npc:getID() );
end;

function textRelic2(player,npc,trade)
	player:SpoofChatPlayer( "Objective Kills:... \nMegalobugard x4\nIntulo x4\nKeeper of Halidom x4\nDune Widow x3\nSeww the Squidlimbed x4\nMischievous Micholas x4\n", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "On completion of your trial please ensure you have at least 1 space free in your inventory.", MESSAGE_SAY, npc:getID() );
	player:injectActionPacket(4, 918);
end;
function textRelic3(player,npc,trade)
	player:SpoofChatPlayer( "Objective Kills:... \nFafnir x7\nAdamantoise x7\nBehemoth x7", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "On completion of your trial please ensure you have at least 1 space free in your inventory.", MESSAGE_SAY, npc:getID() );
	player:injectActionPacket(4, 918);
end;
function textRelic4(player,npc,trade)
	player:SpoofChatPlayer( "Objective Kills:... \nJuggler Hecatomb x4\nNidhogg x4\nKing Behemoth x4\nAspidochelone x4\nAsh Dragon x4", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "On completion of your trial please ensure you have at least 1 space free in your inventory.", MESSAGE_SAY, npc:getID() );
	player:injectActionPacket(4, 918);
end;
function textRelic5(player,npc,trade)
	player:SpoofChatPlayer( "Objective:... \nCollect 50 Tanzanite Jewels and return them to me.", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "On completion of your trial please ensure you have at least 1 space free in your inventory.", MESSAGE_SAY, npc:getID() );
	player:injectActionPacket(4, 918);
end;
-----------------------------------
-- onTrade Action
-----------------------------------
function onTrade(player,npc,trade)
	-----------------------
	-- Custom Trial Start
	-----------------------
	if (trade:hasItemQty(3925,50) and trade:getItemCount() == 50) then
		player:SpoofChatPlayer( "Well done, I see you have brought me the items I requested, Trade them along with the trial item to my friend here for your reward.", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( ": Calls Forth the Magian Moogle.", MESSAGE_ECHO, npc:getID() );
		GetNPCByID(npc:getID+1):setStatus(STATUS_NORMAL);
		player:injectActionPacket(6, 617);
	end
	if (player:getVar("customtrial") >= 1 and trade:hasItemQty(3925,50) == false and trade:hasItemQty(2184,1) == false) then
		player:SpoofChatPlayer( "Sorry you already have a trial active", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( "If you wish to cancel the current trial, please trade me a small fee of,", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( ": 1x imperial bronze piece.", MESSAGE_ECHO, npc:getID() );
	end
	if (trade:hasItemQty(2184,1) and trade:getItemCount() == 1 and player:getVar("customtrial") >= 1) then
		player:setVar("customtrial",0);
		player:setVar("Seww_the_Squidlimbed_KILLS",0);
		player:setVar("Mischievous_Micholas_KILLS",0);
		player:setVar("Keeper_of_Halidom_KILLS",0);
		player:setVar("Megalobugard_KILLS",0);
		player:setVar("Dune_Widow_KILLS",0);
		player:setVar("Intulo_KILLS",0);
		player:setVar("Adamantoise_KILLS",0);
		player:setVar("Behemoth_KILLS",0);
		player:setVar("Fafnir_KILLS",0);
		player:setVar("Juggler_Hecatomb_KILLS",0);
		player:setVar("Nidhogg_KILLS",0);
		player:setVar("King_Behemoth_KILLS",0);
		player:setVar("Aspidochelone_KILLS",0);
		player:setVar("Ash_Dragon_KILLS",0);
		player:SpoofChatPlayer( "Ok your trial has been reset and your are now able to undertake a new trial.", MESSAGE_SAY, npc:getID() );
		player:tradeComplete();
	elseif (trade:hasItemQty(2184,1) and player:getVar("customtrial") == 0) then
		player:SpoofChatPlayer( "I cannot accept that right now, you have already erased your trial.", MESSAGE_SAY, npc:getID() );
	end

	--------------------------------------------
	-- Relic Trials Start.
	--------------------------------------------

	-----------------------
	-- Amanomurakumo
	-----------------------
	if (trade:hasItemQty(18318,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18318;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Amanomurakumo [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",1);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18646,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18646;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Amanomurakumo [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",17);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18674,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18674;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Amanomurakumo [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",33);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19755,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19755;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Amanomurakumo [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",49);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Aegis
	-----------------------
	if (trade:hasItemQty(15070,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 15070;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aegis [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",2);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(16196,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 16196;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aegis [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",18);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(16198,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 16198;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aegis [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",34);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(11927,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 11927;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aegis [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",50);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Annihilator
	-----------------------
	if (trade:hasItemQty(18336,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18336;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Annihilator [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",3);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18649,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18649;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Annihilator [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",19);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18677,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18677;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Annihilator [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",35);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19758,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19758;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Annihilator [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",51);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Apocalypse
	-----------------------
	if (trade:hasItemQty(18306,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18306;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Apocalypse [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",4);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18644,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18644;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Apocalypse [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",20);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18672,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18672;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Apocalypse [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",36);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19753,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19753;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Apocalypse [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",52);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Bravura
	-----------------------
	if (trade:hasItemQty(18294,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18294;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Bravura [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",5);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18642,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18642;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Bravura [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",21);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18670,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18670;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Bravura [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",37);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19751,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19751;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Bravura [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",53);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Claustrum
	-----------------------
	if (trade:hasItemQty(18330,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18330;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Claustrum [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",6);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18648,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18648;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Claustrum [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",22);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18676,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18676;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Claustrum [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",38);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19757,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19757;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Claustrum [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",54);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Excalibur
	-----------------------
	if (trade:hasItemQty(18276,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18276;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Excalibur [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",7);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18639,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18639;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Excalibur [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",23);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18667,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18667;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Excalibur [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",39);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19748,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19748;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Excalibur [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",55);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Gjallarhorn
	-----------------------
	if (trade:hasItemQty(18342,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18342;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gjallarhorn [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",8);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18578,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18578;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gjallarhorn [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",24);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18580,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18580;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gjallarhorn [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",40);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18572,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18572;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gjallarhorn [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",57);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Gungnir
	-----------------------
	if (trade:hasItemQty(18300,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18300;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gungnir [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",9);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18643,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18643;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gungnir [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",25);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18671,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18671;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gungnir [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",41);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19752,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19752;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gungnir [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",58);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Guttler
	-----------------------
	if (trade:hasItemQty(18288,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18288;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Guttler [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",10);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18641,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18641;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Guttler [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",25);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18669,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18669;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Guttler [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",42);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19750,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19750;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Guttler [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",59);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Kikoku
	-----------------------
	if (trade:hasItemQty(18312,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18312;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kikoku [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",11);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18645,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18645;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kikoku [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",26);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18673,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18673;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kikoku [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",43);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19754,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19754;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kikoku [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",60);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Mandau
	-----------------------
	if (trade:hasItemQty(18270,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18270;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mandau [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",12);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18638,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18638;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mandau [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",27);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18666,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18666;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mandau [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",44);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19747,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19747;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mandau [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",61);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Mjollnir
	-----------------------
	if (trade:hasItemQty(18324,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18324;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mjollnir [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",13);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18647,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18647;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mjollnir [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",28);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18675,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18675;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mjollnir [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",45);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19756,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19756;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Mjollnir [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",62);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Ragnarok
	-----------------------
	if (trade:hasItemQty(18282,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18282;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ragnarok [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",14);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18640,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18640;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ragnarok [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",29);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18668,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18668;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ragnarok [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",46);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19749,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19749;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ragnarok [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",63);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Spharai
	-----------------------
	if (trade:hasItemQty(18264,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18264;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Spharai [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",15);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18637,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18637;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Spharai [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",30);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18665,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18665;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Spharai [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",47);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19746,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19746;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Spharai [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",64);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Yoichinoyumi
	-----------------------
	if (trade:hasItemQty(18348,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18348;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Yoichinoyumi [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",16);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18650,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18650;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Yoichinoyumi [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",31);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(18678,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 18678;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Yoichinoyumi [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",48);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19759,1) and trade:getItemCount() == 1 and player:getVar("customtrial") == 0) then
		local ITEM = 19759;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Yoichinoyumi [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",65);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end

end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	local NPC = 17772760;

	if (player:getVar("TRIAL_COMPLETE") == 1) then
		player:SpoofChatPlayer( "Well done, now trade your item to my friend here for your reward.", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( ": Calls Forth the Magian Moogle.", MESSAGE_SAY, npc:getID() );
		GetNPCByID(NPC):setPos(5,0,-86,166);
		GetNPCByID(NPC):showNPC(100);
		GetNPCByID(NPC):setStatus(STATUS_NORMAL);
		player:injectActionPacket(6, 617);
	else
		player:startEvent(0x2750);
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
	-- if(csid == 0x2750) then
		-- npc:setAnimation(0);
	-- end
end;