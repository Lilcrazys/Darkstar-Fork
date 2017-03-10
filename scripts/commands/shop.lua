--------------------------------------------------------------
-- func: shop <page>
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

-- Notes:
-- ALWAYS comment your additions!

function onTrigger(player,page)
    if (player:getVar("inJail") > 0 and player:getZoneID() == 131) then
        return;
    end
    if (page == 0 or page == nil) then
        player:PrintToPlayer("1: Crystal Depot, 2: MogDonalds, 3: Meds, 4: Tools and gears");
        -- Edit and uncomment next line if you want more pages.
        -- player:PrintToPlayer( "5: ??, 6: ??, 7: ??, 8: ??");
        player:PrintToPlayer("$shop <page>");
    elseif (page == 1) then
        local stock_1 =
        {
            4238,   3000,    -- HQ Fire Crystal
            4239,   3000,    -- HQ Ice Crystal
            4240,   3000,    -- HQ Wind Crystal
            4241,   3000,    -- HQ Earth Crystal
            4242,   3000,    -- HQ Lightning Crystal
            4243,   3000,    -- HQ Water Crystal
            4244,   3000,    -- HQ Light Crystal
            4245,   3000     -- HQ Dark Crystal
        };
        showShop(player, STATIC, stock_1);
        player:PrintToPlayer("At Crystal Depot, we stock only the highest quality..");

    elseif (page == 2) then
        local stock_2 =
        {
            -- Non Custom "for low lv noobs in exp party" food, same price as AH so non exploitable.
            4376,     108,  -- Meat Jerky
            -- Retail:  STR+3 INT-1 ATT23% (Cap:30)
            5721,     500,  -- Crab Sushi
            -- Retail:  VIT+1 Def+10 ACC+13% (Cap:64) "Resist Sleep"+1
            4271,    2000,  -- Rice Dumpling
            -- Retail:  HP+17 STR+3 VIT+2 AGI+1 ACC+5 ATT+20% (Cap:45) RATT+30% (Cap:45) HP/MP Healing +2 "Resist Paralyze"+4
            4536,    3133,  -- Blackened Frog
            -- Retail:  DEX+2 AGI+2 MND-2 ATT+14% (Cap:75) RATT+14% (Cap:75) EVA+5
            --------------------------------------------------
            -- Custom food items
            4258,   32500,  -- Red Drop
            4259,   32500,  -- Clear Drop
            4260,   32500,  -- Green Drop
            4261,   32500,  -- Yellow Drop
            4262,   32500,  -- Purple Drop
            4263,   32500,  -- Blue Drop
            4264,   32500,  -- White Drop
            4265,   4000    -- Black Drop
        };
        showShop(player, STATIC, stock_2);
        player:PrintToPlayer("Welcome to MogDonalds, Would you like fries with that?");

    elseif (page == 3) then
        local stock_3 =
        {
            4148,   316,     -- Antidote
            4150,   2595,    -- Eye Drops
            4151,   800,     -- Echo drops
            4112,   910,     -- Potion
            4128,   4832,    -- Ether
            4153,   6000     -- Antacid
        };
        showShop(player, STATIC, stock_3);
        player:PrintToPlayer("Step right up folks! Cures blindness, sore throat, and various poisons!");

    elseif (page == 4) then
        local stock_4 =
        {
            21319,    100,   -- Titanium Bolt
            21335,    100,   -- Titanium Bullet
            21305,    100,   -- Tulfaire Arrow
            21320,    190,   -- Adlivun Bolt
            21336,    190,   -- Adlivun Bullet
            21306,    190,   -- Adlivun Arrow
            16368,    32000, -- Herder's Subligar
            18762,    32000, -- Custodes
            18503,    32000, -- Mammut
            19222,    32000, -- Wurger
            15880,    32000, -- Key Ring Belt
            19223,    24000, -- Attar of Roses
            16007,    24000, -- Protect Earing
            15835,    20000, -- Desperado Ring
            19157,    20000, -- Surviver
            15926,    20000, -- Bronze Bandolier
            19221,    20000, -- Firefly
            15834,    20000, -- Bind Ring
            16279,    20000  -- Pile Chain
        };
        showShop(player, STATIC, stock_4);
        player:PrintToPlayer("Gear Shack, we've got your back.");

    else
        player:PrintToPlayer( string.format( "Page %i not found.", page ) );
    end
end;