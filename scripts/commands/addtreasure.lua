---------------------------------------------------------------------------------------------------
-- func: addtreasure <itemId> <target player/party/alliance>
-- desc: Adds an item directly to the treasure pool.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "isi"
};

function onTrigger(player, itemId, target, dropper)
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
    end

    if (targ == nil) then
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        return
    end

    if (itemId == nil or tonumber(itemId) == nil or tonumber(itemId) == 0) then
        player:PrintToPlayer("You must enter a valid item id.");
        return;
    end

    if (dropper ~= nil) then
        dropper = GetNPCByID(dropper);
    end

    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/addtreasure.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "Item ID: ".. itemId,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();

    targ:addTreasure(itemId, dropper);
    player:PrintToPlayer(string.format("Item of ID %d was added to the treasure pool of %s or their party/alliance.", itemId, targ:getName()));
end