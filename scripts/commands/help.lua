---------------------------------------------------------------------------------------------------
-- func: help
-- desc: Lists available GM commands.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local gmlvl = player:getGMLevel();
    -- Displaying commands this player can use, sorted by GM tier, 3 at a time.
    if (gmlvl >= 0) then -- Regular non GM players
        player:PrintToPlayer("Commands available to all players:");
        player:PrintToPlayer("/? (displays client side commands)");
        player:PrintToPlayer("$ecv (displays the servers Expected Client Version)");
        player:PrintToPlayer("$where  $revision  $trial");
        player:PrintToPlayer("$shop  $ah  $atma  $grats");
        player:PrintToPlayer("$tele   $setmusic  $costume");
        player:PrintToPlayer("$regen (pre 75 only)");
    end
    -- Previous tiers are already displayed, don't duplicate!
    if (gmlvl >= 1) then -- Regular GM / Assistant GM
        player:PrintToPlayer("Additional commands available to T1 GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 2) then -- Senior GM
        player:PrintToPlayer("Additional commands available to T2 SGMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 3) then -- Lead GM
        player:PrintToPlayer("Additional commands available to T3 LGMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end

    if (gmlvl >= 4) then -- Developer (Producer in retail)
        player:PrintToPlayer("Additional commands available to to T4 Dev/GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end
    -- Since each prints until reaching a gmlvl the player doesn't have, 5 usually sees ALL.
    if (gmlvl >= 5) then -- Server owner (Director in retail)
        player:PrintToPlayer("Additional commands available to to T5 Dev/GMs:");
        player:PrintToPlayer("$CommandName  $CommandName  $CommandName");
    end
    -- Although it IS technically possibly to create tiers as high as 255...
end;
