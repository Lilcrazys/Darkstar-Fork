---------------------------------------------------------------------------------------------------
-- func: homepoint
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@homepoint {player}");
end;

function onTrigger(player, target)
    -- validate target
    local targ;
    if (target == nil or player:getGMLevel() < 2) then
        targ = player;
    else
        targ = GetPlayerByName( target );
        if (targ == nil) then
            error(player, string.format( "Player named '%s' not found!", target ) );
            return;
        end
    end

    -- homepoint target
    --[[
    targ:warp();
    ]]
    require("scripts/globals/status");
    require("scripts/globals/teleports");
    targ:injectActionPacket(4, 261, 0, 0, 0);
    targ:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);

    if (targ:getID() ~= player:getID()) then
        player:PrintToPlayer(string.format("Sent %s to their homepoint.",targ:getName()));
    end
end