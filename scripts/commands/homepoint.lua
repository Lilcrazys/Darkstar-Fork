---------------------------------------------------------------------------------------------------
-- func: homepoint
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
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
            require("scripts/globals/status");
            require("scripts/globals/teleports");
            targ:injectActionPacket(4, 261, 0, 0, 0);
            targ:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);
        end
    else
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
    end
end;
