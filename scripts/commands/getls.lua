---------------------------------------------------------------------------------------------------
-- func: !getls
-- desc: Generate new pearl to the global linkshell
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local TextIDs = "scripts/zones/" .. player:getZoneName() .. "/TextIDs";
    package.loaded[TextIDs] = nil;
    require(TextIDs);

    if (player:getFreeSlotsCount() >= 1) then
        player:addLSpearl("LegionDS");
        player:messageSpecial(ITEM_OBTAINED, 515);
        player:PrintToPlayer("Welcome to our community! Don't forget to equip your LinkPearl :) ");
    else
        player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 515);
    end
end;
