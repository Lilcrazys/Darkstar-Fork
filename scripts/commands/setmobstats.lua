---------------------------------------------------------------------------------------------------
-- func: @setmobstats <PERCENTAGE>
-- desc: Sets a players tp.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "i"
};

function onTrigger(player, percent)
    local targ = player:getCursorTarget();
    if (targ == nil) then
        player:PrintToPlayer("Must select a monster using in game cursor first.");
        return;
    end

    if (percent == nil) then
        player:PrintToPlayer("Must specify the percentage to set mobs hp/mp/tp to.");
        player:PrintToPlayer("@setmobstats <PERCENTAGE>");
        return;
    end

    if (targ:isMob() == false) then
        player:PrintToPlayer("Must select a monster using in game cursor first.");
        return;
    end

    if (percent < 1) then
        percent == 1;
    end

    targ:setHP(percent*(targ:getMaxHP()/100));
    targ:setMP(percent*(targ:getMaxHP()/100));
    targ:setTP(percent);
end;