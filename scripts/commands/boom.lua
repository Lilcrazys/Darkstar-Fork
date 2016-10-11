---------------------------------------------------------------------------------------------------
-- func: @boom
-- desc: Murders moron who is trying to use boom and removes 500 exp from them
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer("STOP THAT. Yes YOU there, typing @boom or $boom. Stop.");
    --[[
    -- Begin Wrath of the Gods Animation
    player:injectActionPacket(5, 271, 0, 0, 0);
    player:injectActionPacket(5, 202, 0, 0, 0);
    player:injectActionPacket(5, 207, 0, 0, 0);
    player:injectActionPacket(5, 216, 0, 0, 0);
    player:injectActionPacket(5, 270, 0, 0, 0);
    -- End Wrath of the Gods Animation
    player:setHP(0); -- DIE!
    player:delExp(500); -- Kiss some exp goodbye moron!
    ]]
end;