---------------------------------------------------------------------------------------------------
-- func: myshop
-- auth: <Unknown>
-- desc: Sets the players shop.
---------------------------------------------------------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/conquest");

-----------------------------------
-- Page
-----------------------------------
page = ONE
page = TWO
page = THREE
page = FOUR
page = STATIC


-----------------------------------
-- function showShop
--
-- Total stock cuts off after 16 items. 
-- If you add more than that the extras won't display.
-----------------------------------

   -- ONE = {0x1034,316};
  --  TWO = {0x1037,800};
   -- THREE = {0x1020,4832};
  --  FOUR = {0x1036,2595};
  --  STATIC = {0x1010,910};

function showNationShop(player, nation, stock)

conquest = getNationRank(nation);
playerNation = player:getNation();

correction = 1;

	if (nation ~= STATIC) then
		correction = (1 + (0.20 * (9 - player:getFameLevel(nation)) / 8))*SHOP_PRICE;
	end

player:createShop(nation);

	for i = 1, #stock, 3 do
		if (stock[i+2] == 1) then
			if (playerNation == nation and conquest == 1) then
				player:addShopItem(stock[i],stock[i+1]*correction);
			end
		elseif (stock[i+2] == 2) then
			if (conquest <= 2) then
				player:addShopItem(stock[i],stock[i+1]*correction);
			end
		else
			player:addShopItem(stock[i],stock[i+1]*correction);
		end
	end

player:sendMenu(2);
end;
