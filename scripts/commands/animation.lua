---------------------------------------------------------------------------------------------------
-- func: animation
-- desc: Sets the players current animation.
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 6,
    parameters = "s"
};

function onTrigger(player, animationId)

    animationId = tonumber(animationId) or _G[string.upper(animationId)];

    if (animationId == nil) then
        player:PrintToPlayer( string.format( "Current player animation: %d", player:getAnimation() ) );
        return;
    end

    if (animationId == 2 or animationId == 3) then
        player:PrintToPlayer("Do not use death animations..They glitch the game.");
    end
    player:setAnimation( animationId );
end