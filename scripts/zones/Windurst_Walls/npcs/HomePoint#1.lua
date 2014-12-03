-----------------------------------
-- Area: Windurst Walls
-- NPC:  HomePoint#1
-- @pos -72.069 -5.013 124.784 239
-----------------------------------
package.loaded["scripts/zones/Windurst_Walls/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Windurst_Walls/TextIDs");
require("scripts/globals/homepoint");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if (HOMEPOINT_HEAL == 1) then
		player:addHP(player:getMaxHP());
		player:addMP(player:getMaxMP());
	end
	if(HOMEPOINT_TELEPORT == 1)then
		player:startEvent(0x21fc,0,4294967295,4294967295,4294967295,40,player:getGil(),4095,0);
	else
		player:startEvent(0x21fc)
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
	
	--15 Foret de Hennetiel 3080194 16 Morimar Basalt Fields 3145730 17 Yorcia Weald         3211266
	--18 Marjami Ravine     3276802 19 Kamihr Drifts         3342338

	local amount = 0;
	
	if(csid == 0x21fc) then
		if (option == 1) then	
			player:setHomePoint();
			player:messageSpecial(HOMEPOINT_SET);
		
		elseif(option == 2) then--Southern San dOria 1
			amount = 500;
			player:setPos(-85.554, 1.000, -64.554,-45, 230);
		
		elseif(option == 65538) then--Southern San dOria 2
			amount = 500;
			player:setPos(44.1, 2, -34.5,170, 230);
		
		elseif(option == 131074) then--Southern San dOria 3
			amount = 500;
			player:setPos(140.5, -2, 121,0, 230);
		
		elseif(option == 196610) then--Northern San dOria 1
			amount = 500;
			player:setPos(-178, 4, 71,0, 231);
		
		elseif(option == 262146) then--Northern San dOria 2
			amount = 500;
			player:setPos(10, -0.2, 95,0, 231);
		
		elseif(option == 327682) then--Northern San dOria 3
			amount = 500;
			player:setPos(70, -0.2, 10,0, 231);
		
		elseif(option == 393218) then--Port San dOria 1
			amount = 500;
			player:setPos(-68, -4, -105,0, 232);
		
		elseif(option == 458754) then--Port San dOria 2
			amount = 500;
			player:setPos(48, -12, -105,0, 232);
		
		elseif(option == 524290) then--Port San dOria 3 
			amount = 500;
			player:setPos(-6, -13, -150,0, 232);
		
		elseif(option == 589826) then--Bastok Mine 1
			amount = 500;
			player:setPos(39, 0, -43,0, 234);
		
		elseif(option == 655362) then--Bastok Mine 2
			amount = 500;
			player:setPos(118, 1, -58,0, 234);
		
		elseif(option == 720898) then--Bastok Markets 1
			amount = 500;
			player:setPos(-293, -10, -102,0, 235);
		
		elseif(option == 786434) then--Bastok Markets 2
			amount = 500;
			player:setPos(-328, -12, -33,0, 235);
		
		elseif(option == 851970) then--Bastok Markets 3
			amount = 500;
			player:setPos(-189, -8, 26,0, 235);
		
		elseif(option == 917506) then--Bastok port 1
			amount = 500;
			player:setPos(58, 7, -28,0, 236);
		
		elseif(option == 983042) then--Bastok port 2
			amount = 500;
			player:setPos(42, 8.5, -244,0, 236);
		
		elseif(option == 1048578) then--Metal works 1
			amount = 500;
			player:setPos(46, -14, -19,0, 237);
		
		elseif(option == 1114114) then--Windurst Water 1
			amount = 500;
			player:setPos(-32, -5, 132,0, 238);
		
		elseif(option == 1179650) then--Windurst Water 2
			amount = 500;
			player:setPos(138.5, 0, -14,0, 238);
		
		elseif(option == 1245186) then--Windurst Walls 1
			amount = 500;
			player:setPos(-72, -5, 125,0, 239);
		
		elseif(option == 1310722) then--Windurst Walls 2
			amount = 500;
			player:setPos(-212, 0, -99,0, 239);
		
		elseif(option == 1376258) then--Windurst Walls 3
			amount = 500;
			player:setPos(31, -6.5, -40,0, 239);
		
		elseif(option == 1441794) then--Port Windurst 1
			amount = 500;
			player:setPos(-68, -7, 112,0, 240);
		
		elseif(option == 1507330) then--Port Windurst 2
			amount = 500;
			player:setPos(-207, -8, 210,0, 240);
		
		elseif(option == 1572866) then--Port Windurst 3
			amount = 500;
			player:setPos(180, -12, 226,0, 240);
		
		elseif(option == 1638402) then--Windurst Woods 1
			amount = 500;
			player:setPos(9, -2, 0,0, 241);
		
		elseif(option == 1703938) then--Windurst Woods 2
			amount = 500;
			player:setPos(107, -5, -56,0, 241);
		
		elseif(option == 1769474) then--Windurst Woods 3
			amount = 500;
			player:setPos(-92, -5, 62,0, 241);
		
		elseif(option == 1835010) then--Windurst Woods 4
			amount = 500;
			player:setPos(74, -7, -139,0, 241);
		
		elseif(option == 1900546) then--RuLude Gardens 1
			amount = 500;
			player:setPos(-6, 3, 0,0, 243);
		
		elseif(option == 1966082) then--RuLude Gardens 2
			amount = 500;
			player:setPos(53, 9, -57,0, 243);
		
		elseif(option == 2031618) then--RuLude Gardens 3
			amount = 500;
			player:setPos(-67 ,6 ,-25,0, 243);
		
		elseif(option == 2097154) then--Upper Jeuno 1
			amount = 500;
			player:setPos(-99, 0, 167,0, 244);
		
		elseif(option == 2162690) then--Upper Jeuno 2
			amount = 500;
			player:setPos(32, -1, -44,0, 244);
		
		elseif(option == 2228226) then--Upper Jeuno 3
			amount = 500;
			player:setPos(-52, 1, 16,0, 244);
		
		elseif(option == 2293762) then--Lower Jeuno 1
			amount = 500;
			player:setPos(-99, 0, -183,0, 245);
		
		elseif(option == 2359298) then--Lower Jeuno 2
			amount = 500;
			player:setPos(18, -1, 54,0, 245);
		
		elseif(option == 2424834) then--Port Jeuno 1
			amount = 500;
			player:setPos(37, 0, 9,0, 246);
		
		elseif(option == 2490370) then--Port Jeuno 2
			amount = 500;
			player:setPos(-155, -1, -4,0, 246);
		
		elseif(option == 2555906) then--Kazham 1
			amount = 500;
			player:setPos(78, -13, -94,0, 250);
		
		elseif(option == 2621442) then--Mhaura 1
			amount = 500;
			player:setPos(-13, -15, 87,0, 249);
		
		elseif(option == 2686978) then--Norg 1
			amount = 500;
			player:setPos(-27, 0, -47,0, 252);
		
		elseif(option == 2752514) then--Rabao 1
			amount = 500;
			player:setPos(-29, 0, -76,0, 247);
		
		elseif(option == 2818050) then--Selbina 1
			amount = 500;
			player:setPos(36, -11, 35,0, 248);
		 
		elseif(option == 3407874) then--Yughott Grotto 1
			amount = 1000;
			player:setPos(434, -40, 171,0, 142);
		
		elseif(option == 2883586) then--Western Adoulin
			amount = 1000;
			player:setPos(-86, 4, -32,158, 256);
		
		elseif(option == 2949122) then--Eastern Adoulin
			amount = 1000;
			player:setPos(-54, 0, 58,229, 257);
			
		elseif(option == 3014658) then--Ceizak Battlegrounds 
			amount = 1000;
			player:setPos(-104, 3, 295,0, 261);
			
		elseif(option == 3473410) then--Palborough Mines 1
			amount = 1000;
			player:setPos(109, -38, -147,0, 143);
		
		elseif(option == 3538946) then--Giddeus 1
			amount = 1000;
			player:setPos(-132, -3, -303,0, 145);
		
		elseif(option == 3604482) then--Fayien 1
			amount = 1000;
			player:setPos(243, -24, 62,0, 204);
		
		elseif(option == 3670018) then--Quicksand Caves 1
			amount = 1000;
			player:setPos(-984, 17, -289,0, 208);
		
		elseif(option == 3735554) then--Den of Rancor 1
			amount = 1000;
			player:setPos(-80, 46, 62,0, 160);
		
		elseif(option == 3801090) then--Castle Zvahl Keep 1
			amount = 1000;
			player:setPos(-554, -70, 66,0, 162);
		
		elseif(option == 3866626) then--RuAun Gardens 1
			amount = 1000;
			player:setPos(5, -42, 526,0, 130);
		
		elseif(option == 3932162) then--RuAun Gardens 2
			amount = 1000;
			player:setPos(-499, -42, 167,0, 130);
		
		elseif(option == 3997698) then--RuAun Gardens 3
			amount = 1000;
			player:setPos(-312, -42, -422,0, 130);
		
		elseif(option == 4063234) then--RuAun Gardens 4
			amount = 1000;
			player:setPos(500, -42, 158,0, 130);
		
		elseif(option == 4128770) then-- RuAun Gardens 5
			amount = 1000;
			player:setPos(305, -42, -427,0, 130);
		
		elseif(option == 4194306) then--Tavnazian Safehold 1
			amount = 500;
			player:setPos(-1, -27, 107,0, 26);
		
		elseif(option == 4259842) then--Aht Urhgan Whitegate 1
			amount = 500;
			player:setPos(-21, 0, -21,0, 50);
		elseif(option == 4849666) then--Thikets 1 1
			amount = 1000;
			player:setPos(-98, -10, -493,0, 52);
		elseif(option == 4325378) then--Nashmau 1
			amount = 500;
			player:setPos(-20, 0, -25,0, 53);
		
		elseif(option == 4390914) then--Al Zahbi 1
			amount = 500;
			player:setPos(-38, 0, -55,0, 48);
		
		elseif(option == 4456450) then--Southern San_dOria [S] 1
			amount = 500;
			player:setPos(-85, 1, 1-66,0, 80);
		
		elseif(option == 4521986) then--Bastok Markets [S] 1
			amount = 500;
			player:setPos(-293, -10, -102,0, 87);
		
		elseif(option == 4587522) then--Windurst Waters [S] 1
			amount = 500;
			player:setPos(-32, -5, 131,0, 94);
		
		elseif(option == 4653058) then--Upper Delkfutts Tower 1
			amount = 1000;
				player:setPos(-365, -176.5, -36,0, 158);
			
		
		elseif(option == 4718594) then--The Shrine of RuAvitau 1
			amount = 1000;
			player:setPos(-13, 48, 61,0, 178);
		end
		player:delGil(amount);
	end	
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);	
end;			



