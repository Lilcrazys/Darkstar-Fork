---------------------------------------------------------------------------------------------------
-- func: @zap
-- desc: expresses GM anger on cursor target
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    local victim = player:getCursorTarget();

    if (victim == nil) then
        player:PrintToPlayer("Must target a player with cursor!");
        return;
    end

    if (victim:isPC() == false) then
        player:PrintToPlayer("Must target a player with cursor!");
        return;
    end

    if (os.time() - player:getVar("GM_LAST_ZAP") > 10) then
        player:setVar("GM_LAST_ZAP", os.time());
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/zap.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. player:getCursorTarget():getName(),
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
        -- Begin Wrath of the Gods Animation
        victim:injectActionPacket(5, 207, 0, 0, 0);
        victim:injectActionPacket(5, 270, 0, 0, 0);
        -- End Wrath of the Gods Animation
        -- Removed damage because this is not needed..
        -- victim:addHP(-1);
        -- victim:messageBasic(264,0,1);
        victim:PrintToPlayer("Some tyrant GM just zapped you. o_O; ");
    else
        player:PrintToPlayer("Too soon to zap again.");
    end
end;
