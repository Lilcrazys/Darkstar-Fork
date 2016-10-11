---------------------------------------------------------------------------------------------------
-- func: delspell <spellID> <player>
-- desc: Removes a spell from the players spell list.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, spellId, target)
    if (spellId == nil) then
        player:PrintToPlayer( "You must enter a valid spellID." );
        player:PrintToPlayer( "@delspell <spellID> <player>" );
        return;
    end

    if (target == nil) then
        player:delSpell(spellId);
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/delspell.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n", "ID of spell taken: ".. spellId,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();

            targ:delSpell(spellId);
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@delspell <spellID> <player>" );
        end
    end
end;