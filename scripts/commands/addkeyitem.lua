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

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!addkeyitem <key item ID> {player}");
end;

function onTrigger(player, keyId, target)

    -- validate key item id
    if (keyId == nil) then
        error(player, "You must supply a Key Item ID.");
        return;
    end
    keyId = tonumber(keyId) or _G[string.upper(keyId)];
    if (keyId == nil or keyId == 0) then
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

    -- add key item to target
    if (targ:hasKeyItem(keyId)) then
        player:PrintToPlayer(string.format("%s already has key item %i.", targ:getName(), keyId));
    else
        local TextIDs = "scripts/zones/" .. targ:getZoneName() .. "/TextIDs";
        package.loaded[TextIDs] = nil;
        require(TextIDs);
        targ:addKeyItem( keyId );
        targ:messageSpecial( KEYITEM_OBTAINED, keyId );
        player:PrintToPlayer(string.format("Key item %i was given to %s.", keyId, targ:getName()));
    end

    -- Log it
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
end;
