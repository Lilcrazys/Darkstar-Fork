---------------------------------------------------------------------------------------------------
-- func: @givels <linkshell name> <player name>
-- desc: Remotely gives the specified linkshell to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "ss"
};

function onTrigger(player,ls,target)
    if (ls == nil) then
        player:PrintToPlayer("You must specify the LS to be given. ");
        player:PrintToPlayer("!givels <linkshell name> <player> ");
        return
    end

    if (target == nil) then
        player:PrintToPlayer("You must specify the player to give the LS to. ");
        player:PrintToPlayer("!givels <linkshell name> <player> ");
        return
    end

    local targ = GetPlayerByName(target);
    if (targ ~= nil) then
        -- Load needed text ids for players current zone..
        local TextIDs = "scripts/zones/" .. targ:getZoneName() .. "/TextIDs";
        package.loaded[TextIDs] = nil;
        require(TextIDs);

        if (targ:getFreeSlotsCount() > 0) then
            if (targ:addLSpearl(ls)) then
                targ:messageSpecial( ITEM_OBTAINED, 515);
                targ:PrintToPlayer("Welcome to our community! Don't forget to equip your LinkPearl :) ");
                player:PrintToPlayer(string.format("Player '%s' should now have a pearl in inventory. Remember to welcome them in LS. ", target));
            else
                player:PrintToPlayer(string.format("LS '%s' not found.", ls));
            end
        else
            targ:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 515);
            player:PrintToPlayer(string.format("Player '%s' doesn't have a free slot for the item. ", target));
        end
    else
        player:PrintToPlayer(string.format( "Player named '%s' not found! ", target));
        player:PrintToPlayer("!givels <linkshell name> <player> ");
    end
end;
