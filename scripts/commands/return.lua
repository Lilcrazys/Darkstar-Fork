---------------------------------------------------------------------------------------------------
-- func: return <player>
-- desc: Warps GM or target player to their previous zone
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    local ZoneID;
    if (target == nil or player:getGMLevel() == 0) then
        target = player:getName();
    end

    local targ = GetPlayerByName(target);

    if (targ ~= nil) then
        if (targ:getHPP() ~= 100) then
            player:PrintToPlayer("To prevent abuse, the target must have full HP.");
            return;
        end

        if (targ:getVar("inJail") > 0 and targ:getZoneID() == 131) then
            player:PrintToPlayer("CANNOT TELEPORT JAILED CHARACTER!");
        else
            ZoneID = targ:getPreviousZone();
            if (ZoneID == nil or ZoneID == 0 or ZoneID == 214 or ZoneID == 131) then
                player:PrintToPlayer("Previous Zone was a Mog House or there was a problem fetching the ID.");
            else
                targ:setPos(0, 0, 0, 0, ZoneID);
            end
        end
    else
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
    end
end;
