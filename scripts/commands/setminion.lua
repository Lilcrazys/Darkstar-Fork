---------------------------------------------------------------------------------------------------
-- func: @setminion <target player> <tier>
-- desc: Sets minion tier for Teo's lil helpers.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "si"
};


function onTrigger(player, target, tier)
    local minionLV = player:getVar("_isMinion_");
    local MINION_FLAG = 0x00010000; -- POL icon (Blue Ball)

    if (target == nil or tier == null) then
        player:PrintToPlayer("Must specify an online target player and a tier for minion status. ");
        player:PrintToPlayer("@setminion <target player> <tier>");
        return;
    end

    local minion = GetPlayerByName(target);
    if (minion == nil) then
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        return;
    end

    if (tier == 0) then
        if (minion:checkNameFlags(MINION_FLAG)) then
            minion:setFlag(MINION_FLAG);
        end
        minion:setVar("_isMinion_", 0);
        player:PrintToPlayer(string.format("Player '%s' is no longer a Minion. ", target));
    else
        if (tier == minionLV) then
            player:PrintToPlayer(string.format("Player '%s' already at that tier. ", target));
        else
            if (minionLV == 0) then
                minion:setFlag(MINION_FLAG);
            end
            minion:setVar("_isMinion_", tier);
            player:PrintToPlayer(string.format("Player '%s' is now a tier %d Minion", target, tier));
        end
    end
end;
