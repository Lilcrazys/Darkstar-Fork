---------------------------------------------------------------------------------------------------
-- func: goto hazlam behind the door
-- desc: temp allows players quickly zone into hazlam to fight odin / alex
-- will be replaced with additional door script when einj is added
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player, target)
     player:setPos(458, -235, -15, 145, 78);
end;