---------------------------------------------------------------------------------------------------
-- func: @setminion <target player> <on/off>
-- desc: temp code for Teo's temporary minions, as needed.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "ss"
};


function onTrigger(player, target, toggle)
    if (target == nil) then
        player:PrintToPlayer("Must specify an online target player.");
        player:PrintToPlayer("@setminion <target player> <on/off>");
        return;
    end

    local targ = GetPlayerByName(target);
    if (targ ~= nil) then
        if (toggle == "on") then
            targ:setVar("MINION", 1);
            player:PrintToPlayer(string.format("Player '%s' is a Minion", target));
        elseif (toggle == "off") then
            targ:setVar("MINION", 0);
            player:PrintToPlayer(string.format("Player '%s' is no longer a Minion", target));
        else
            player:PrintToPlayer("Must specify on or off for targets minion status.");
            player:PrintToPlayer("@setminion <target player> <on/off>");
        end
    else
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
    end
end;