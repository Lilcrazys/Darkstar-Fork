---------------------------------------------------------------------------------------------------
-- func: @kill <victim> <exp loss>
-- desc: Murders targeted player. Sometimes GM jail just isn't enough.
--
-- TODO: Alter method of applying death to ensure no exp loss without specifying an amount.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 5,
    parameters = "s"
    -- parameters = "si"
};

-- function onTrigger(player, victim, exploss)
function onTrigger(player, victim)
    --[[ Exp loss function requires additional source code changes to work
         I have those source edits available but didn't include them in this commit.
    if (exploss == nil) then
        exploss = 0;
    end
    ]]--
    if (victim == nil) then
        player:PrintToPlayer( "Must specify a Victim!" );
        -- player:PrintToPlayer( "@kill <victim> <exp loss>" );
        player:PrintToPlayer( "@kill <victim>" );
    else
        local targ = GetPlayerByName(victim);
        if (targ ~= nil) then
            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local user = player:getName();
            local file = io.open("log/commands/kill.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. user,
            "\n", "Target: ".. victim,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();

            -- Begin Wrath of the Gods Animation
            targ:injectActionPacket( 5, 271 );
            targ:injectActionPacket( 5, 202 );
            targ:injectActionPacket( 5, 207 );
            targ:injectActionPacket( 5, 216 );
            targ:injectActionPacket( 5, 270 );
            -- End Wrath of the Gods Animation
            targ:setHP(0);
            -- targ:delExp(exploss);
        else
            player:PrintToPlayer( string.format( "Victim named '%s' not found!", victim ) );
            -- player:PrintToPlayer( "@kill <victim> <exp loss>" );
            player:PrintToPlayer( "@kill <victim>" );
        end
    end
end;