---------------------------------------------------------------------------------------------------
-- func: zapall
-- desc: Zaps everyone in a zone, for the lawls.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = ""
};

function onTrigger(player)
    local zone      = player:getZone();
    local players   = zone:getPlayers();

    for _, p in pairs(players) do
        if (p:isPC() and p:getID() ~= player:getID()) then
            p:injectActionPacket(5, 207, 0, 0, 0);
            p:injectActionPacket(5, 270, 0, 0, 0);
            -- p:addHP(-1);
            -- p:messageBasic(264,0,1);
        end
    end
end