---------------------------------------------------------------------------------------------------
-- func: @grats
-- desc: triggers the congratulation animation normally seen on fireworks
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:injectActionPacket(5, 107, 0, 0, 0);
end;