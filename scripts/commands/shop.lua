--------------------------------------------------------------
-- func: @shop
-- auth: TeoTwawki (aka Forgottenandlost)
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};


-- Notes:
--
-- ALWAYS comment your additions!


function onTrigger(player,page)
    if (page == 0 or page == nil) then
        player:PrintToPlayer( "1: Crystal Depot, 2: MogDonalds, 3: Meds, 4: Tools and gears");
        -- Edit and uncomment next line if you want more pages.
        -- player:PrintToPlayer( "5: ??, 6: ??, 7: ??, 8: ??");
    elseif (page == 1) then
        local stock_1 =
        {
            4238,   5000,       -- HQ Fire Crystal
            4239,   5000,       -- HQ Ice Crystal
            4240,   5000,       -- HQ Wind Crystal
            4241,   5000,       -- HQ Earth Crystal
            4242,   5000,       -- HQ Lightning Crystal
            4243,   5000,       -- HQ Water Crystal
            4244,   5000,       -- HQ Light Crystal
            4245,   5000        -- HQ Dark Crystal
        };
        showShop(player, STATIC, stock_1);

    elseif (page == 2) then -- Would you like fries with that?
        local stock_2 =
        {
            4271,   2499,       -- Rice Dumpling
            4381,   2100,       -- Meat Mithkabob
            4398,   2100,       -- Fish Mithkabob
            4457,   2100,       -- Eel Kabob
            5166,   2100,       -- Coeurl Sub Sandwich
            4355,   1450,       -- Salmon Sub Sandwich
            5686,   799,        -- Cheese Sandwich
            5561,   799,        -- Moogle Pie
            4270,   999,        -- Sweet Rice Cake
            5944,   2000,       -- Frontier Soda
            5932,   1600,       -- Kitron Juice
            4424,   1100,       -- Melon Juice
            4422,   499         -- Orange Juice
        };
        showShop(player, STATIC, stock_2);


    elseif (page == 3) then -- Medicine chest.
        local stock_3 =
        {
            4148,   316,	-- Antidote
            4150,   2595,	-- Eye Drops
            4151,   800,	-- Echo drops
            4112,   910,	-- Potion
            4128,   4832,	-- Ether
        };
        showShop(player, STATIC, stock_3);

    elseif (page == 4) then -- Tools and gears.
        local stock_4 =
        {
            10463,   20000000 -- Mustella Harness
        };
        showShop(player, STATIC, stock_4);

    else
        player:PrintToPlayer( string.format( "Page %i not found.", page ) );
    end
end;