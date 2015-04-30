---------------------------------------------------------------------------------------------------
-- @legionhall <hall name>
-- desc: Transports self to specified hall entry position
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};
function onTrigger(player, hall)
    if (hall == nil) then
        player:PrintToPlayer("Must specify a valid Legion Hall name");
        player:PrintToPlayer("@legionhall <hall name>");
    elseif (hall == "An" or hall == "an") then
        player:setPos(-180, 12, 212, 192, 183);
    elseif (hall == "Ki" or hall == "ki") then
        player:setPos(130, 12, 220, 0, 183);
    elseif (hall == "Im" or hall == "im") then
        player:setPos(140, 12, -132, 64, 183);
    elseif (hall == "Muru" or hall == "muru") then
        player:setPos(-170, 12, -140, 128, 183);
    elseif (hall == "Mul" or hall == "mul") then
        player:setPos(-20, 12, 68, 64, 183);
    else
        player:PrintToPlayer(string.format("Hall of '%s' is not a currently available Legion Hall", hall));
    end
end;