-----------------------------------
-- Area: Port Jeuno
-- NPC: Haubijoux
-- Standard Info NPC
-----------------------------------

package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
require("scripts/zones/Port_Jeuno/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
---------------
-- AF3 - AF3+1
---------------

----------------------------THF-------------------------------------
	if (trade:hasItemQty(3115,8) and trade:hasItemQty(12013,1) and trade:getItemCount() == 9) then 		--head
		player:addItem(11069);
		player:messageSpecial(ITEM_OBTAINED,11069);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3135,10) and trade:hasItemQty(12033,1) and trade:getItemCount() == 11) then 	--body
		player:addItem(11089);
		player:messageSpecial(ITEM_OBTAINED,11089);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3155,8) and trade:hasItemQty(12053,1) and trade:getItemCount() == 9) then 		--hands
		player:addItem(11109);
		player:messageSpecial(ITEM_OBTAINED,11109);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3175,8) and trade:hasItemQty(12073,1) and trade:getItemCount() == 9) then 		--legs
		player:addItem(11149);
		player:messageSpecial(ITEM_OBTAINED,11149);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3195,8) and trade:hasItemQty(12093,1) and trade:getItemCount() == 9) then 		--feet
		player:addItem(11129);
		player:messageSpecial(ITEM_OBTAINED,11129);
	    player:tradeComplete();
    end
----------------------------WAR-------------------------------------
    if (trade:hasItemQty(3110,8) and trade:hasItemQty(12008,1) and trade:getItemCount() == 9) then		--head
		player:addItem(11064);
		player:messageSpecial(ITEM_OBTAINED,11064);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3130,10) and trade:hasItemQty(12028,1) and trade:getItemCount() == 11) then	--body
		player:addItem(11084);
		player:messageSpecial(ITEM_OBTAINED,11084);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3150,8) and trade:hasItemQty(12048,1) and trade:getItemCount() == 9) then		--hands
		player:addItem(11104);
		player:messageSpecial(ITEM_OBTAINED,11104);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3170,8) and trade:hasItemQty(12068,1) and trade:getItemCount() == 9) then 		--legs
		player:addItem(11124);
		player:messageSpecial(ITEM_OBTAINED,11124);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3190,8) and trade:hasItemQty(12088,1) and trade:getItemCount() == 9) then		--feet
		player:addItem(11144);
		player:messageSpecial(ITEM_OBTAINED,11144);
	    player:tradeComplete();
    end
----------------------------MNK-------------------------------------
    if (trade:hasItemQty(3111,8) and trade:hasItemQty(12009,1) and trade:getItemCount() == 9) then		--head
		player:addItem(11065);
		player:messageSpecial(ITEM_OBTAINED,11065);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3131,10) and trade:hasItemQty(12029,1) and trade:getItemCount() == 11) then	--body
		player:addItem(11085);
		player:messageSpecial(ITEM_OBTAINED,11085);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3151,8) and trade:hasItemQty(12049,1) and trade:getItemCount() == 9) then 					--hands
		player:addItem(11105);
		player:messageSpecial(ITEM_OBTAINED,11105);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3171,8) and trade:hasItemQty(12069,1) and trade:getItemCount() == 9) then 					--legs
		player:addItem(11125);
		player:messageSpecial(ITEM_OBTAINED,11125);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3191,8) and trade:hasItemQty(12089,1) and trade:getItemCount() == 9) then 					--feet
		player:addItem(11145);
		player:messageSpecial(ITEM_OBTAINED,11145);
	    player:tradeComplete();
    end
----------------------------WHM-------------------------------------
    if (trade:hasItemQty(3112,8) and trade:hasItemQty(12010,1) and trade:getItemCount() == 9) then					--head
		player:addItem(11066);
		player:messageSpecial(ITEM_OBTAINED,11066);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3132,10) and trade:hasItemQty(12030,1) and trade:getItemCount() == 11) then				--body
		player:addItem(11086);
		player:messageSpecial(ITEM_OBTAINED,11086);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3152,8) and trade:hasItemQty(12050,1) and trade:getItemCount() == 9) then					--hands
		player:addItem(11106);
		player:messageSpecial(ITEM_OBTAINED,11106);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3172,8) and trade:hasItemQty(12070,1) and trade:getItemCount() == 9) then			--legs
		player:addItem(11126);
		player:messageSpecial(ITEM_OBTAINED,11126);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3192,8) and trade:hasItemQty(12090,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11146);
		player:messageSpecial(ITEM_OBTAINED,11146);
	    player:tradeComplete();
    end
----------------------------RDM-------------------------------------
    if (trade:hasItemQty(3114,8) and trade:hasItemQty(12012,1) and trade:getItemCount() == 9) then					--head
		player:addItem(11068);
		player:messageSpecial(ITEM_OBTAINED,11068);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3134,10) and trade:hasItemQty(12032,1) and trade:getItemCount() == 11) then				--body
		player:addItem(11088);
		player:messageSpecial(ITEM_OBTAINED,11088);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3154,8) and trade:hasItemQty(12052,1) and trade:getItemCount() == 9) then					--hands
		player:addItem(11108);
		player:messageSpecial(ITEM_OBTAINED,11108);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3174,8) and trade:hasItemQty(12072,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11128);
		player:messageSpecial(ITEM_OBTAINED,11128);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3194,8) and trade:hasItemQty(12092,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11148);
		player:messageSpecial(ITEM_OBTAINED,11148);
	    player:tradeComplete();
    end
----------------------------BLM-------------------------------------
    if (trade:hasItemQty(3113,8) and trade:hasItemQty(12011,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11067);
		player:messageSpecial(ITEM_OBTAINED,11067);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3133,10) and trade:hasItemQty(12031,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11087);
		player:messageSpecial(ITEM_OBTAINED,11087);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3153,8) and trade:hasItemQty(12051,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11107);
		player:messageSpecial(ITEM_OBTAINED,11107);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3173,8) and trade:hasItemQty(12071,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11127);
		player:messageSpecial(ITEM_OBTAINED,11127);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3193,8) and trade:hasItemQty(12091,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11147);
		player:messageSpecial(ITEM_OBTAINED,11147);
	    player:tradeComplete();
    end
----------------------------PLD-------------------------------------
    if (trade:hasItemQty(3116,8) and trade:hasItemQty(12014,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11070);
		player:messageSpecial(ITEM_OBTAINED,11070);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3136,10) and trade:hasItemQty(12034,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11090);
		player:messageSpecial(ITEM_OBTAINED,11090);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3156,8) and trade:hasItemQty(12054,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11110);
		player:messageSpecial(ITEM_OBTAINED,11110);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3176,8) and trade:hasItemQty(12074,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11130);
		player:messageSpecial(ITEM_OBTAINED,11130);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3196,8) and trade:hasItemQty(12094,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11150);
		player:messageSpecial(ITEM_OBTAINED,11150);
	    player:tradeComplete();
    end
----------------------------DRK-------------------------------------
    if (trade:hasItemQty(3117,8) and trade:hasItemQty(12015,1) and trade:getItemCount() == 9) then					--head
		player:addItem(11071);
		player:messageSpecial(ITEM_OBTAINED,11071);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3137,10) and trade:hasItemQty(12035,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11091);
		player:messageSpecial(ITEM_OBTAINED,11091);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3157,8) and trade:hasItemQty(12055,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11111);
		player:messageSpecial(ITEM_OBTAINED,11111);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3177,8) and trade:hasItemQty(12075,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11131);
		player:messageSpecial(ITEM_OBTAINED,11131);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3197,8) and trade:hasItemQty(12095,1) and trade:getItemCount() == 9) then			--feet
		player:addItem(11151);
		player:messageSpecial(ITEM_OBTAINED,11151);
	    player:tradeComplete();
    end
----------------------------BST-------------------------------------
    if (trade:hasItemQty(3118,8) and trade:hasItemQty(12016,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11072);
		player:messageSpecial(ITEM_OBTAINED,11072);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3138,10) and trade:hasItemQty(12036,1) and trade:getItemCount() == 11) then				--body
		player:addItem(11092);
		player:messageSpecial(ITEM_OBTAINED,11092);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3158,8) and trade:hasItemQty(12056,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11112);
		player:messageSpecial(ITEM_OBTAINED,11112);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3178,8) and trade:hasItemQty(12076,1) and trade:getItemCount() == 9) then					--legs
		player:addItem(11132);
		player:messageSpecial(ITEM_OBTAINED,11132);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3198,8) and trade:hasItemQty(12096,1) and trade:getItemCount() == 9) then					--feet
		player:addItem(11152);
		player:messageSpecial(ITEM_OBTAINED,11152);
	    player:tradeComplete();
    end
----------------------------BRD-------------------------------------
    if (trade:hasItemQty(3119,8) and trade:hasItemQty(12017,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11073);
		player:messageSpecial(ITEM_OBTAINED,11073);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3139,10) and trade:hasItemQty(12037,1) and trade:getItemCount() == 11) then					--body
		player:addItem(11093);
		player:messageSpecial(ITEM_OBTAINED,11093);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3159,8) and trade:hasItemQty(12057,1) and trade:getItemCount() == 9) then					--hands
		player:addItem(11113);
		player:messageSpecial(ITEM_OBTAINED,11113);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3179,8) and trade:hasItemQty(12077,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11133);
		player:messageSpecial(ITEM_OBTAINED,11133);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3199,8) and trade:hasItemQty(12097,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11153);
		player:messageSpecial(ITEM_OBTAINED,11153);
	    player:tradeComplete();
    end
----------------------------RNG-------------------------------------
    if (trade:hasItemQty(3120,8) and trade:hasItemQty(12018,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11074);
		player:messageSpecial(ITEM_OBTAINED,11074);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3140,10) and trade:hasItemQty(12038,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11094);
		player:messageSpecial(ITEM_OBTAINED,11094);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3160,8) and trade:hasItemQty(12058,1) and trade:getItemCount() == 9) then					--hands
		player:addItem(11114);
		player:messageSpecial(ITEM_OBTAINED,11114);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3180,8) and trade:hasItemQty(12078,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11134);
		player:messageSpecial(ITEM_OBTAINED,11134);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3200,8) and trade:hasItemQty(12098,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11154);
		player:messageSpecial(ITEM_OBTAINED,11154);
	    player:tradeComplete();
    end
----------------------------SAM-------------------------------------
    if (trade:hasItemQty(3121,8) and trade:hasItemQty(12019,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11075);
		player:messageSpecial(ITEM_OBTAINED,11075);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3141,10) and trade:hasItemQty(12039,1) and trade:getItemCount() == 11) then				--body
		player:addItem(11095);
		player:messageSpecial(ITEM_OBTAINED,11095);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3161,8) and trade:hasItemQty(12059,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11115);
		player:messageSpecial(ITEM_OBTAINED,11115);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3181,8) and trade:hasItemQty(12079,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11135);
		player:messageSpecial(ITEM_OBTAINED,11135);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3201,8) and trade:hasItemQty(12099,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11155);
		player:messageSpecial(ITEM_OBTAINED,11155);
	    player:tradeComplete();
    end
----------------------------NIN-------------------------------------
    if (trade:hasItemQty(3122,8) and trade:hasItemQty(12020,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11076);
		player:messageSpecial(ITEM_OBTAINED,11076);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3142,10) and trade:hasItemQty(12040,1) and trade:getItemCount() == 11) then				--body
		player:addItem(11096);
		player:messageSpecial(ITEM_OBTAINED,11096);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3162,8) and trade:hasItemQty(12060,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11116);
		player:messageSpecial(ITEM_OBTAINED,11116);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3182,8) and trade:hasItemQty(12080,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11136);
		player:messageSpecial(ITEM_OBTAINED,11136);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3202,8) and trade:hasItemQty(12100,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11156);
		player:messageSpecial(ITEM_OBTAINED,11156);
	    player:tradeComplete();
    end
----------------------------DRG-------------------------------------
    if (trade:hasItemQty(3123,8) and trade:hasItemQty(12021,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11077);
		player:messageSpecial(ITEM_OBTAINED,11077);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3143,10) and trade:hasItemQty(12041,1) and trade:getItemCount() == 11) then				--body
		player:addItem(11097);
		player:messageSpecial(ITEM_OBTAINED,11097);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3163,8) and trade:hasItemQty(12061,1) and trade:getItemCount() == 9) then					--hands
		player:addItem(11117);
		player:messageSpecial(ITEM_OBTAINED,11117);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3183,8) and trade:hasItemQty(12081,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11137);
		player:messageSpecial(ITEM_OBTAINED,11137);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3203,8) and trade:hasItemQty(12101,1) and trade:getItemCount() == 9) then			--feet
		player:addItem(11157);
		player:messageSpecial(ITEM_OBTAINED,11157);
	    player:tradeComplete();
    end
----------------------------SMN-------------------------------------
    if (trade:hasItemQty(3124,8) and trade:hasItemQty(12022,1) and trade:getItemCount() == 9) then			--head
		player:addItem(11078);
		player:messageSpecial(ITEM_OBTAINED,11078);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3144,10) and trade:hasItemQty(12042,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11098);
		player:messageSpecial(ITEM_OBTAINED,11098);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3164,8) and trade:hasItemQty(12062,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11118);
		player:messageSpecial(ITEM_OBTAINED,11118);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3184,8) and trade:hasItemQty(12082,1) and trade:getItemCount() == 9) then 					--legs
		player:addItem(11138);
		player:messageSpecial(ITEM_OBTAINED,11138);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3204,8) and trade:hasItemQty(12102,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11158);
		player:messageSpecial(ITEM_OBTAINED,11158);
	    player:tradeComplete();
    end
----------------------------BLU-------------------------------------
    if (trade:hasItemQty(3125,8) and trade:hasItemQty(12023,1) and trade:getItemCount() == 9) then			--head
		player:addItem(11079);
		player:messageSpecial(ITEM_OBTAINED,11079);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3145,10) and trade:hasItemQty(12043,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11099);
		player:messageSpecial(ITEM_OBTAINED,11099);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3165,8) and trade:hasItemQty(12063,1) and trade:getItemCount() == 9) then			--hands
		player:addItem(11119);
		player:messageSpecial(ITEM_OBTAINED,11119);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3185,8) and trade:hasItemQty(12083,1) and trade:getItemCount() == 9) then				--legs
		player:addItem(11139);
		player:messageSpecial(ITEM_OBTAINED,11139);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3205,8) and trade:hasItemQty(12103,1) and trade:getItemCount() == 9) then			--feet
		player:addItem(11159);
		player:messageSpecial(ITEM_OBTAINED,11159);
	    player:tradeComplete();
    end
----------------------------COR-------------------------------------
    if (trade:hasItemQty(3126,8) and trade:hasItemQty(12024,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11080);
		player:messageSpecial(ITEM_OBTAINED,11080);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3146,10) and trade:hasItemQty(12044,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11100);
		player:messageSpecial(ITEM_OBTAINED,11100);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3166,8) and trade:hasItemQty(12064,1) and trade:getItemCount() == 9) then				--hands
		player:addItem(11120);
		player:messageSpecial(ITEM_OBTAINED,11120);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3186,8) and trade:hasItemQty(12084,1) and trade:getItemCount() == 9) then			--legs
		player:addItem(11140);
		player:messageSpecial(ITEM_OBTAINED,11140);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3206,8) and trade:hasItemQty(12104,1) and trade:getItemCount() == 9) then			--feet
		player:addItem(11160);
		player:messageSpecial(ITEM_OBTAINED,11160);
	    player:tradeComplete();
    end
----------------------------PUP-------------------------------------
    if (trade:hasItemQty(3127,8) and trade:hasItemQty(12025,1) and trade:getItemCount() == 9) then			--head
		player:addItem(11081);
		player:messageSpecial(ITEM_OBTAINED,11081);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3147,10) and trade:hasItemQty(12045,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11101);
		player:messageSpecial(ITEM_OBTAINED,11101);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3167,8) and trade:hasItemQty(12065,1) and trade:getItemCount() == 9) then			--hands
		player:addItem(11121);
		player:messageSpecial(ITEM_OBTAINED,11121);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3187,8) and trade:hasItemQty(12085,1) and trade:getItemCount() == 9) then			--legs
		player:addItem(11141);
		player:messageSpecial(ITEM_OBTAINED,11141);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3207,8) and trade:hasItemQty(12105,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11161);
		player:messageSpecial(ITEM_OBTAINED,11161);
	    player:tradeComplete();
    end
----------------------------DNC-------------------------------------
    if (trade:hasItemQty(3128,8) and trade:hasItemQty(12026,1) and trade:getItemCount() == 9) then			--head
		player:addItem(11082);
		player:messageSpecial(ITEM_OBTAINED,11082);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3148,10) and trade:hasItemQty(12046,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11102);
		player:messageSpecial(ITEM_OBTAINED,11102);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3168,8) and trade:hasItemQty(12066,1) and trade:getItemCount() == 9) then			--hands
		player:addItem(11122);
		player:messageSpecial(ITEM_OBTAINED,11122);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3188,8) and trade:hasItemQty(12086,1) and trade:getItemCount() == 9) then			--legs
		player:addItem(11142);
		player:messageSpecial(ITEM_OBTAINED,11142);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3208,8) and trade:hasItemQty(12106,1) and trade:getItemCount() == 9) then			--feet
		player:addItem(11162);
		player:messageSpecial(ITEM_OBTAINED,11162);
	    player:tradeComplete();
    end
----------------------------SCH-------------------------------------
    if (trade:hasItemQty(3129,8) and trade:hasItemQty(12027,1) and trade:getItemCount() == 9) then				--head
		player:addItem(11083);
		player:messageSpecial(ITEM_OBTAINED,11083);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3149,10) and trade:hasItemQty(12047,1) and trade:getItemCount() == 11) then			--body
		player:addItem(11103);
		player:messageSpecial(ITEM_OBTAINED,11103);
	    player:tradeComplete();
	end
	if (trade:hasItemQty(3169,8) and trade:hasItemQty(12067,1) and trade:getItemCount() == 9) then			--hands
		player:addItem(11123);
		player:messageSpecial(ITEM_OBTAINED,11123);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3189,8) and trade:hasItemQty(12087,1) and trade:getItemCount() == 9) then			--legs
		player:addItem(11143);
		player:messageSpecial(ITEM_OBTAINED,11143);
	    player:tradeComplete();
    end
	if (trade:hasItemQty(3209,8) and trade:hasItemQty(12107,1) and trade:getItemCount() == 9) then				--feet
		player:addItem(11163);
		player:messageSpecial(ITEM_OBTAINED,11163);
	    player:tradeComplete();
    end
----------------
-- AF3+1 - AF3+2
----------------
	
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	local name = player:getName();

	SpoofSay(npc:getID(),player:getID(),( string.format("Hello %s!, I'm here to help you upgrade your AF3.", name ) ));
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
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;



