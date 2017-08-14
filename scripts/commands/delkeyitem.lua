---------------------------------------------------------------------------------------------------
-- func: delkeyitem
-- desc: Deletes the given key item from the player.
---------------------------------------------------------------------------------------------------

require("scripts/globals/keyitems");

cmdprops =
{
    permission = 2,
    parameters = "ss"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@delkeyitem <key item ID> {player}");
end;

function onTrigger(player, keyId, target)

    -- validate key item id
    if (keyId == nil) then
        error(player, "You must supply a key item ID.");
        return;
    end
    keyId = tonumber(keyId) or _G[string.upper(keyId)];
    if (keyId == nil or keyId < 1) then
        error(player, "Invalid Key Item ID.");
        return;
    end

    -- validate target
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target));
            return;
        end
    end

    -- delete key item from target
    if (targ:hasKeyItem(keyId)) then
        local TextIDs = "scripts/zones/" .. targ:getZoneName() .. "/TextIDs";
        package.loaded[TextIDs] = nil;
        require(TextIDs);

        -- Log it
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/delkeyitem.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targ:getName(),
        "\n", "KeyItem ID: ".. keyId,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();

        targ:delKeyItem( keyId );
        targ:messageSpecial(KEYITEM_OBTAINED + 1, keyId);
        player:PrintToPlayer(string.format("Key item %i deleted from %s.", keyId, targ:getName()));
    else
        player:PrintToPlayer(string.format("%s does not have key item %i.", targ:getName(), keyId));
    end
end;
