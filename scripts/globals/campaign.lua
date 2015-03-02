

-----------------------------------------------------------------
-- Variable for getNationTeleport and getPoint
-----------------------------------------------------------------

ALLIED_NOTES = 11;
MAW = 4;
PAST_SANDORIA = 5;
PAST_BASTOK = 6;
PAST_WINDURST = 7;

-- -------------------------------------------------------------------
-- getMedalRank()
-- Returns the numerical Campaign Medal of the player.
-- -------------------------------------------------------------------

local medals = { 0x039C, 0x039D, 0x039E, 0x039F, 0x03A0, 0x03A1, 0x03A2, 0x03A3, 0x03A4, 0x03A5, 0x03A6, 0x03A7, 0x03A8, 0x03A9, 0x03AA, 0x03AB, 0x03AC, 0x03AD, 0x03AE, 0x03AF }

function getMedalRank(player)
    local rank = 0;

    while player:hasKeyItem(medals[rank + 1]) == true do
        rank = rank + 1;
    end;

    return rank;
end;

-- -------------------------------------------------------------------
-- get[nation}NotesItem()
-- Returns the item ID and cost of the Allied Notes indexed item
-- (the same value as that used by the vendor event.)
-- -------------------------------------------------------------------

-- Format:
-- ListName_AN_item[optionID] = itemID; -- ItemName
-- ListName_AN_price[optionID] = cost; -- ItemName

local SandOria_AN_item = {}

SandOria_AN_item[2] = 15754; -- Sprinter's Shoes
SandOria_AN_item[258] = 5428; -- Scroll of Instant Retrace
SandOria_AN_item[514] = 14584; -- Iron Ram jack coat
SandOria_AN_item[770] = 14587; -- Pilgrim Tunica
SandOria_AN_item[1026] = 16172; -- Iron Ram Shield
SandOria_AN_item[1282] = 15841; -- Recall Ring: Jugner
SandOria_AN_item[1538] = 15842; -- Recall Ring: Pashow
SandOria_AN_item[1794] = 15843; -- Recall Ring: Meriphataud
SandOria_AN_item[2050] = 10116; -- Cipher: Valaineral

local SandOria_AN_price = {}

SandOria_AN_price[2] = 980; -- Sprinter's Shoes
SandOria_AN_price[258] = 10; -- Scroll of Instant Retrace
SandOria_AN_price[514] = 1500; -- Iron Ram jack coat
SandOria_AN_price[770] = 1500; -- Pilgrim Tunica
SandOria_AN_price[1026] = 4500;-- Iron Ram Shield
SandOria_AN_price[1282] = 5000;-- Recall Ring: Jugner
SandOria_AN_price[1538] = 5000;-- Recall Ring: Pashow
SandOria_AN_price[1794] = 5000;-- Recall Ring: Meriphataud
SandOria_AN_price[2050] = 2000;-- Cipher: Valaineral

function getSandOriaNotesItem(i)
    return SandOria_AN_item[i],SandOria_AN_price [i];
end;

local Bastok_AN_item = {}

Bastok_AN_item[2] = 15754; -- Sprinter's Shoes
Bastok_AN_item[258] = 5428; -- Scroll of Instant Retrace
-- Bastok_AN_item[514] =
-- Bastok_AN_item[770] =
-- Bastok_AN_item[1026] =
Bastok_AN_item[1282] = 15841; -- Recall Ring: Jugner
Bastok_AN_item[1538] = 15842; -- Recall Ring: Pashow
Bastok_AN_item[1794] = 15843; -- Recall Ring: Meriphataud
Bastok_AN_item[2050] = 10116; -- Cipher: Valaineral

local Bastok_AN_price = {}

Bastok_AN_price[2] = 980; -- Sprinter's Shoes
Bastok_AN_price[258] = 10; -- Scroll of Instant Retrace
-- Bastok_AN_price[514] =
-- Bastok_AN_price[770] =
-- Bastok_AN_price[1026] =
Bastok_AN_price[1282] = 5000;-- Recall Ring: Jugner
Bastok_AN_price[1538] = 5000;-- Recall Ring: Pashow
Bastok_AN_price[1794] = 5000;-- Recall Ring: Meriphataud
Bastok_AN_price[2050] = 2000;-- Cipher: Valaineral

function getBastokNotesItem(i)
    return Bastok_AN_item[i],Bastok_AN_price [i];
end;

local Windurst_AN_item = {}

Windurst_AN_item[2] = 15754; -- Sprinter's Shoes
Windurst_AN_item[258] = 5428; -- Scroll of Instant Retrace
-- Windurst_AN_item[514] =
-- Windurst_AN_item[770] =
-- Windurst_AN_item[1026] =
Windurst_AN_item[1282] = 15841; -- Recall Ring: Jugner
Windurst_AN_item[1538] = 15842; -- Recall Ring: Pashow
Windurst_AN_item[1794] = 15843; -- Recall Ring: Meriphataud
Windurst_AN_item[2050] = 10116; -- Cipher: Valaineral

local Windurst_AN_price = {}

Windurst_AN_price[2] = 980; -- Sprinter's Shoes
Windurst_AN_price[258] = 10; -- Scroll of Instant Retrace
-- Windurst_AN_price[514] =
-- Windurst_AN_price[770] =
-- Windurst_AN_price[1026] =
Windurst_AN_price[1282] = 5000;-- Recall Ring: Jugner
Windurst_AN_price[1538] = 5000;-- Recall Ring: Pashow
Windurst_AN_price[1794] = 5000;-- Recall Ring: Meriphataud
Windurst_AN_price[2050] = 2000;-- Cipher: Valaineral

function getWindurstNotesItem(i)
    return Windurst_AN_item[i],Windurst_AN_price [i];
end;

-- -------------------------------------------------------------------
-- getSigilDuration(player)
-- Base effect duration 3 hours but can never be less
-- than 3hr 15 min because can not be obtained without
-- at least 1 medal and every campaign medal adds 15 min
-- -------------------------------------------------------------------

function getSigilDuration(player)
    local medal_rank = getMedalRank(player);
    local duration = 10800+((15*medal_rank)*60);

    return duration;
end;

-- -------------------------------------------------------------------
-- getSigilTimeStamp(player)
-- This is for the time-stamp telling player what day/time the
-- effect will last until, NOT the actual status effect duration.
-- -------------------------------------------------------------------

function getSigilTimeStamp(player)
    local TimeStamp = 0; -- zero'd till math is done.

    -- TODO: calculate time stamp for menu display of when it wears off

    return TimeStamp;
end;

-----------------------------------
-- hasMawActivated Action
-----------------------------------

-- 1st number for hasMawActivated()
-- 2nd number for player:addNationTeleport();

-- 0	1	Batallia Downs (S) (H-5) 
-- 1	2	Rolanberry Fields (S) (H-6) 
-- 2	4	Sauromugue Champaign (S) (K-9) 
-- 3	8	Jugner Forest (S) (H-11) 
-- 4	16	Pashhow Marshlands (S) (K-8) 
-- 5	32	Meriphataud Mountains (S) (K-6) 
-- 6	64	East Ronfaure (S) (H-5) 
-- 7	128	North Gustaberg (S) (K-7) 
-- 8	256	West Sarutabaruta (S) (H-9) 

function hasMawActivated(player,portal)
	
	local mawActivated = player:getNationTeleport(MAW);
	local bit = {};
	
	for i = 8,0,-1 do
		twop = 2^i
		
		if(mawActivated >= twop) then
			bit[i]=true; mawActivated = mawActivated - twop;
		else
			bit[i]=false;
		end
	end;
	
	return bit[portal];
	
end;

-- TODO:
-- Past nation teleport