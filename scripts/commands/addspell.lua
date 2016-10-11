---------------------------------------------------------------------------------------------------
-- func: addspell <spellID> <player>
-- desc: adds the ability to use a spell to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, spellId, target)
    if (spellId == nil) then
        player:PrintToPlayer( "You must enter a valid spell ID." );
        player:PrintToPlayer( "@addSpell <spellID> <player>" );
        return;
    end

    if (target == nil) then
        player:addSpell(spellId);
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/addspell.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n", "ID of spell given: ".. spellId,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();

            targ:addSpell(spellId);
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@addSpell <spellID> <player>" );
        end
    end
end;