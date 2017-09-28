---------------------------------------------------------------------------------------------------
-- func: @setmobstats <stat> <percentage>
-- desc: Adjusts a monsters stats by a percentage
-- Todo: Table the stats, build alt functionality for setting
--       attack, defense, Magic Attack, Magic Defense, etc.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "si"
};

require("scripts/globals/utils");

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
        percent = 1;
    end

    if (param == "hp" or param == "HP") then
        local hp = percent*(targ:getMaxHP()/100);
        hp = utils.clamp(hp, 1, hp+1);
        targ:setHP(hp);
    elseif (param == "mp" or param == "MP") then
        local mp = percent*(targ:getMaxMP()/100);
        mp = utils.clamp(mp, 1, mp+1);
        targ:setMP(mp);
    elseif (param == "tp" or param == "TP") then
        targ:setTP(percent);
    else
        player:PrintToPlayer("Invalid stat specified!");
        player:PrintToPlayer("@setmobstats <stat> <percentage>");
    end

    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/setmobstats.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "MobID: ".. targ:getID(),
    "\n", "Stat change: ".. param.." ".. percent.."%",
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();
end;