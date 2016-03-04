---------------------------------------------------------------------------------------------------
-- func: @getmobname <optional ID>
-- desc: Prints the database/script name of the targeted monster.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
};

function onTrigger(player, ID)
    if (ID == nil) then
        local targ = player:getCursorTarget();
        if (targ ~= nil) then
            local name = targ:getName();
            if (name ~= nil) then
                player:PrintToPlayer(string.format("Selected Target's name is: %s ", name));
            else
                player:PrintToPlayer("Name was not found.");
            end
        else
            player:PrintToPlayer("Must select a target using in game cursor first, or type an ID.");
        end
    else
        local targ = GetMobByID(ID);
        if (targ ~= nil) then
            player:PrintToPlayer(string.format("Selected Target's name is: %s ", targ:getName()));
        else
            player:PrintToPlayer(string.format("Could not find Mob with ID of %u ", ID));
        end
    end
end;