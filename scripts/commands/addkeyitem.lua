---------------------------------------------------------------------------------------------------
-- func: addkeyitem <ID> <player>
-- desc: Adds a key item to the player.
---------------------------------------------------------------------------------------------------

require("scripts/globals/keyitems");

cmdprops =
{
    permission = 2,
    parameters = "ss"
};

function onTrigger(player, keyId, target)

    keyId = tonumber(keyId) or _G[string.upper(keyId)];

    if (keyId == nil or keyId == 0) then
        player:PrintToPlayer( "You must enter a valid KeyItem ID." );
        player:PrintToPlayer( "@addkeyitem <ID> <player>" );
        return;
    end

    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
    end

    if (targ ~= nil) then
        -- Load needed text ids for players current zone..
        local TextIDs = "scripts/zones/" .. targ:getZoneName() .. "/TextIDs";
        package.loaded[TextIDs] = nil;
        require(TextIDs);

        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/addkeyitem.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targ:getName(),
        "\n", "KeyItem given: ".. keyId,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();

        targ:addKeyItem( keyId );
        targ:messageSpecial( KEYITEM_OBTAINED, keyId );
        player:PrintToPlayer( string.format( "Keyitem ID '%u' added to player!", keyId ) );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        player:PrintToPlayer( "@addkeyitem <ID> <player>" );
    end
end;
