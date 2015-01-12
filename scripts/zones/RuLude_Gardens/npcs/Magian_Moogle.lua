-----------------------------------
-- Area: Rulude Gardens
-- NPC:  MagianMoogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/common");
require("scripts/globals/settings");
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Text
-----------------------------------

function RelicComplete1(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:setVar("customtrial",0);
	player:setVar("TRIAL_COMPLETE",0);
	player:setVar("Megalobugard_KILLS",0);
	player:setVar("Intulo_KILLS",0);
	player:setVar("Keeper_of_Halidom_KILLS",0);
	player:setVar("Dune_Widow_KILLS",0);
	player:setVar("Seww_the_Squidlimbed_KILLS",0);
	player:setVar("Mischievous_Micholas_KILLS",0);
end;

function RelicComplete2(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:setVar("customtrial",0);
	player:setVar("TRIAL_COMPLETE",0);
	player:setVar("Fafnir_KILLS",0);
	player:setVar("Adamantoise_KILLS",0);
	player:setVar("Behemoth_KILLS",0);
end;

function RelicComplete3(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:setVar("customtrial",0);
	player:setVar("TRIAL_COMPLETE",0);
	player:setVar("Juggler_Hecatomb_KILLS",0);
	player:setVar("Nidhogg_KILLS",0);
	player:setVar("King_Behemoth_KILLS",0);
	player:setVar("Aspidochelone_KILLS",0);
	player:setVar("Ash_Dragon_KILLS",0);
end;

function RelicComplete4(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "All trials complete for this Item!.", MESSAGE_SAY, npc:getID() );
end;

function MythicComplete1(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:setVar("customtrial",0);
	player:setVar("TRIAL_COMPLETE",0);
	player:setVar("Zareehkl_the_Jubilant_KILLS",0);
	player:setVar("Iriz_Irma_KILLS",0);
	player:setVar("Velionis_KILLS",0);
	player:setVar("Brass_Borer_KILLS",0);
	player:setVar("Dextrose_KILLS",0);
	player:setVar("Iriri_Samariri_KILLS",0);
end;

function MythicComplete2(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:setVar("customtrial",0);
	player:setVar("TRIAL_COMPLETE",0);
	player:setVar("Armed_Gears_KILLS",0);
	player:setVar("Nosferatu_KILLS",0);
	player:setVar("Achamoth_KILLS",0);
	player:setVar("Experimental_Lamia_KILLS",0);
end;

function MythicComplete3(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:setVar("customtrial",0);
	player:setVar("TRIAL_COMPLETE",0);
	player:setVar("Cerberus_KILLS",0);
	player:setVar("Khimara_KILLS",0);
	player:setVar("Medusa_KILLS",0);
	player:setVar("Gulool_Ja_Ja_KILLS",0);
	player:setVar("Gurfurlur_the_Menacing_KILLS",0);
	player:setVar("Hydra_KILLS",0);
end;

function MythicComplete4(player,npc,trade)
	player:injectActionPacket(6, 206);
	player:SpoofChatPlayer( "Congratulations you have completed your trial, here is your prize.", MESSAGE_SAY, npc:getID() );
	player:SpoofChatPlayer( "All trials complete for this Item!.", MESSAGE_SAY, npc:getID() );
end;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	------------------------
	-- Custom trial complete
	------------------------
		-------------------
		-- Relic 1
		-------------------
	if (trade:hasItemQty(18318,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18646;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(15070,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 16196;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18336,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18649;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18306,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18644;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18294,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18642;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18330,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18648;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18276,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18639;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18342,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18578;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18300,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18643;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18288,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18641;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18312,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18645;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18270,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18638;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18324,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18647;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18282,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18640;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18264,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18637;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18348,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18650;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
		-------------------
		-- Relic 2
		-------------------
	if (trade:hasItemQty(18646,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19755;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(16196,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 16198;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18649,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18677;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18644,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18672;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18642,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18670;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18648,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18676;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18639,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18667;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18578,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18580;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18643,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18671;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18641,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18669;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18645,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18673;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18638,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18666;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18647,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18675;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18640,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18668;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18637,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18665;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18650,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18678;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
		-------------------
		-- Relic 3
		-------------------
	if (trade:hasItemQty(19755,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19755;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(16198,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 11927;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18677,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19758;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18672,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19753;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18670,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19751;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18676,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19757;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18667,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19748;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18580,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 18572;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18671,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19752;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18669,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19750;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18673,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19754;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18666,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19747;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18675,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19756;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18668,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19749;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18665,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19746;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18678,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19759;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	-----------------
	-- Relic Final
	-----------------
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19755,1) and trade:getItemCount() == 51) then
		local ITEM = 21016;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(11927,1) and trade:getItemCount() == 51) then
		local ITEM = 16200;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19758,1) and trade:getItemCount() == 51) then
		local ITEM = 21261;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19753,1) and trade:getItemCount() == 51) then
		local ITEM = 20881;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19751,1) and trade:getItemCount() == 51) then
		local ITEM = 20836;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19757,1) and trade:getItemCount() == 51) then
		local ITEM = 21136;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19748,1) and trade:getItemCount() == 51) then
		local ITEM = 20646;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(18572,1) and trade:getItemCount() == 51) then
		local ITEM = 18840;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19752,1) and trade:getItemCount() == 51) then
		local ITEM = 20926;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19750,1) and trade:getItemCount() == 51) then
		local ITEM = 20791;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19754,1) and trade:getItemCount() == 51) then
		local ITEM = 20971;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19747,1) and trade:getItemCount() == 51) then
		local ITEM = 20556;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19756,1) and trade:getItemCount() == 51) then
		local ITEM = 21061;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19749,1) and trade:getItemCount() == 51) then
		local ITEM = 20746;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19746,1) and trade:getItemCount() == 51) then
		local ITEM = 20481;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19759,1) and trade:getItemCount() == 51) then
		local ITEM = 21211;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			RelicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end

		-------------------
		-- Mythic 1
		-------------------
	if (trade:hasItemQty(18999,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19088;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18997,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19086;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19000,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19089;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18991,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19080;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19007,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19096;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19001,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19090;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18992,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19081;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19002,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19091;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18994,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19083;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18998,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19087;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18995,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19084;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19003,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19092;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19005,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19094;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19004,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19093;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
		if (trade:hasItemQty(18989,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19098;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19006,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19095;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(18990,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19099;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete1(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end

		-------------------
		-- Mythic 2 85-95
		-------------------
	if (trade:hasItemQty(19088,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19718;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19086,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19716;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19089,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19719;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19080,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19710;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19096,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19726;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19090,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19720;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19081,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19711;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19091,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19721;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19083,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19713;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19087,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19717;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19084,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19714;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19092,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19722;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19094,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19724;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19093,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19723;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
		if (trade:hasItemQty(19098,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19728;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19095,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19725;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19099,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19729;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete2(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end

		-------------------
		-- Mythic 3 95-99
		-------------------
	if (trade:hasItemQty(19718,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19827;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19716,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19825;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19719,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19828;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19710,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19819;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19726,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19835;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19720,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19829;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19711,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19820;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19721,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19830;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19713,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19822;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19717,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19826;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19714,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19823;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19722,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19831;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19724,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19962;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19723,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19832;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
		if (trade:hasItemQty(19728,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19837;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19725,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19834;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(19729,1) and trade:getItemCount() == 1 and player:getVar("TRIAL_COMPLETE") == 1) then
		local ITEM = 19838;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete3(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end

	-----------------
	-- Mythic Final
	-----------------
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19827,1) and trade:getItemCount() == 51) then
		local ITEM = 20793;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19825,1) and trade:getItemCount() == 51) then
		local ITEM = 20650;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19828,1) and trade:getItemCount() == 51) then
		local ITEM = 20562;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19819,1) and trade:getItemCount() == 51) then
		local ITEM = 20838;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19835,1) and trade:getItemCount() == 51) then
		local ITEM = 21263;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19829,1) and trade:getItemCount() == 51) then
		local ITEM = 21247;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19820,1) and trade:getItemCount() == 51) then
		local ITEM = 20483;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19830,1) and trade:getItemCount() == 51) then
		local ITEM = 21018;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19822,1) and trade:getItemCount() == 51) then
		local ITEM = 21140;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19826,1) and trade:getItemCount() == 51) then
		local ITEM = 20883;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19823,1) and trade:getItemCount() == 51) then
		local ITEM = 20648;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19831,1) and trade:getItemCount() == 51) then
		local ITEM = 20973;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19962,1) and trade:getItemCount() == 51) then
		local ITEM = 21142;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19832,1) and trade:getItemCount() == 51) then
		local ITEM = 20928;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19837,1) and trade:getItemCount() == 51) then
		local ITEM = 20558;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
	if (trade:hasItemQty(3925,50) and trade:hasItemQty(19834,1) and trade:getItemCount() == 51) then
		local ITEM = 20652;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end
		if (trade:hasItemQty(3925,50) and trade:hasItemQty(19838,1) and trade:getItemCount() == 51) then
		local ITEM = 21138;
		if (player:getFreeSlotsCount() == 0) then
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,ITEM);
		else
			MythicComplete4(player,npc,trade);
			player:tradeComplete();
			player:addItem(ITEM);
			player:messageSpecial(ITEM_OBTAINED,ITEM);
			GetNPCByID(17772760):showNPC(5);
		end
	end

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:SpoofChatPlayer( "Ok trade me your item please ..Kupo!.", MESSAGE_SAY, npc:getID() );
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("updateRESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("finishRESULT: %u",option);
end;