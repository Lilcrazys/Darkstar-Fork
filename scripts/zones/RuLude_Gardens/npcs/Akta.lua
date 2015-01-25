-----------------------------------
--	Area: Ru'Lud Gardens
--	NPC:  Akta
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
	--[[-------------------------------------------------------------------------------------------------------------------------------
	\n indicates a new line in the string, use it like this: "Hi \nHello World", this will look like this in the game,
	Akta: Hi
	Hello World
	or just create a new Spoof Line.
	-------------------------------------------------------------------------------------------------------------------------------]]--
	function textRelic2(player,npc,trade)
	player:SpoofChatPlayer( "Objective:... \nZareehkl the Jubilant x 5\nIriz Ima x5\nVelionis x5\nBrass Borer x5\nDextrose x5\nIriri Samariri x5", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "On completion of your trial please ensure you have at least 1 space free in your inventory.", MESSAGE_SAY, npc:getID() );
	player:injectActionPacket(4, 918);
end;
function textRelic3(player,npc,trade)
	player:SpoofChatPlayer( "Objective Kills:... \nArmed Gears x4\nNosferatu x4\nAchamoth x4\nExperimental Lamia x4", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "On completion of your trial please ensure you have at least 1 space free in your inventory.", MESSAGE_SAY, npc:getID() );
	player:injectActionPacket(4, 918);
end;
function textRelic4(player,npc,trade)
	player:SpoofChatPlayer( "Objective Kills:... \nCerberus x3\nKhimara x3\nMedusa x3\nGulool Ja Ja x3\nGurfurlur the Menacing x3\nHydra x3", MESSAGE_SAY, npc:getID() );
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
	--Custom Trial Start
	-----------------------
	if (trade:hasItemQty(3925,50)) and (trade:getItemCount() == 50) then
		player:SpoofChatPlayer( "Well done, I see you have brought me the items I requested, Trade them along with the trial item to my friend here for your reward.", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( ": Calls Forth the Magian Moogle.", MESSAGE_ECHO, npc:getID() );
		GetNPCByID(npc:getID()+134):setStatus(STATUS_NORMAL);
		player:injectActionPacket(6, 617);
	end
	if (player:getVar("customtrial") >= 1) and (trade:hasItemQty(3925,50) == false) and (trade:hasItemQty(2184,1) == false) then
		player:SpoofChatPlayer( "Sorry you already have a trial active", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( "If you wish to cancel the current trial, please trade a small fee of 1x imperial bronze piece to Venessa.", MESSAGE_SAY, npc:getID() );
	end

	--------------------------------------------
	-- 				Mythic Trials
	--------------------------------------------

	-----------------------
	-- Aymur
	-----------------------
	if (trade:hasItemQty(18999,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18999;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade); -- Generic Legion trial text (see top of page).
			player:SpoofChatPlayer( ": 'Aymur [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade); -- Text asking to collect Glaviod shells (see top of page).
			player:setVar("customtrial",100);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19088,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19088;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aymur [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",117);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19718,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19718;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aymur [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",134);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19827,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19827;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Aymur [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",49);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Burtgang
	-----------------------
	if (trade:hasItemQty(18997,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18997;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Burtgang [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",101);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19086,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19086;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Burtgang [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",118);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19716,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19716;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Burtgang [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",135);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19825,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19825;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Burtgang [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",50);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Carnwenhan
	-----------------------
	if (trade:hasItemQty(19000,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19000;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Carnwenhan [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",102);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19089,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19089;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Carnwenhan [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",119);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19719,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19719;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Carnwenhan [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",136);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19828,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19828;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Carnwenhan [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",51);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Conqueror
	-----------------------
	if (trade:hasItemQty(18991,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18991;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Conqueror [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",103);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19080,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19080;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Conqueror [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",120);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19710,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19710;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Conqueror [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",137);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19819,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19819;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Conqueror [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",52);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Death Penalty
	-----------------------
	if (trade:hasItemQty(19007,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19007;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Death Penalty [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",104);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19096,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19096;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Death Penalty [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",121);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19726,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19726;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Death Penalty [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",138);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19835,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19835;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Death Penalty [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",53);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Gastraphetes
	-----------------------
	if (trade:hasItemQty(19001,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19001;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gastraphetes [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",105);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19090,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19090;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gastraphetes [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",122);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19720,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19720;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gastraphetes [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",139);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19829,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19829;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Gastraphetes [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",54);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Glanzfaust
	-----------------------
	if (trade:hasItemQty(18992,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18992;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Glanzfaust [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",106);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19081,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19081;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Glanzfaust [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",123);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19711,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19711;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Glanzfaust [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",140);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19820,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19820;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Glanzfaust [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",55);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Kogarasumaru
	-----------------------
	if (trade:hasItemQty(19002,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19002;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kogarasumaru [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",107);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19091,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19091;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kogarasumaru [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",124);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19721,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19721;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kogarasumaru [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",141);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19830,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19830;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Kogarasumaru [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",57);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Laevateinn
	-----------------------
	if (trade:hasItemQty(18994,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18994;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Laevateinn [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",108);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19803,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19803;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Laevateinn [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",125);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19713,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19713;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Laevateinn [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",142);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19822,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19822;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Laevateinn [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",58);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Liberator
	-----------------------
	if (trade:hasItemQty(18998,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18998;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Liberator [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",109);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19087,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19087;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Liberator [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",126);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19717,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19717;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Liberator [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",143);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19826,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19826;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Liberator [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",59);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Murgleis
	-----------------------
	if (trade:hasItemQty(18995,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18995;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Murgleis [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",110);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19084,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19084;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Murgleis [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",127);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19714,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19714;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Murgleis [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",144);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19823,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19823;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Murgleis [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",60);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Nagi
	-----------------------
	if (trade:hasItemQty(19003,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19003;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nagi [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",111);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19092,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19092;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nagi [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",128);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19722,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19722;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nagi [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",145);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19831,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19831;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nagi [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",61);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Nirvana
	-----------------------
	if (trade:hasItemQty(19005,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19005;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nirvana [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",112);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19094,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19094;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nirvana [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",129);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19724,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19724;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nirvana [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",146);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19962,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19962;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Nirvana [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",62);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Ryunohige
	-----------------------
	if (trade:hasItemQty(19004,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19004;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ryunohige [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",113);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19093,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19093;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ryunohige [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",130);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19723,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19723;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ryunohige [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",147);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19832,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19832;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Ryunohige [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",63);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Terpsichore
	-----------------------
	if (trade:hasItemQty(18989,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18989;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Terpsichore [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",114);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19098,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19098;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Terpsichore [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",131);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19728,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19728;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Terpsichore [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",148);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19837,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19837;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Terpsichore [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",64);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	-----------------------
	-- Tizona
	-----------------------
	if (trade:hasItemQty(19006,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19006;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tizona [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",115);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19095,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19095;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tizona [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",132);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19725,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19725;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tizona [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",149);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19834,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19834;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tizona [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
			textRelic5(player,npc,trade);
			player:setVar("customtrial",65);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
-----------------------
	-- Tupsimati
	-----------------------
	if (trade:hasItemQty(18990,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 18990;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tupsimati [75-85]'", MESSAGE_ECHO, npc:getID() );
			textRelic2(player,npc,trade);
			player:setVar("customtrial",116);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19099,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19099;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tupsimati [85-95]'", MESSAGE_ECHO, npc:getID() );
			textRelic3(player,npc,trade);
			player:setVar("customtrial",133);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19729,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19729;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tupsimati [95-99]'", MESSAGE_ECHO, npc:getID() );
			textRelic4(player,npc,trade);
			player:setVar("customtrial",150);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
		end
	end
	if (trade:hasItemQty(19838,1) and trade:getItemCount() == 1) and (player:getVar("customtrial") == 0) then
		local ITEM = 19838;
		if (player:getFreeSlotsCount() == 0) then
				player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			textRelic1(player,npc,trade);
			player:SpoofChatPlayer( ": 'Tupsimati [(99-1)-(99-4)]'", MESSAGE_ECHO, npc:getID() );
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
	if (player:getVar("TRIAL_COMPLETE") == 1) then
		player:SpoofChatPlayer( "Well done, now trade your item to my friend here for your reward.", MESSAGE_SAY, npc:getID() );
		player:SpoofChatPlayer( ": Calls Forth the Magian Moogle.", MESSAGE_ECHO, npc:getID() );
		GetNPCByID(npc:getID()+134):setStatus(STATUS_NORMAL);
		player:injectActionPacket(6, 617);
	else
		player:SpoofChatPlayer( "What you looking at?, Try brining me something of interest.", MESSAGE_SAY, npc:getID() );
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- if(csid == 0x2750) then
		-- npc:setAnimation(0);
	-- end
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



