---------------------------------------------------------------------------------------------------
-- func: giveitem <player> <itemId> <amount> <aug1> <v1> <aug2> <v2> <aug3> <v3> <aug4> <v4>
-- desc: Gives an item to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "siiiiiiiiii"
};

function onTrigger(player, target, itemId, amount, aug0, aug0val, aug1, aug1val, aug2, aug2val, aug3, aug3val)
    if (target == nil or itemId == nil) then
        player:PrintToPlayer("You must enter a valid player name and item ID.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        return;
    end

    -- Load needed text ids for players current zone..
    local TextIDs = "scripts/zones/" .. targ:getZoneName() .. "/TextIDs";
    package.loaded[TextIDs] = nil;
    require(TextIDs);

    -- Attempt to give the target the item..
    if (targ:getFreeSlotsCount() == 0) then
        targ:messageSpecial( ITEM_CANNOT_BE_OBTAINED, itemId );
        player:PrintToPlayer( string.format( "Player '%s' does not have free space for that item!", target ) );
    else
        targ:addItem( itemId, amount, aug0, aug0val, aug1, aug1val, aug2, aug2val, aug3, aug3val );
        targ:messageSpecial( ITEM_OBTAINED, itemId );
        player:PrintToPlayer( string.format( "Gave player '%s' Item with ID of '%u' ", target, itemId ) );

        -- Log it
        local a_var = amount or 1;
        local b_var = aug0 or 0;
        local c_var = aug0val or 0;
        local d_var = aug1 or 0;
        local e_var = aug1val or 0;
        local f_var = aug2 or 0;
        local g_var = aug2val or 0;
        local h_var = aug3 or 0;
        local i_var = aug3val or 0;
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/giveitem.log", "a");
        file:write(
        "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. target,
        "\n", "ID of item given: ".. itemId,
        "\n", "Amount given:     ".. a_var,
        "\n", "Augment ID 1:     ".. b_var,
        "\n", "Augment Tier 1:   ".. c_var,
        "\n", "Augment ID 2:     ".. d_var,
        "\n", "Augment Tier 2:   ".. e_var,
        "\n", "Augment ID 3:     ".. f_var,
        "\n", "Augment Tier 3:   ".. g_var,
        "\n", "Augment ID 4:     ".. h_var,
        "\n", "Augment Tier 4:   ".. i_var,
        "\n",
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end;