---------------------------------------------------------------------------------------------------
-- func: @setmobstats <stat> <percentage>
-- desc: Sets a players tp.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "si"
};

function onTrigger(player, param, percent)
    local targ = player:getCursorTarget();
    if (targ == nil) then
        player:PrintToPlayer("Must select a monster using in game cursor first.");
        return;
    end

    if (param == nil) then
        player:PrintToPlayer("Must specify which to adjust: HP, MP, or TP.");
        player:PrintToPlayer("@setmobstats <stat> <percentage>");
        return;
    end

    if (percent == nil) then
        player:PrintToPlayer("Must specify the percentage to set mobs hp/mp/tp to.");
        player:PrintToPlayer("@setmobstats <stat> <percentage>");
        return;
    end

    if (targ:isMob() == false) then
        player:PrintToPlayer("Must select a monster using in game cursor first.");
        return;
    end

    if (percent < 1) then
        percent == 1;
    end

    if (param == "hp" or param == "HP") then
        targ:setHP(percent*(targ:getMaxHP()/100));
    elseif (param == "mp" or param == "MP") then
        targ:setMP(percent*(targ:getMaxHP()/100));
    elseif (param == "tp" or param == "TP") then
        targ:setTP(percent);
    else
        player:PrintToPlayer("Invalid stat specified!");
        player:PrintToPlayer("@setmobstats <stat> <percentage>");
    end
end;