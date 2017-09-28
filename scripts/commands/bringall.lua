---------------------------------------------------------------------------------------------------
-- func: bringall
-- desc: Brings the users full alliance to them.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = ""
};

function onTrigger(player)
    local p = player:getAlliance();
    if (p ~= nil) then
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/bring.log", "a");
        file:write(
        "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName()
        );

        for _, member in pairs(p) do
            if (member:isPC() and member:getID() ~= player:getID()) then
                member:setPos( player:getXPos(), player:getYPos(), player:getZPos(), 0, player:getZoneID() );
                file:write("\n", "Target: ".. member:getName());
            end
        end

        file:write(
        "----------------------------------------",
        "\n", "(Multi-bring)",
        "\n", "Position: ".. player:getXPos().." ".. player:getYPos().." ".. player:getZPos(),
        "\n", "Zone ID: ".. player:getZoneID(),
        "\n",
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end