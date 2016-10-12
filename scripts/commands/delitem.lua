---------------------------------------------------------------------------------------------------
-- func: delitem
-- desc: Deletes a single item held by a player, if they have it.
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, itemId, target)
    if (itemId == nil or tonumber(itemId) == 0 or tonumber(itemId) == nil or itemId == 0) then
        player:PrintToPlayer("You must enter a valid item ID.");
        player:PrintToPlayer("@delitem <ID> <player>");
        return;
    end

    if (target == nil) then
        player:PrintToPlayer("You must enter a valid target name.");
        player:PrintToPlayer("@delitem <ID> <player>");
        return;
    end

    local targ = GetPlayerByName(target);
    if (targ ~= nil) then
        for i = LOC_INVENTORY, LOC_WARDROBE4 do -- inventory locations enums
            if (targ:hasItem(itemId, i)) then
                local dateStamp = os.date("%d/%m/%Y");
                local timeStamp = os.date("%I:%M:%S %p");
                local file = io.open("log/commands/delitem.log", "a");
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

                targ:delItem(itemId, 1, i);
                player:PrintToPlayer(string.format("Item with ID %u deleted from player '%s'.", itemId, target));
                break;
            end
            if (i == LOC_WARDROBE4) then -- Wardrobe 4 is the last inventory location, if it reaches this point then the player does not have the item anywhere.
                player:PrintToPlayer(string.format("Player '%s' does not have item with ID %u", target, itemId));
            end
        end
    else
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        player:PrintToPlayer("@delitem <ID> <player>");
    end
end;